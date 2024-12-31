source /etc/network_turbo 
git clone https://github.com/leiwang423/vulkan-cuda-demo.git
cd vulkan-cuda-demo/
apt update
sudo apt install vulkan-tools libvulkan-dev
vulkaninfo 

mkdir build
cd build/
cmake ..
make
./VulkanCudaDemo
