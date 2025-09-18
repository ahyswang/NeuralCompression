#!/bin/bash 

export TORCH_HOME=$PWD/cache/
export PATH_TO_OPENIMAGES=$PWD/data/clic2020/train

python train.py \
    experiment_name=pretrain0.14bpp \
    data.open_images_root=$PATH_TO_OPENIMAGES \
    data.batch_size=8 \
    distortion_loss=mse_lpips \
    distortion_loss.mse_param=150.0 \
    distortion_loss.lpips_param=1.0 \
    distortion_loss.backbone=alex \
    optimizer.model_opt.lr=0.0003 \
    rate_target=target-0.14 \
    model=hific_autoencoder