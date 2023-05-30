FROM ubuntu:18.04

RUN apt-get update && apt-get clean
RUN apt-get install -y \
    x11vnc \
    xvfb \
    fluxbox \
    wmctrl \
    wget 
RUN apt-get install -y gnupg2
#RUN apt-get install -y language-pack-zh*
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list 
#RUN wget -q -O /libu2f-udev_1.1.4-1_all.deb http://archive.ubuntu.com/ubuntu/pool/main/libu/libu2f-host/libu2f-udev_1.1.4-1_all.deb
#RUN dpkg -i /libu2f-udev_1.1.4-1_all.deb
#RUN wget -q -O /libnss3_3.35-2ubuntu2.16_amd64.deb http://security.ubuntu.com/ubuntu/pool/main/n/nss/libnss3_3.35-2ubuntu2.16_amd64.deb
#RUN dpkg -i /libnss3_3.35-2ubuntu2.16_amd64.deb
RUN apt-get update && apt-get -y install google-chrome-stable

RUN useradd apps \
    && mkdir -p /home/apps \
    && chown -v -R apps:apps /home/apps

COPY bootstrap.sh /
EXPOSE 5900
CMD '/bootstrap.sh'