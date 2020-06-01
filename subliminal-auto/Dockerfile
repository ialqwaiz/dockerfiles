FROM arm32v7/python

RUN apt-get update
RUN apt-get install -y --no-install-recommends cron
RUN pip --no-cache-dir install subliminal watchdog

#ADD services.ini /etc/supervisor.d/
#ADD subliminal_watchdog.py my_init /
ADD subliminal_watchdog.py entrypoint.sh /
RUN chmod +x /entrypoint.sh
#CMD ["/my_init"]
#CMD ["supervisord -c /etc/supervisord.conf -n"]
ENTRYPOINT ["/entrypoint.sh"]
