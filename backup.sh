#!/bin/bash


<<info this sheel scripts will take periodic backups


eg.
./backup.sh <source> <dest>
src /home/ubuntu/scripts
dest /home/ubunti/backups



info




src=$1
dest=$2



timestamp=$(date '+%Y-%m-%d_%H-%M-%S')





zip -r "$dest/backups-$timestamp.zip" $src

aws s3 sync "$dest" s3://tws-backups-dd

echo"backup completed and uploaded to s3"
echo "Backup Done"
