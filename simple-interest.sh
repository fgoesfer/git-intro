#!/bin/bash

# Verifica se o número correto de argumentos foi fornecido
if [ "$#" -ne 3 ]; then
  echo "Uso: $0 <principal> <taxa de juros> <tempo>"
  echo "Exemplo: $0 1000 5 2"
  exit 1
fi

# Atribui os argumentos a variáveis
principal=$1
taxa_de_juros=$2
tempo=$3

# Calcula o juro simples
juro_simples=$(echo "scale=2; ($principal * $taxa_de_juros * $tempo) / 100" | bc)

# Exibe o resultado
echo "O juro simples é: R$ $juro_simples"
