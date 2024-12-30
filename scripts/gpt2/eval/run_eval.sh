base_path=${1-"/home/MiniLLM"}
port=2040


for data in dolly self_inst vicuna sinst uinst
do
    # Evaluate SFT
    # for seed in 10 # 20 30 40 50
    # do
    #     ckpt="sft/SFT-gpt2-340M"
    #     bash ${base_path}/scripts/gpt2/eval/eval_main_${data}.sh ${base_path} ${port} 2 ${ckpt} --seed $seed  --eval-batch-size 16
    # done

    # Evaluate KD
    for seed in 10 # 20 30 40 50
    do
        ckpt="seqkd/SeqKD-gpt2-340M-retrain"
        bash ${base_path}/scripts/gpt2/eval/eval_main_${data}.sh ${base_path} ${port} 2 ${ckpt} --seed $seed  --eval-batch-size 16
    done

    # Evaluate SeqKD
    # for seed in 10 # 20 30 40 50
    # do
    #     ckpt="seqkd/SeqKD-gpt2-340M"
    #     bash ${base_path}/scripts/gpt2/eval/eval_main_${data}.sh ${base_path} ${port} 2 ${ckpt} --seed $seed  --eval-batch-size 16
    # done

    # Evaluate MiniLLM
    # for seed in 10 # 20 30 40 50
    # do
    #     ckpt="minillm/MiniLLM-gpt2-340M"
    #     bash ${base_path}/scripts/gpt2/eval/eval_main_${data}.sh ${base_path} ${port} 2 ${ckpt} --seed $seed  --eval-batch-size 16
    # done
done