FROM ubuntu

RUN apt update && apt install -y gcc gcc-multilib

COPY ./main.c .
COPY ./main.s .

RUN gcc ./main.c -o progC
RUN gcc -m32 -no-pie ./main.s -o progASM
