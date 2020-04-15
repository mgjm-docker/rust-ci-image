FROM rust:1

RUN true \
    #
    # Install nightly toolchain and rustup components
    && rustup toolchain install nightly --component \
    clippy \
    rustfmt \
    #
    # Set default toolchain
    && rustup default nightly \
    #
    # Install development tools
    && cargo install \
    cargo-sort-ck \
    #
    # Done
    && true
