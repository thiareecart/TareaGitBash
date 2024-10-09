#!/bin/bash

if [ -d ".git" ]; then
   echo "Mostando el historial de commits recientes"

   git log --oneline --decorate --graph --all 

   echo "Historial de commits mostrado"
else
   echo "Este directorio no es un repositorio de Git."
fi     