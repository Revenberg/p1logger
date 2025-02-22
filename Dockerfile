FROM python:alpine3.7

RUN pip install --upgrade pip && pip uninstall serial

COPY files/requirements.txt /app/

WORKDIR /app
RUN pip install -r requirements.txt

COPY files/app* /app/
COPY config/* /app/

CMD python ./p1logger.py
