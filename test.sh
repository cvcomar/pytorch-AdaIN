#!/bin/bash

fs=$(find ./experiments/ | grep deco)

for f in $fs
do

num=$(echo $f | grep -o _[0-9]\\+)

echo use model $f 
echo numer is $num

CUDA_VISIBLE_DEVICES=0 python test.py \
       	--content input/content/cornell.jpg \
	--style input/style/woman_with_hat_matisse.jpg \
	--decoder "$f" \
	--postfix $num 

echo generated
done
