FROM debian:10

# https://github.com/NVIDIA/nvidia-container-runtime/blob/master/README.md
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES all

ADD build.sh /opt/tiger/mdk/
ADD NVIDIA-Linux-x86_64-418.116.00.run /opt/tiger/mdk/
ADD cuda_10.0.130_410.48_linux.run /opt/tiger/mdk/


RUN chmod +x /opt/tiger/mdk/build.sh
RUN /bin/bash /opt/tiger/mdk/build.sh
