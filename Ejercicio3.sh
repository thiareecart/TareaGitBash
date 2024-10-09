#!/bin/bash

read -p "Ingrese el URL del repositorio para clonar" repo_URL
read -p "Ingrese un nombre para la rama"  RamaNueva

git clone "$repo_URL"

repo_name=$(basename "$repo_URL" .git)

cd "$repo_name" 

git checkout "$RamaNueva"

if [ $? -eq 0 ]; then 
   echo "Se cambio correctamente a la rama '$RamaNueva'."
else
  echo "La rama '$RamaNueva' no existe. Creando nueva rama "
  git checkout -b "$RamaNueva"    
fi