FROM almalinux:latest

RUN dnf update -y &&  \
    dnf install -y epel-release && \
    dnf groupinstall -y 'Development Tools' && \
    dnf install -y siege

#WORKDIR /home
ENTRYPOINT ["siege"]