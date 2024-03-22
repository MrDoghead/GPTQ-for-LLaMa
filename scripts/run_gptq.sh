#!/bin/bash

CUDA_VISIBLE_DEVICES=2 python llama.py \
	/data/models/Llama-2-7b-hf \
	wikitext2 \
	--wbits 4 \
	--true-sequential \
	--groupsize 128 \
	--save_safetensors /data/models/tllm/llama-7b-gptq-4bit-gs128.safetensors \
	--eval
