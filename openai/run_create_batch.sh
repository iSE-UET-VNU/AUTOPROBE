export PYTHONPATH=/home/thanh/ai4se/CodeLLMs-UnLock
echo $PYTHONPATH
# compile
# python openai/create_batch.py \
# --file openai/new_data_mica/cg70_compile_human_eval.parquet \
# --dataset human_eval \
# --output batch_compile \
# --model cg70 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/cl13_compile_human_eval.parquet \
# --dataset human_eval \
# --output batch_compile \
# --model cl13 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/cl70_compile_human_eval.parquet \
# --dataset human_eval \
# --output batch_compile \
# --model cl70 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/ds67_compile_human_eval.parquet \
# --dataset human_eval \
# --output batch_compile \
# --model ds67 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/mc67_compile_human_eval.parquet \
# --dataset human_eval \
# --output batch_compile \
# --model mc67 \
# --type compile

# # == compile mbpp 
# python openai/create_batch.py \
# --file openai/new_data_mica/cg70_compile_mbpp.parquet \
# --dataset mbpp \
# --output batch_compile \
# --model cg70 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/cl13_compile_mbpp.parquet \
# --dataset mbpp \
# --output batch_compile \
# --model cl13 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/cl70_compile_mbpp.parquet \
# --dataset mbpp \
# --output batch_compile \
# --model cl70 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/ds67_compile_mbpp.parquet \
# --dataset mbpp \
# --output batch_compile \
# --model ds67 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/mc67_compile_mbpp.parquet \
# --dataset mbpp \
# --output batch_compile \
# --model mc67 \
# --type compile

# # function 

# python openai/create_batch.py \
# --file openai/new_data_mica/cg70_func_mbpp.parquet \
# --dataset mbpp \
# --output batch_function \
# --model cg70 \
# --type function

# python openai/create_batch.py \
# --file openai/new_data_mica/cg70_func_human_eval.parquet \
# --dataset human_eval \
# --output batch_function \
# --model cg70 \
# --type function

# # security 

# python openai/create_batch.py \
# --file openai/new_data_mica/cg70_security.parquet \
# --dataset security \
# --output batch_security \
# --model cg70 \
# --type security

# python openai/create_batch.py \
# --file openai/new_data_mica/cl13_security.parquet \
# --dataset security \
# --output batch_security \
# --model cl13 \
# --type security

# python openai/create_batch.py \
# --file openai/new_data_mica/cl70_security.parquet \
# --dataset security \
# --output batch_security \
# --model cl70 \
# --type security

# python openai/create_batch.py \
# --file openai/new_data_mica/ds13_security.parquet \
# --dataset security \
# --output batch_security \
# --model ds13 \
# --type security

# python openai/create_batch.py \
# --file openai/new_data_mica/ds67_security.parquet \
# --dataset security \
# --output batch_security \
# --model ds67 \
# --type security

# python openai/create_batch.py \
# --file openai/new_data_mica/mc67_security.parquet \
# --dataset security \
# --output batch_security \
# --model mc67 \
# --type security


# 7/8

# python openai/create_batch.py \
# --file openai/new_data_mica/cg70_compile_dev_eval.parquet \
# --dataset dev_eval \
# --output batch_compile_2 \
# --model cg70 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/cl13_compile_dev_eval.parquet \
# --dataset dev_eval \
# --output batch_compile_2 \
# --model cl13 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/cl70_compile_dev_eval.parquet \
# --dataset dev_eval \
# --output batch_compile_2 \
# --model cl70 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/ds67_compile_dev_eval.parquet \
# --dataset dev_eval \
# --output batch_compile_2 \
# --model ds67 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/mc67_compile_dev_eval.parquet \
# --dataset dev_eval \
# --output batch_compile_2 \
# --model mc67 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/ds13_compile_dev_eval.parquet \
# --dataset dev_eval \
# --output batch_compile_2 \
# --model ds13 \
# --type compile


# # func
# python openai/create_batch.py \
# --file openai/new_data_mica/ds13_compile_mbpp.parquet \
# --dataset mbpp \
# --output batch_compile_2 \
# --model ds13 \
# --type compile

# python openai/create_batch.py \
# --file openai/new_data_mica/ds13_compile_human_eval.parquet \
# --dataset human_eval \
# --output batch_compile_2 \
# --model ds13 \
# --type compile



python openai/create_batch.py \
--file openai/new_data_mica/cg70_compile_dev_eval.parquet \
--dataset dev_eval \
--output batch_func \
--model cg70 \
--type function

python openai/create_batch.py \
--file openai/new_data_mica/cl13_compile_dev_eval.parquet \
--dataset dev_eval \
--output batch_func \
--model cl13 \
--type function