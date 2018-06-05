FROM kdvolder/mvn-plus-npm

MAINTAINER Serfim TIC

# Get Chrome sources
RUN curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

# Install Chrome
RUN apt-get update && apt-get install -y \
    google-chrome-stable \
    --no-install-recommends

# Install Ruby
RUN apt-get install -y ruby ruby-dev

# Install Compass
RUN gem install compass

# Install Bower
RUN npm install -g bower

# Install Grunt CLI
RUN npm install -g grunt-cli

# Set language
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8