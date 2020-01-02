FROM alpine:3.11

RUN apk add python3
RUN pip3 install flask
RUN pip3 install redis
WORKDIR /app
COPY app.py .
EXPOSE 5000
CMD python3 app.py