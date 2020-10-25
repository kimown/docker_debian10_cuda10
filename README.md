# docker_debian10_cuda10


```
sh download.sh

md5sum *.run
9375304c8dc8d42e7f9a9ae37e80b42b  cuda_10.0.130_410.48_linux.run
192f2ec6ccf7c5be256a3b5935c8dd20  NVIDIA-Linux-x86_64-418.116.00.run

docker build -t docker_debian10_cuda10:latest .

docker run --gpus all -ti --rm docker_debian10_cuda10 /usr/local/cuda-10.0/samples/bin/x86_64/linux/release/deviceQuery
/usr/local/cuda-10.0/samples/bin/x86_64/linux/release/deviceQuery Starting...

 CUDA Device Query (Runtime API) version (CUDART static linking)

cudaGetDeviceCount returned 30
-> unknown error
Result = FAIL
```


