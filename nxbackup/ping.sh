# - Checa ping do link da imperatriz retonar o valor

# - autor Ricardo Assis


ALVO="189.22.8.170"

ping -c 5 $ALVO > /dev/null

if [ $? == 1 ]
then echo 1
else
echo 0
fi