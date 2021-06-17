FROM python:latest

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install --upgrade pip
#RUN pip install Flask==0.10.1 uWSGI==2.0.8
RUN pip install Flask==0.10.1 uWSGI requests
WORKDIR /app
COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191
USER uwsgi

CMD ["/cmd.sh"]
