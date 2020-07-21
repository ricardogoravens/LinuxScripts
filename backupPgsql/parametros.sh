#PARAMETROS bkp_PGSQL.sh


BASE="dbcallcenter"
DATAHORA=`date +"%Y-%m-%d_%H"`
DESTINO="/dados/storage/backup/PGSQL/$DATAHORA"
DATAREMOVER=`date +"%Y-^_%m-%d" --date="5 days ago"`
PONTOMONTAGEM="/dados/backup/PGSQL"
LOGBANCO="/dados/backup/PGSQL/backup/BackupBanco.log"



=======================


BASE="dbcallcenter"
DATAHORA=`date +"%Y-%m-%d_%H"`
DATALOG=`date +"%Y-%m-%d_%H:%M"`
DATAREMOVER=`date +"%Y-%m-%d" --date="20 days ago"`
DESTINOBASE="/dados/backup/PGSQL"

###DISCOMONTAGEM pode ser alterado dentro do script caso não haja unidade de disco para montagem
DISCOMONTAGEM="$(cat /etc/fstab | grep -o "^UUID.*/dados/.*" | cut -d " " -f1 | head -n 1)"
QTDISCO="$(cat /etc/fstab | grep -o "^UUID.*/dados/.*" | cut -d " " -f1 | wc -l)"
ESPACODISCO="$( df $DESTINOBASE | sed -E "s/.* (.*)% .*$/\1/g" | tail -n 1)"
TO="infraestrutura@smartnx.io"
LOGBANCO="/var/log/BKP_BD.log"




BASE="dbcallcenter"
#DATAHORA=`date +"%Y-%m-%d_%H"`
DATALOG=`date +"%Y-%m-%d_%H:%M"`
DATAREMOVER=`date +"%Y-^_%m-%d" --date="5 days ago"`
DESTINOBASE="/dados/backup/PGSQL"
DESTINO="$DESTINOBASE/$DATAHORA"
DISCOMONTAGEM="$(cat /etc/fstab | grep -o "/dados/.*" | cut -d " " -f1 | head -n 1)"
NUMSTORAGE="$(cat /etc/fstab | grep -o "/dados/.*" | cut -d " " -f1 | wc -l)"
ESPACODISCO="$( df $DESTINOBASE | grep $DISCOMONTAGEM | sed -E "s/.* (.*)% .*$/\1/g")"
TO=("infra@smartnx.io")
LOGBANCO="/var/log/BKP_BD.log"