#!/bin/bash

# echo -e "\e[01;33m TEXTO \e[00m" muda a cor do texto com o echo
echo
echo "                        Confirma rm Versão 1.2-1"
echo
echo -e '\e[01;33m                                uuuuuuu\e[00m'
echo -e '\e[01;33m                            uu$$$$$$$$$$$uu\e[00m'
echo -e '\e[01;33m                         uu$$$$$$$$$$$$$$$$$uu\e[00m'
echo -e '\e[01;33m                        u$$$$$$$$$$$$$$$$$$$$$u\e[00m'
echo -e '\e[01;33m                       u$$$$$$$$$$$$$$$$$$$$$$$u\e[00m'
echo -e '\e[01;33m                      u$$$$$$$$$$$$$$$$$$$$$$$$$u\e[00m'
echo -e '\e[01;33m                      u$$$$$$$$$$$$$$$$$$$$$$$$$u\e[00m'
echo -e '\e[01;33m                      u$$$$$$"   "$$$"   "$$$$$$u\e[00m'
echo -e '\e[01;33m                      "$$$$"      u$u       $$$$"\e[00m'
echo -e '\e[01;33m                       $$$u       u$u       u$$$\e[00m'
echo -e '\e[01;33m                       $$$u      u$$$u      u$$$\e[00m'
echo -e '\e[01;33m                        "$$$$uu$$$   $$$uu$$$$"\e[00m'
echo -e '\e[01;33m                         "$$$$$$$"   "$$$$$$$"\e[00m'
echo -e '\e[01;33m                           u$$$$$$$u$$$$$$$u\e[00m'
echo -e '\e[01;33m                            u$"$"$"$"$"$"$u\e[00m'
echo -e '\e[01;33m                   uu       $$u$ $ $ $ $u$$        uu\e[00m'
echo -e '\e[01;33m                 u$$$$       $$$$$u$u$u$$$       u$$$$\e[00m'
echo -e '\e[01;33m                 $$$$$uu      "$$$$$$$$$"     uu$$$$$$\e[00m'
echo -e '\e[01;33m                u$$$$$$$$$$$uu    """""    uuuu$$$$$$$$$$\e[00m'
echo -e '\e[01;33m                $$$$"""$$$$$$$$$$uuu   uu$$$$$$$$$"""$$$"\e[00m'
echo -e '\e[01;33m                 """      ""$$$$$$$$$$$uu ""$"""\e[00m'
echo -e '\e[01;33m                           uuuu ""$$$$$$$$$$uuu\e[00m'
echo -e '\e[01;33m                  u$$$uuu$$$$$$$$$uu ""$$$$$$$$$$$uuu$$$\e[00m'
echo -e '\e[01;33m                 $$$$$$$$$$""""           ""$$$$$$$$$$$"\e[00m'
echo -e '\e[01;33m                    "$$$$$"                      ""$$$$""\e[00m'
sleep 1
clear
echo -e "\e[01;33m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m"
echo -e "\e[01;33m!                               ATENÇÃO                                ! \e[00m"
echo -e "\e[01;33m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m"
echo -e "\e[01;33m! Você invocou o comando 'rm' este comando é perigoso e deve ser usado ! \e[00m"
echo -e "\e[01;33m! com sabedoria, responsabilidade e prudência.                         ! \e[00m"
echo -e "\e[01;33m!                                                                      ! \e[00m"
echo -e "\e[01;33m! Voce REALMENTE deseja apagar o(s) item(ens) a baixo? (S/N)           ! \e[00m"
echo -e "\e[01;33m!                                                                      ! \e[00m"
echo -e "\e[01;33m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m"
echo

for a in `echo ${@:2}`
do 
	echo "$a"
done

echo
read resposta
if [ -z $resposta ]
then
        echo -e "\e[01;32m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m!"
        echo -e "\e[01;32m!                              CANCELADO                               ! \e[00m!"
        echo -e "\e[01;32m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m!"
        sleep 1
        clear
        exit
fi
 
res=`echo $resposta | awk '{print substr($1,1,1)}'`

if [ $res == "S" -o $res == "s" -o $res == "y" -o $res == "Y" ]
then
        echo -e "\e[01;31m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m"
        echo -e "\e[01;31m!                              REMOVENDO                               ! \e[00m"
        echo -e "\e[01;31m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m"
        echo
	for a in ${@:2}
	do 
		echo "$a"
		done
        	rm "$@"
        	sleep 1
        	clear
	        exit
elif [ $res == "N" -o $res == "n" ]; then
        echo -e "\e[01;32m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m"
        echo -e "\e[01;32m!                              CANCELADO                               ! \e[00m"
        echo -e "\e[01;32m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m"
        sleep 1
        clear
        exit
else
        echo -e "\e[01;32m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m"
        echo -e "\e[01;32m!                              CANCELADO                               ! \e[00m"
        echo -e "\e[01;32m!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! \e[00m"
        sleep 1
        clear
        exit
fi

