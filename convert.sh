#!/bin/bash

echo "
           |--------------------------------------------------|
           |                      Menu                        |
           |--------------------------------------------------|
           | 1) Binário para decimal                          |
           | 2) Texto para binário                            |
           |--------------------------------------------------|
"
printf "Escolha uma opção: "
read opcao

case $opcao in
  1) while [ "$inicio" != "n" ]
  do
      read -p "Digite o número em binário: " numero
      echo -n "Seu número em decimal: " ; echo 'ibase=2;'$numero | bc
      echo
      read -p "Deseja continuar[S/N]" inicio
  done ;;

  2) while [ "$inicio" != "n" ]
  do
       read -p "Digite o texto para converter em binário: " texto
       echo
       echo "$texto" | xxd -b
       echo
       read -p "Deseja continuar[S/N]" inicio
  done ;;

  *) echo "Só tem a opção 1 e 2" ;;

esac
