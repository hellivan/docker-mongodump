FROM mongo:3.4.1

VOLUME /backup-data

ADD ./backup.sh /usr/local/bin/backup

CMD ["backup"]