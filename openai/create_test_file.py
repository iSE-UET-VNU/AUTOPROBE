import pandas as pd
import argparse
import os
import glob
import json
from sklearn.metrics import classification_report, recall_score, precision_score, f1_score, accuracy_score


import pandas as pd 

def get_test_mbbpp(file_path):
    df = pd.read_parquet(file_path)
    with open('test_ids/mbpp_eval_test_ids.txt') as f:
        test_ids = [int(l.strip()) for l in f.readlines()]
    df = df[df['task_id'].isin(test_ids)]
    return df
def get_test_human_eval(file_path):
    df = pd.read_parquet(file_path)
    return df

def get_test_dev_eval(file_path):
    df = pd.read_parquet(file_path)
    with open('test_ids/dev_eval_test_ids.txt') as f:
        test_ids = [l.strip() for l in f.readlines()]
    df = df[df['task_id'].isin(test_ids)]
    return df
def get_test_security(file_path):
    df = pd.read_parquet(file_path)
    with open('test_ids/security_test_ids.txt') as f:
        test_ids = [l.strip() for l in f.readlines()]
    df = df[df['task_id'].isin(test_ids)]
    return df
    

def main(args):
    file_id = args.file_in
    file_out = args.file_out
    
    dataset = args.dataset
    if dataset == 'mbpp':
        df = get_test_mbbpp(file_id)
    elif dataset == 'human_eval':
        df = get_test_human_eval(file_id)
    elif dataset == 'dev_eval':
        df = get_test_dev_eval(file_id)
    elif dataset == 'security':
        df = get_test_security(file_id)
    df.to_parquet(file_out)
    
if __name__ == "__main__":
    # Load the DataFrame from a Parquet file
    args = argparse.ArgumentParser()
    args.add_argument("--file_in", type=str,default='')
    args.add_argument("--file_out", type=str,default='')
    args.add_argument("--dataset", type=str,default='')
    args = args.parse_args()
    main(args)