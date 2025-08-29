import pandas as pd
import argparse
import os
import glob
import json
def main(args):
    models = args.models.split(',')
    datasets = args.datasets.split(',')
    root_out_file = args.output_openai_file
    type_correcntess = args.output_openai_file.split('_')[-1]
    for i in range(len(models)):
        for dataset in datasets:
            outfile_openai_pattern = f'{root_out_file}/output_batch_{models[i]}_{dataset}_*.jsonl'
            source_file = f'new_data_mica/{models[i]}_{type_correcntess}_{dataset}.parquet'
            if type_correcntess == 'security':
                source_file = f'new_data_mica/{models[i]}_{type_correcntess}.parquet'
            out_file = f'new_data_mica/gpt_out_{models[i]}_{type_correcntess}_{dataset}.parquet'
            print('outfile_openai_pattern: ',outfile_openai_pattern)
            print('source file:',source_file)
            print('outfile:', out_file)
            df = pd.read_parquet(source_file)
            openai_res = dict()
            for file in glob.glob(outfile_openai_pattern):
                with open(file) as f:
                    data = [json.loads(l.strip()) for l in f.readlines()]
                    for tmp in data:
                        index = tmp['custom_id']
                        result = tmp['response']['body']['choices'][0]['message']['content'].strip()
                        if len(result) <= 0 :
                            result = '0'
                        else:
                            result = result
                        openai_res[index] = result
            print('len openai:',len(openai_res))
            print('len df: ',df.shape)
            results = list()
            for _,row in df.iterrows():
                index = row['completion_id']
                if index not in openai_res:
                    row['gpt_result'] = ''
                    print('not in gpt',index)
                else:
                    row['gpt_result'] = openai_res[index].strip()
                results.append(row)
            dfs = pd.DataFrame(results)
            print('save to file:',out_file)
            dfs.to_parquet(out_file)
            
            print('_'*33)
    

if __name__ == "__main__":
    # Load the DataFrame from a Parquet file
    args = argparse.ArgumentParser()
    args.add_argument("--output_openai_file", type=str,default='')
    args.add_argument("--models", type=str,default='')
    args.add_argument("--datasets", type=str,default='')
    args = args.parse_args()
    main(args)