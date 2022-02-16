FROM rust AS build
RUN apt-get update && apt-get install git
RUN git clone https://github.com/veer66/wordcutw.git && \
    cd wordcutw && \
    cargo build --release

FROM ruby
COPY --from=build /wordcutw/target/release/libwordcutw.so /usr/local/lib
RUN gem install wordcuta -v '0.2.1'
RUN gem install jimson -v '0.14.0'
RUN gem install puma -v '5.6.2'

WORKDIR /work
