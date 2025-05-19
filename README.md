## Benchmark Configs II142X
This repo contains the configs used with SeBS, also result of experiments.

### To run all selected experiments for a provider
Copy the "experiments" folder to your SeBS root directory, then run the scripts under each provider.

### Command used to run the experiment:
```bash
./sebs.py experiment invoke perf-cost --config config/dynamic_config.json --deployment aws --output-dir experiments-result/aws/3_dynamic-html --output-file out_invoke.log
```

Used this command to process the data
```bash
./sebs.py experiment process perf-cost --config config/dynamic_config.json --deployment aws --output-dir experiments-result/aws/3_dynamic-html --output-file out_process.log
```

SeBS's image build tool
```bash
python3 tools/build_docker_images.py --deployment aws --type build --language python --language-version 3.8
```