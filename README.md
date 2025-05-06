## Benchmark configs
change the settings if needed and push the changes.

### Command used to run the experiment:
```bash
./sebs.py experiment invoke perf-cost --config config/aws/dynamic-html/1_dynamic-html.json --deployment aws --output-dir experiments-result/aws
```

Used this command to process the data
```bash
./sebs.py experiment process perf-cost --config config/aws/dynamic-html/1_dynamic-html.json --output-dir experiments-result/aws
```