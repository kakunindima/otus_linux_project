#!/bin/bash

LOCKFILE=/home/borg/lockfile
if [ -e ${LOCKFILE} ] && kill -0 `cat ${LOCKFILE}`; then
    echo "already running"
    exit
fi

# Make sure the lockfile is removed when we exit and then claim it
trap "rm -f ${LOCKFILE}; exit" INT TERM EXIT
echo $$ > ${LOCKFILE}

# Configure backup
LOG="/var/log/borg/borg_backup.log"
BACKUP_HOST='bml'
BACKUP_USER='borg'
BACKUP_REPO='{{ Repo }}'

exec > >(tee -i ${LOG})
exec 2>&1

echo $BACKUP_REPO

# Make backup
borg create \
  --stats --progress \
  ${BACKUP_USER}@${BACKUP_HOST}:${BACKUP_REPO}::"{{ Repo }}-{now:%Y-%m-%d_%H:%M:%S}" \
  {{ target }}


# Prune backup
borg prune \
  -v --list \
  ${BACKUP_USER}@${BACKUP_HOST}:${BACKUP_REPO} \
  --keep-hourly 1 \
  --keep-daily 30 \
  --keep-monthly 2

# Delete lockfile
rm -f ${LOCKFILE}