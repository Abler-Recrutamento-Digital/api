#!/bin/bash

echo "Bundle started"

# Bundle docs into zero-dependency HTML file
npx redoc-cli bundle dist.yaml && \
mv redoc-static.html index.html && \
echo "Changed name from redoc-static.html to index.html" && \
echo -e "\nDone!"
