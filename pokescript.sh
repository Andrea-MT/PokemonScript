#!/bin/bash

if [ -z "$1" ]; then
  echo "Uso: $0 <nombre_pokemon>"
  exit 1
fi

POKEMON=$1
API_URL="https://pokeapi.co/api/v2/pokemon/$POKEMON"
CSV_FILE="pokemon_data.csv"

RESPONSE=$(curl -s "$API_URL")

if echo "$RESPONSE" | jq -e .id >/dev/null 2>&1; then
  ID=$(echo "$RESPONSE" | jq .id) 
  NAME=$(echo "$RESPONSE"| jq -r .name)
  WEIGHT=$(echo "$RESPONSE" | jq .weight)
  HEIGHT=$(echo "$RESPONSE" | jq .height)
  ORDER=$(echo "$RESPONSE" | jq .order)
  
  echo "$NAME (No. $ID)"
  echo "Id = $ID"
  echo "Weight = $WEIGHT"
  echo "Height = $WEIGHT"
  echo "Order = $ORDER"
  
  if [ ! -f "$CSV_FILE" ]; then
    echo "id, name, weight, height, order" > "$CSV_FILE"
  fi
  echo "$ID, $NAME, $WEIGHT, $HEIGHT, $ORDER" >> "$CSV_FILE"
else 
  echo "Error: No se encontro informacion para el Pokemon '$POKEMON'"
  exit 1
fi
