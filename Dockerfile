FROM debian:stretch

RUN apt-get update && apt-get install -y curl gdebi-core #ca-certificates-mono libttspico-utils arduino-mk empty-expect
RUN curl -L -k -o /tmp/homegenie.deb https://github.com/genielabs/HomeGenie/releases/download/v1.1-beta.526/homegenie-beta_1.1.r526_all.deb && gdebi -n /tmp/homegenie.deb

ENTRYPOINT mono /usr/local/bin/homegenie/HomeGenie.exe
