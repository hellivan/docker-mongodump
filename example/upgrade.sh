#!/bin/sh

docker-compose -f docker-compose.yml -f docker-compose.backup.yml up backup &&\
docker-compose -f docker-compose.yml up -d
