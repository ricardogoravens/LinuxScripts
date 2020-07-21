# - Instala nx backup
# - Ricardo Assis



# - testa ping do servidor
LINK="https://smartnx.backupmanager.info/downloads/softwares/smartnx-vpro-nix.tar.gz"
HOSTNAME=`hostname`
ping -c 2 $HOSTNAME >>/dev/null

if  [ $? == 0 ]
then
    mkdir /opt/backup_pro
    cd /opt/backup_pro
    wget $LINK

    tar xvzf smartnx-vpro-nix.tar.gz

else
    echo "FAVOR VERIFICAR O PING DO SERVIDOR"
fi

echo "fim da instalação"