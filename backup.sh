#!/bin/sh


# if env FILE_NAME not set, use data as default filename
if [ -z "${FILE_NAME}" ];
then
  FILE_NAME=data
fi

# if env MONGO_HOST not set, use mongodb as default mongo host
if [ -z "${MONGO_HOST}" ];
then
  MONGO_HOST=mongodb
fi

# if env MONGO_PORT not set, use 27017 as default mongo port
if [ -z "${MONGO_PORT}" ];
then
  MONGO_PORT=27017
fi


TS=$(date '+%Y.%m.%d_%H.%M.%S')

OUTDIR="${FILE_NAME}_${TS}"

mongodump --host "${MONGO_HOST}" --port "${MONGO_PORT}" -o "${OUTDIR}" &&\
	tar -czf "/backup-data/${OUTDIR}.tar.gz" "${OUTDIR}" &&\
	rm -rf "${OUTDIR}"
