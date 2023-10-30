export BASICSR_JIT=True

conf_name='HQ_Dictionary'
# conf_name='RestoreFormer'

ROOT_PATH='results/models' # The path for saving model and logs

gpus='0'

#P: pretrain SL: soft learning
node_n=1

python -u main.py \
--root-path $ROOT_PATH \
--base 'configs/'$conf_name'.yaml' \
-t True \
--postfix $conf_name \
--gpus $gpus \
--num-nodes $node_n \
--random-seed True \
