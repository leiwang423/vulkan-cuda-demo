cmake_minimum_required(VERSION 3.16)
project(VulkanCudaDemo)

find_package(Vulkan REQUIRED)
find_package(CUDA REQUIRED)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 11)

enable_language(CUDA)

add_executable(VulkanCudaDemo main.cpp cuda/compute.cu)

target_include_directories(VulkanCudaDemo PRIVATE ${Vulkan_INCLUDE_DIRS} ${CUDA_INCLUDE_DIRS})
target_link_libraries(VulkanCudaDemo PRIVATE ${Vulkan_LIBRARIES} ${CUDA_LIBRARIES})

