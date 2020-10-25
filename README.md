# host

```
nvidia-smi 
Sun Oct 25 20:47:40 2020       
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 450.51.05    Driver Version: 450.51.05    CUDA Version: 11.0     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  Tesla T4            On   | 00000000:18:00.0 Off |                    0 |
| N/A   38C    P8    10W /  70W |      0MiB / 15109MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
|   1  Tesla T4            On   | 00000000:3B:00.0 Off |                    0 |
| N/A   39C    P8    10W /  70W |      0MiB / 15109MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
                                                                               
+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|  No running processes found                                                 |
+-----------------------------------------------------------------------------+
```

# run

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


