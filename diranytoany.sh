#!/bin/bash
#Código usa ffmpeg, personalizar a vontade.
#Cheque o 'man ffmpeg' caso tenha duvidas na personalização.

IFS=$'\n'
echo 'Informe o diretório alvo: [Padrão = Diretorio Atual]'
read DIRECTORY
test -z "$DIRECTORY"
if [ ! $? = 0 ]
then
	cd "$DIRECTORY"
    test -s "$DIRECTORY"
    [ $? = 1 ] && echo 'Sem arquivos do tipo escolhido nesse diretório' && exit 0
fi

echo 'Informe qual o formato final escolha: [Padrão = ogg]'
read FINALFORMAT
test $FINALFORMAT
if [ $? = 1 ]
then
	FINALFORMAT=ogg
fi

echo 'Informe a taxa de bit: [Padrão=220k]'
read TAXABIT
test $TAXABIT
if [ $? = 1 ]
then
	TAXABIT=220k 
fi

for ARQ in $( ls -1 *.${1} )
do
	ARQDESTINO="${ARQ%%.${1}}.${FINALFORMAT}"
	echo "Convertendo $ARQ para $ARQDESTINO"
	ffmpeg -y -i "$ARQ" -ab "$TAXABIT" "$ARQDESTINO"
done

echo 'Quer deletar os arquivos alvos? s/n'
read CONFIRM
test "$CONFIRM" = S
SI=$?
test "$CONFIRM" = s
si=$?
if [ $SI = 0 -o $si = 0 ]
then
    sudo rm -r *."${1}"
    echo 'Concluído!'
fi
exit 0
