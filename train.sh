#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python train.py --content_dir /mnt/coco/train2014 --style_dir /mnt/wikiart --batch_size 1
