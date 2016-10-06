#!/bin/bash

# Script de Inicialização OpenIoT
# Developed By Jeferson Lima <jefersonlimaa@dcc.ufba.br> @jefersonla

# Inicializa o Virtuoso
until service virtuoso-service start; do
	echo "Failed to start... Trying again."
done

# Espera alguns segundos pela inicialização do virtuoso
sleep 15

# Inicializa a instância do Jboss
service jboss-service start