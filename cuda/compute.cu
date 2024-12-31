#include <cuda_runtime.h>

// CUDA kernel
__global__ void computeKernel(float* data)
{
    int idx = threadIdx.x + blockIdx.x * blockDim.x;
    data[idx] = data[idx] * data[idx];
}

// CUDA kernel launcher
void launchComputeKernel(float* d_data, int dataSize)
{
    int blockSize = 256;
    int numBlocks = (dataSize + blockSize - 1) / blockSize;
    computeKernel<<<numBlocks, blockSize>>>(d_data);
    cudaDeviceSynchronize();
}
