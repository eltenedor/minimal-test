FROM perl:latest
# set metadata
LABEL maintainer="fabian.gabel@tuhh.de"
LABEL hub.docker.com="eltenedor/perl-webwork"
LABEL description="only the necessary perl modules"
LABEL usage="use the -v option to mount pg at /opt/webwork"
# install needed perl modules
RUN cpanm -fi --notest \
  Data::Dump \
  Date::Parse \
  DateTime \
  Devel::Cover \
  Devel::Cover::Report::Codecov \
  HTML::Entities \
  HTML::TagParser \
  JSON \
  Module::Build \
  Test::Exception \
  Tie::IxHash \
  UUID::Tiny module 
# create webwork environment
RUN mkdir -p /opt/webwork 
WORKDIR /opt/webwork/pg
ENV WEBWORK_ROOT /opt/webwork/pg
ENV PG_ROOT /opt/webwork/pg
CMD ["/bin/bash"]
