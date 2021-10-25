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

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d bvcl.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/bvcl.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "bvcl.df.daffodil.family_$DAY_TIME_CURRENT.sql  bvcl.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d dfoffice.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/dfoffice.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "dfoffice.df.daffodil.family_$DAY_TIME_CURRENT.sql  dfoffice.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d dia.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/dia.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "dia.df.daffodil.family_$DAY_TIME_CURRENT.sql  dia.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d dicchr.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/dicchr.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "dicchr.df.daffodil.family_$DAY_TIME_CURRENT.sql  dicchr.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d dicd.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/dicd.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "dicd.df.daffodil.family_$DAY_TIME_CURRENT.sql  dicd.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d diit.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/diit.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "diit.df.daffodil.family_$DAY_TIME_CURRENT.sql  diit.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d diitctg.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/diitctg.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "diitctg.df.daffodil.family_$DAY_TIME_CURRENT.sql  diitctg.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d disbh.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/disbh.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "disbh.df.daffodil.family_$DAY_TIME_CURRENT.sql  disbh.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d disco.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/disco.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "disco.df.daffodil.family_$DAY_TIME_CURRENT.sql  disco.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d discp.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/discp.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "discp.df.daffodil.family_$DAY_TIME_CURRENT.sql  discp.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d disev.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/disev.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "disev.df.daffodil.family_$DAY_TIME_CURRENT.sql  disev.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d diss.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/diss.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "diss.df.daffodil.family_$DAY_TIME_CURRENT.sql  diss.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d dist.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/dist.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "dist.df.daffodil.family_$DAY_TIME_CURRENT.sql  dist.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d disut.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/disut.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "disut.df.daffodil.family_$DAY_TIME_CURRENT.sql  disut.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d djit.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/djit.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "djit.df.daffodil.family_$DAY_TIME_CURRENT.sql  djit.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d dnc.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/dnc.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "dnc.df.daffodil.family_$DAY_TIME_CURRENT.sql  dnc.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d do.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/do.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "do.df.daffodil.family_$DAY_TIME_CURRENT.sql  do.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d dpi.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/dpi.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "dpi.df.daffodil.family_$DAY_TIME_CURRENT.sql  dpi.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d dti.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/dti.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "dti.df.daffodil.family_$DAY_TIME_CURRENT.sql  dti.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d eminence.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/eminence.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "eminence.df.daffodil.family_$DAY_TIME_CURRENT.sql  eminence.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d management.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/management.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "management.df.daffodil.family_$DAY_TIME_CURRENT.sql  management.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d nist.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/nist.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "nist.df.daffodil.family_$DAY_TIME_CURRENT.sql  nist.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d np.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/np.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "np.df.daffodil.family_$DAY_TIME_CURRENT.sql  np.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d of.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/of.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "of.df.daffodil.family_$DAY_TIME_CURRENT.sql  of.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d pos.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/pos.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "pos.df.daffodil.family_$DAY_TIME_CURRENT.sql  pos.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d skilljobs.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/skilljobs.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "skilljobs.df.daffodil.family_$DAY_TIME_CURRENT.sql  skilljobs.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d adc.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/adc.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "adc.df.daffodil.family_$DAY_TIME_CURRENT.sql  adc.df.daffodil.family Done"

PGPASSWORD="odoosaas" pg_dump -h localhost -U odoosaas -d gra.df.daffodil.family > DB_BACKUP/$DAY_CURRENT/gra.df.daffodil.family_$DAY_TIME_CURRENT.sql
echo "gra.df.daffodil.family_$DAY_TIME_CURRENT.sql  gra.df.daffodil.family Done"

echo ""
echo "------------------- $(date +%Y-%m-%d_%H:%M:%S) ----------------"
echo "----------------------- Data Backup End ----------------"
