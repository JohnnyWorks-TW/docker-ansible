FROM alpine:3.18.4

RUN apk update && \
    apk --no-cache add gcc python3 py3-pip vim ansible sshpass openssh-client

RUN ansible-galaxy collection install community.docker
RUN pip install docker
RUN pip install pywinrm