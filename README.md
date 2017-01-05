# mongodump #

This image creates a backup of a mongodb database via mongodump every
time it is started and stores the result as a commpressed tar file in
`/backup-data`.

## Usage with docker-compose:

Potential use-case with docker-compose can be found in the example
folder of this repository.


## Parameters

	 FILE_NAME      prefix name of the backup file
	 MONGO_HOST     hostname of the mongodb (defaults to 'mongodb')
	 MONGO_PORT	    port of the mongodb (defaults to 27017)

## Volumes

	 /backup-data   contains the backed up tar.gz files