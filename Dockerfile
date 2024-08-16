FROM alpine:3.20.2

RUN apk update && \
  apk --no-cache add gcc python3 py3-pip vim ansible sshpass openssh-client rsync

RUN ansible-galaxy collection install community.docker:3.12.1
RUN pip install docker==4.4.4
RUN pip install pywinrm==0.4.2