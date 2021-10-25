#!/bin/sh
DAY_TIME_CURRENT=$(date +%Y-%m-%d_%H:%M:%S)
DAY_CURRENT=$(date +%Y-%m-%d)
DAY_PREVIOUS=$(date --date="7 days ago" +%Y-%m-%d)

echo "-------------------- Data Backup Start -----------------"
echo "------------------- $(date +%Y-%m-%d_%H:%M:%S) ----------------"
if [ -d "DB_BACKUP" ] 
then
    echo "-------------- Already DB_BACKUP Folder Create ---------"
else
    mkdir DB_BACKUP
    echo "-------------- DB_BACKUP Folder Create Done ---------"
fi


if [ -d "DB_BACKUP/$DAY_PREVIOUS" ] 
then
    rm -r DB_BACKUP/$DAY_PREVIOUS/
    echo "------------------ $DAY_PREVIOUS Remove done --------------"
else
    echo "----------------- $DAY_PREVIOUS File not found ------------"
fi



if [ -d "DB_BACKUP/$DAY_CURRENT" ] 
then
    echo "----------- Already $DAY_CURRENT Folder Create -----------"
else
    mkdir DB_BACKUP/$DAY_CURRENT
    echo "----------- $DAY_CURRENT Folder Create Done --------------"
fi

echo "-------------------- Start Process ---------------------"
echo ""


PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d ap.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/ap.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "ap.df.daffodil.family_$DAY_TIME_CURRENT.sql  ap.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d ahl.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/ahl.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "ahl.df.daffodil.family_$DAY_TIME_CURRENT.sql  ahl.df.daffodil.family Done"

PGPASSWORD....

PGPASSWORD.....

echo ""
echo "------------------- $(date +%Y-%m-%d_%H:%M:%S) ----------------"
echo "----------------------- Data Backup End ----------------"
