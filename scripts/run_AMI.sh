#! /bin/bash

# Please uncomment these lines when the files are not downloaded
# for bart cnn
#wget https://dl.fbaipublicfiles.com/fairseq/models/bart.large.cnn.tar.gz
#tar -xzvf bart.large.cnn.tar.gz
BART_PATH=./bart.large.cnn/model.pt

#wget -N 'https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/encoder.json'
#wget -N 'https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/vocab.bpe'
#wget -N 'https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/dict.txt'

RUN_NAME=AMI

python run.py --cfg AMI.cfg \
 --dataset-path data/AMI_proprec/ \
 --output-path ./output/${RUN_NAME} \
 --save-intermediate \
 --cuda-devices 2,3 \
 --model-path $BART_PATH \
 --mode test \
 --checkpoint-dir ./checkpoints \

