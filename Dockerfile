FROM thepauleh/jenkins-slave

RUN apt-get update && apt-get install -y -q \
    python-setuptools \
      python-pip \
      python-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install fabric
RUN pip install virtualenv
RUN pip install virtualenvwrapper
