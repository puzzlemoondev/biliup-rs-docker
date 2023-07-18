FROM --platform=$BUILDPLATFORM rust AS source
WORKDIR /source
ENV BILIUPRS_VERSION 0.1.17
RUN wget https://github.com/biliup/biliup-rs/archive/refs/tags/v${BILIUPRS_VERSION}.tar.gz -O biliuprs.tar.gz && \
    tar -xzf biliuprs.tar.gz --strip 1 && \
    mkdir .cargo && \
    cargo vendor > .cargo/config

FROM rust AS build
WORKDIR /build
COPY --from=source /source .
RUN cargo build --release --offline --bin biliup && \
    cp target/release/biliup /biliup

FROM debian:stable-slim
COPY --from=build /biliup /
ENTRYPOINT [ "/biliup" ]