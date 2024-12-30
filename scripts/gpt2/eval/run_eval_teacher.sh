base_path=${1-"/home/MiniLLM"}
port=2040


for data in self_inst vicuna sinst uinst # dolly
do
    # Evaluate sft/teacher-gpt2-1.5B
    for seed in 10
    do
        ckpt="sft/teacher-gpt2-1.5B"
        bash ${base_path}/scripts/gpt2/eval/eval_main_${data}.sh ${base_path} ${port} 2 ${ckpt} --seed $seed  --eval-batch-size 8
    done
done