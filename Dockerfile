FROM tiangolo/uwsgi-nginx-flask:python3.6

ENV LISTEN_PORT 5000
EXPOSE 5000

ENV STATIC_PATH /app/app/static

COPY ./app/requirements.txt /app/requirements.txt
RUN pip3 install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com -r /app/requirements.txt

COPY ./app /app
