FROM rust:1.47.0 AS builder

RUN git clone https://github.com/koute/memory-profiler.git && \
    cd memory-profiler && \
    git checkout b3ae0113e0e4e145d97b6e767fc99f134ca80ac2

WORKDIR /memory-profiler

RUN cargo build --release -p memory-profiler && \
    cp /memory-profiler/target/release/libmemory_profiler.so /root/ && \
    rm -rf /memory-profiler && \
    echo "alias memory-profiler=LD_PRELOAD=/root/libmemory_profiler.so" | tee /root/.bashrc

ENV USER root
WORKDIR /root

CMD bash
