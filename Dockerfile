FROM  partlab/ubuntu-websocketd

RUN          curl -sL https://deb.nodesource.com/setup | bash - && \
             apt-get update && \
             apt-get install -y python python-pip python-pycurl python-yaml nodejs build-essential && \
             pip install pyresttest==1.3.1 pyyaml pycurl jsonschema && \
             apt-get clean

ENTRYPOINT   /bin/bash
