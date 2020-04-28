FROM rust:1

RUN \
    #
    # Select a toolchain (`nightly` or `nightly-YYYY-MM-DD`)
    toolchain=nightly-2020-03-19 \
    #
    # Install nightly toolchain and rustup components
    && rustup toolchain install $toolchain --component \
    clippy \
    rustfmt \
    #
    # Set default toolchain
    && rustup default $toolchain \
    #
    # Install development tools
    && cargo install \
    cargo-sort-ck \
    #
    # Done
    && true
