FROM ruby:2.3.3

RUN apt-get update && apt-get install -y nodejs build-essential --no-install-recommends && rm -rf /var/lib/apt/lists/*

# Install ca-certificates
RUN curl -o /home/certificates.crt https://raw.githubusercontent.com/bagder/ca-bundle/master/ca-bundle.crt
RUN cp /home/certificates.crt /usr/local/share/ca-certificates/certificates.crt
RUN update-ca-certificates
RUN update-ca-certificates --fresh

# Setup working directory
RUN mkdir /app
WORKDIR /app
ADD . ./

RUN bundle install --system

VOLUME /app

EXPOSE 4000