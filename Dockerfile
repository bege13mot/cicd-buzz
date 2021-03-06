﻿FROM alpine:3.6
RUN apk add --update python3
COPY requirements.txt /src/requirements.txt
RUN pip3 install -r /src/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
COPY static /src/static
COPY templates /src/templates
CMD python3 /src/app.py