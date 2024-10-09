#!/bin/bash

if [ -d ".git" ]; then
   echo "Revisando el estado del repositorio"

   git status 

   echo "Estado del repositorio mostrado."
else 
   echo "Este directorio no es un repositorio Git."
fi    