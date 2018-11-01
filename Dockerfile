FROM library/rust

RUN apt-get update && \
    cargo install routinator

RUN apt-get install -y rsync

ENTRYPOINT [ "routinator" ]
