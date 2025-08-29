
# python parse_result.py --output_openai_file batch_func --models cg70 --datasets mbpp,human_eval
# python parse_result.py --output_openai_file batch_compile --models cg70,cl13,cl70,ds67,mc67,ds13 --datasets dev_eval
python parse_result.py --output_openai_file batch_function --models cg70,cl13 --datasets dev_eval

# python parse_result.py --output_openai_file batch_security --models cg70,cl13,cl70,ds67,mc67,ds13 --datasets security


# python parse_result.py --output_openai_file batch_security --models ds13,ds67 --datasets security

# python parse_result.py --output_openai_file batch_security --models ds13,ds67 --datasets security