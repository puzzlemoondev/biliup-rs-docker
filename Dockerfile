FROM --platform=$BUILDPLATFORM rust AS source
WORKDIR /source
COPY biliup-rs .
RUN mkdir .cargo && \
    cargo vendor > .cargo/config

FROM rust AS build
WORKDIR /build
COPY --from=source /source .
RUN cargo build --release --offline --bin biliup && \
    cp target/release/biliup /biliup

FROM scratch
COPY --from=build /biliup /
ENTRYPOINT [ "/biliup" ]