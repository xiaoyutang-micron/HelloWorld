FROM registry.access.redhat.com/ubi7/python-36

USER root

RUN pip3 install --upgrade pip &&\
    pip3 install numpy pandas sklearn tqdm

COPY helloWorld.py
ENTRYPOINT python helloWorld.py

