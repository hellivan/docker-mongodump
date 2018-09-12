FROM mongo:4.0.2

VOLUME /backup-data

ADD ./backup.sh /usr/local/bin/backup

CMD ["backup"]
