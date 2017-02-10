FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.2

RUN gem install ey_aws --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ey_aws"]
CMD ["--help"]
