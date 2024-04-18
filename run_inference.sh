#!/bin/bash
# run_inference.sh

export RANK="0"                 # proc global id in this cluster
export LOCAL_RANK="0"           # proc local id in this cluster
export WORLD_SIZE="1"           # total proc num in this cluster
export LOCAL_WORLD_SIZE="1"     # total proc num in this node
# master addr and port
export MASTER_ADDR="localhost"
export MASTER_PORT="20143"

echo "set environment variables done."

python inference.py \
    --config_file mm_interleaved/configs/release/mm_inference.yaml

