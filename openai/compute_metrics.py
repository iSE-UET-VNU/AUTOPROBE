import pandas as pd
import argparse
import os
import glob
import json
from sklearn.metrics import classification_report, recall_score, precision_score, f1_score, accuracy_score

def main(args):
    models = args.models.split(',')
    datasets = args.datasets.split(',')
    type_correcntess = args.type
    label_name = 'label'
    if type_correcntess == 'compile':
        label_name = 'compliable_label'
    for i in range(len(models)):
        for dataset in datasets:
            out_file = f'new_data_mica/gpt_out_{models[i]}_{type_correcntess}_{dataset}.parquet'
            print(out_file)
            df = pd.read_parquet(out_file)
            try:
                
                print(df.shape)
                df = df.dropna(subset=[label_name,'gpt_result'])
                refs = list(df[label_name])
                ps = list(df['gpt_result'])
                print(ps[:3])
            except Exception as e:
                print(df.columns)
                print('erorr: ', out_file)
                print(e)
                continue
                pass
            refs = [1 if el else 0 for el in refs]
            tmp_ps = list()
            for el_ps in ps:
                if len(el_ps) == 0:
                    el_ps = '1'
                first = el_ps.strip()[0]
                last = el_ps.strip()[-1]
                last_third = ''
                first_third = ''
                if len(el_ps.strip()) >= 3:
                    last_third  = el_ps.strip()[-3] #**1** 
                    first_third = el_ps.strip()[2]
                only_accepts = ['0','1']
                if first in only_accepts:
                    tmp_ps.append(int(first))
                    continue
                if last in only_accepts:
                    tmp_ps.append(int(last))
                    continue
                if last_third in only_accepts:
                    tmp_ps.append(int(last_third))
                    continue
                if first_third in only_accepts:
                    tmp_ps.append(int(first_third))
                    continue
                tmp_ps.append(0)
            ps = tmp_ps
            # because of ref label 1 => for insecure 
            # but 1 in predict is secure
            # if type_correcntess =='security':
            #     ps = [1-el for el in ps]   
            print(ps.count(0))
            # ps = [int(el.strip()[-1]) if len(el) > 0 and el.strip()[-1].isnumeric() else 0 for el in ps]
            print(refs[:10])
            print(ps[:10])
            tmp_r = recall_score(refs, ps, average='weighted')
            tmp_p = precision_score(refs, ps, average='weighted')
            tmp_f = f1_score(refs, ps, average='weighted')
            tmp_a = accuracy_score(refs, ps)
            print(f'{tmp_a}\t{tmp_p}\t{tmp_r}\t{tmp_f}\t')
            

if __name__ == "__main__":
    # Load the DataFrame from a Parquet file
    args = argparse.ArgumentParser()
    args.add_argument("--models", type=str,default='')
    args.add_argument("--datasets", type=str,default='')
    args.add_argument("--type", type=str,default='')
    args = args.parse_args()
    main(args)