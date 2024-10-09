#!/bin/bash

read -p "Ingrese un mensaje para el commit" Mensaje 
git add .

git commit -m "$Mensaje"

remote=$(git remote)
if [ -z "$remote" ]: then
   echo "No ahi repositorio remoto conectado"
   exit 1
fi 

git push origin $(git branch --show-current)

echo "Cambios subidos a GitHub con éxito."   