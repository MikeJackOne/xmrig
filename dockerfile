FROM ubuntu:20:04
WORKDIR /code
RUN apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
RUN git clone https://github.com/loser02/xmrig
RUN mkdir xmrig/build && cd xmrig/build
RUN cmake ..
RUN make -j$(nproc)
CMD ./xmrig -o sg.minexmr.com:4444 -u 42tQpuNBfdQBdT8WTjS3SaAk12pS9rv2Ajir69gYRTaDGibm4JafL3LT9fnKWzwwJCCUcJWRFoMsk9bmHmc4qF7EGvd1SnH
