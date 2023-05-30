FROM python:3.8

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs wget

ADD ./vendor /vendor
WORKDIR /

COPY ./install-adb.sh /install-adb.sh
RUN sh install-adb.sh

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

ADD . /app
WORKDIR /app

RUN npm install

ENTRYPOINT []
CMD ["python", "main.py", "--server", "http://localhost:4000"]
