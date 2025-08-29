# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_embedding_human_eval_deepseek-ai_deepseek-coder-6.7b-instruct_32_label_compliable_label_output_error.parquet \
# --file_out ds67_compile_human_eval.parquet \
# --dataset human_eval

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_embedding_human_eval_codellama_CodeLlama-7b-Instruct-hf_32_label_compliable_label_output_error.parquet \
# --file_out cl70_compile_human_eval.parquet \
# --dataset human_eval

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_2_embedding_human_eval_codellama_CodeLlama-13b-Instruct-hf_40_label_compliable_label_output_error.parquet \
# --file_out cl13_compile_human_eval.parquet \
# --dataset human_eval

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_2_embedding_human_eval_google_codegemma-7b-it_28_label_compliable_label_output_error.parquet \
# --file_out cg70_compile_human_eval.parquet \
# --dataset human_eval

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_embedding_human_eval_ise-uiuc_Magicoder-S-DS-6.7B_32_label_compliable_label_output_error.parquet \
# --file_out mc67_compile_human_eval.parquet \
# --dataset human_eval

# # ==== 

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_embedding_mbpp_codellama_CodeLlama-7b-Instruct-hf_32_label_compliable_label_output_error.parquet \
# --file_out cl70_compile_mbpp.parquet \
# --dataset mbpp

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_embedding_mbpp_deepseek-ai_deepseek-coder-6.7b-instruct_32_label_cleaned_code_compliable_label_output_error.parquet \
# --file_out ds67_compile_mbpp.parquet \
# --dataset mbpp

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_2_embedding_mbpp_codellama_CodeLlama-13b-Instruct-hf_40_label_compliable_label_output_error.parquet \
# --file_out cl13_compile_mbpp.parquet \
# --dataset mbpp

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_embedding_mbpp_codellama_CodeLlama-7b-Instruct-hf_32_label_compliable_label_output_error.parquet \
# --file_out cl70_compile_mbpp.parquet \
# --dataset mbpp

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_2_embedding_mbpp_google_codegemma-7b-it_28_label_compliable_label_output_error.parquet \
# --file_out cg70_compile_mbpp.parquet \
# --dataset mbpp

# python create_test_file.py \
# --file_in new_data_mica/label_compiable/LFCLF_embedding_mbpp_ise-uiuc_Magicoder-S-DS-6.7B_32_label_compliable_label_output_error.parquet \
# --file_out mc67_compile_mbpp.parquet \
# --dataset mbpp
# # ==== func

# python create_test_file.py \
# --file_in new_data_mica/label_func/LFCLF_2_embedding_human_eval_google_codegemma-7b-it_28_label.parquet \
# --file_out cg70_func_human_eval.parquet \
# --dataset human_eval

# python create_test_file.py \
# --file_in new_data_mica/label_func/LFCLF_2_embedding_mbpp_google_codegemma-7b-it_28_label.parquet \
# --file_out cg70_func_mbpp.parquet \
# --dataset mbpp

# # == sec

# python create_test_file.py \
# --file_in new_data_mica/label_sec/cg70.parquet \
# --file_out cg70_security.parquet \
# --dataset security

# python create_test_file.py \
# --file_in new_data_mica/label_sec/cl13.parquet \
# --file_out cl13_security.parquet \
# --dataset security

# python create_test_file.py \
# --file_in new_data_mica/label_sec/cl70.parquet \
# --file_out cl70_security.parquet \
# --dataset security

# python create_test_file.py \
# --file_in new_data_mica/label_sec/ds13.parquet \
# --file_out ds13_security.parquet \
# --dataset security

# python create_test_file.py \
# --file_in new_data_mica/label_sec/ds67.parquet \
# --file_out ds67_security.parquet \
# --dataset security

# python create_test_file.py \
# --file_in new_data_mica/label_sec/mc70.parquet \
# --file_out mc67_security.parquet \
# --dataset security

python create_test_file.py \
--file_in LFCLF_embedding_mbpp_deepseek-ai_deepseek-coder-1.3b-instruct_1_label_compliable_label_output_error.parquet \
--file_out ds13_compile_mbpp.parquet \
--dataset mbpp

python create_test_file.py \
--file_in LFCLF_embedding_human_eval_deepseek-ai_deepseek-coder-1.3b-instruct_1_label_compliable_label_output_error.parquet \
--file_out ds13_compile_human_eval.parquet \
--dataset human_eval


