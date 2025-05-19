#!/bin/bash

echo "**** Processing results for GCP with perf-cost ****"

echo "Process benchmark 1_dynamic-html, Python, Concurrent: 50"
../../../sebs.py experiment process perf-cost --config 1_dynamic-html.json --output-dir 1_dynamic-html --output-file process.log

echo "Process benchmark 2_dynamic-html, Node.js, Concurrent: 50"
../../../sebs.py experiment process perf-cost --config 2_dynamic-html.json --output-dir 2_dynamic-html --output-file process.log

echo "Process benchmark 3_dynamic-html, Python, Concurrent: 1"
../../../sebs.py experiment process perf-cost --config 3_dynamic-html.json --output-dir 3_dynamic-html --output-file process.log

echo "Process benchmark 4_dynamic-html, Python, Concurrent: 25"
../../../sebs.py experiment process perf-cost --config 4_dynamic-html.json --output-dir 4_dynamic-html --output-file process.log

echo "Process benchmark 6_thumbnailer, Python, Concurrent: 50"
../../../sebs.py experiment process perf-cost --config 6_thumbnailer.json --output-dir 6_thumbnailer --output-file process.log

echo "Process benchmark 7_thumbnailer, Node.js, Concurrent: 50"
../../../sebs.py experiment process perf-cost --config 7_thumbnailer.json --output-dir 7_thumbnailer --output-file process.log

