# python compute_metrics.py  --models cg70 --datasets mbpp --type func
# python compute_metrics.py  --models cg70 --datasets mbpp,human_eval --type func
# python compute_metrics.py  --models cg70,cl13,cl70,ds67,mc67 --datasets mbpp,human_eval --type compile
# python compute_metrics.py  --models cg70,cl13,cl70,ds67,mc67,ds13 --datasets security --type security
# python compute_metrics.py  --models cg70,cl13,cl70,ds67,mc67,ds13 --datasets dev_eval --type compile
python compute_metrics.py  --models cg70,cl13 --datasets dev_eval --type function

# python compute_metrics.py  --models ds13,ds67 --datasets security --type func

# python compute_metrics.py  --models ds13,ds67 --datasets security

# python compute_metrics.py  --models ds13,ds67 --datasets security