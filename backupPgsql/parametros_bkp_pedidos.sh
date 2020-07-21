

=======================


BASE="dbcallcenter"
DATAHORA=`date +"%Y-%m-%d_%H"`
DATALOG=`date +"%Y-%m-%d_%H:%M"`
DATAREMOVER=`date +"%Y-%m-%d" --date="3 days ago"`
DESTINOBASE="/dados/backup/PGSQL/PEDIDOS"

###DISCOMONTAGEM pode ser alterado dentro do script caso não haja unidade de disco para montagem
DISCOMONTAGEM="$(cat /etc/fstab | grep -o "^UUID.*/dados/.*" | cut -d " " -f1 | head -n 1)"
QTDISCO="$(cat /etc/fstab | grep -o "^UUID.*/dados/.*" | cut -d " " -f1 | wc -l)"
ESPACODISCO="$( df $DESTINOBASE | sed -E "s/.* (.*)% .*$/\1/g" | tail -n 1)"
TO="infraestrutura@smartnx.io"
LOGBANCO="/var/log/BKP_BD.log"




BASE="dbcallcenter"
#DATAHORA=`date +"%Y-%m-%d_%H"`
DATALOG=`date +"%Y-%m-%d_%H:%M"`
DATAREMOVER=`date +"%Y-^_%m-%d" --date="3 days ago"`
DESTINOBASE="/dados/backup/PGSQL/PEDIDOS"
DESTINO="$DESTINOBASE/$DATAHORA"
DISCOMONTAGEM="$(cat /etc/fstab | grep -o "/dados/.*" | cut -d " " -f1 | head -n 1)"
NUMSTORAGE="$(cat /etc/fstab | grep -o "/dados/.*" | cut -d " " -f1 | wc -l)"
ESPACODISCO="$( df $DESTINOBASE | grep $DISCOMONTAGEM | sed -E "s/.* (.*)% .*$/\1/g")"
TO=("infra@smartnx.io")
LOGBANCO="/var/log/BKP_BD.log"
