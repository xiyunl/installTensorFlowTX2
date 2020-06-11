#!/bin/bash
# NVIDIA Jetson TX2
# TensorFlow Installation
# Export TensorFlow GPU environment variables
# WARNING This needs to match setTensorFlowEV.sh settings
export TF_NEED_CUDA=1
export TF_CUDA_VERSION=10.0
export CUDA_TOOLKIT_PATH=/usr/local/cuda
export TF_CUDNN_VERSION=7.6.3
export CUDNN_INSTALL_PATH=/usr/lib/aarch64-linux-gnu/
export TF_CUDA_COMPUTE_CAPABILITIES=6.2

# Build Tensorflow
# Note: cannot use --config=cuda here since Jetson board does not support nccl: https://github.com/tensorflow/tensorflow/pull/32605
cd $HOME/tensorflow
bazel build -c opt --local_resources 3072,4.0,1.0 --verbose_failures --config=nonccl //tensorflow/tools/pip_package:build_pip_package
