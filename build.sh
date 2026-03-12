#!/bin/bash
set -e

mkdir -p dist

# Inject Mapbox token from environment variable
sed "s/MAPBOX_ACCESS_TOKEN/${MAPBOX_TOKEN}/g" la-nucia-one.html > dist/la-nucia-one.html
cp index.html dist/index.html
cp -r assets dist/assets
