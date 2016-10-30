#!/bin/bash

mkdir $2
mkdir tmp

# Word2vec: take word2vec.py for example
python word2vec.py --train_data=$1 --eval_data=word2vec/questions-words.txt --save_path=tmp

# TODO:
#	Get the word embedding vec_word2vec.txt from the save_path tmp/
python filterVocab/filterVocab.py filterVocab/fullVocab.txt < tmp/vec_word2vec.txt > $2/filter_word2vec.txt

# TODO:
#	Get the word embedding vec_glove.txt from the glove code
python filterVocab/filterVocab.py filterVocab/fullVocab.txt < tmp/vec_glove.txt > $2/filter_glove.txt