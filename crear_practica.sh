#!/bin/bash

# Validar parámetro
if [ $# -ne 1 ]; then
    echo "Uso: $0 <numero_practica>"
    exit 1
fi

NUM=$1
BRANCH="practica_${NUM}"
DIR="../TF/${BRANCH}"

echo "Creando rama ${BRANCH}..."

git switch -c "${BRANCH}" || exit 1

if [ -d "${DIR}" ]; then
    cp -r "${DIR}"/* .
else
    echo "No existe el directorio ${DIR}"
    exit 1
fi

git add .

git commit -m "Ejemplo ${NUM}"

git push -u origin "${BRANCH}"

git switch master
