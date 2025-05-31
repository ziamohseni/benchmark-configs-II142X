#!/bin/bash

echo "**** Running benchmarks for Azure with perf-cost ****"

echo "Execute benchmark 1_dynamic-html, Python, Concurrent: 50"
../../../sebs.py experiment invoke perf-cost --config 1_dynamic-html.json --output-dir 1_dynamic-html --output-file run.log

echo "Execute benchmark 2_dynamic-html, Node.js, Concurrent: 50"
../../../sebs.py experiment invoke perf-cost --config 2_dynamic-html.json --output-dir 2_dynamic-html --output-file run.log

echo "Execute benchmark 3_dynamic-html, Python, Concurrent: 1"
../../../sebs.py experiment invoke perf-cost --config 3_dynamic-html.json --output-dir 3_dynamic-html --output-file run.log

echo "Execute benchmark 4_dynamic-html, Python, Concurrent: 25"
../../../sebs.py experiment invoke perf-cost --config 4_dynamic-html.json --output-dir 4_dynamic-html --output-file run.log

echo "Execute benchmark 5_dynamic-html, Python, Burst"
../../../sebs.py experiment invoke perf-cost --config 5_dynamic-html.json --output-dir 5_dynamic-html --output-file run.log

echo "Execute benchmark 6_thumbnailer, Python, Concurrent: 50"
../../../sebs.py experiment invoke perf-cost --config 6_thumbnailer.json --output-dir 6_thumbnailer --output-file run.log

echo "Execute benchmark 7_thumbnailer, Node.js, Concurrent: 50"
../../../sebs.py experiment invoke perf-cost --config 7_thumbnailer.json --output-dir 7_thumbnailer --output-file run.log

