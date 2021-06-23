#!/bin/bash
STATION=$1
OUT_DIR=$2
OUT=$OUT_DIR/$(date +%Y-%m-%d-%H%M%S)-$STATION.html
curl "https://forecast.weather.gov/product.php?site=$STATION&issuedby=$STATION&product=AFD&format=txt&version=1&glossary=0" > $OUT
