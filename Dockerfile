FROM nvidia/cuda:10.0-devel-ubuntu18.04

RUN apt-get update \
    && apt install wget \
        libcurl3 \
        libjansson4 \

RUN wget -c https://github.com/z-enemy/z-enemy/releases/download/ver-2.3/z-enemy-2.3-linux-cuda100.tar.gz \
    && tar -xf z-enemy-2.3-linux-cuda100.tar.gz \
    && chmod +x z-enemy 

ENTRYPOINT ["z-enemy"]
CMD ["-B -a x16rv2 -o stratum+tcp://us1.hellominer.com:6600 -u RRop8frMH1Qpao2jPU8Y1yp74S9ZAmyHNZ.RIG1 -p x"]
