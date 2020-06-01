FROM arm32v7/python

RUN apt-get update
RUN apt-get install -y --no-install-recommends cron
RUN pip --no-cache-dir install subliminal watchdog

ADD services.ini /etc/supervisor.d/
ADD subliminal_watchdog.py my_init /
CMD ["/my_init"]
