import json
import statistics
import sys
import os

# Check for argument
if len(sys.argv) != 2:
    print("Usage: python3 median.py ../<path_to_json_file>")
    sys.exit(1)

file_path = sys.argv[1]

# Check if file exists
if not os.path.isfile(file_path):
    print(f"Error: File '{file_path}' not found.")
    sys.exit(1)

# Load the JSON data from file
with open(file_path, 'r') as f:
    data = json.load(f)

# Lists to store values
execution_times = []
benchmark_times = []
client_times = []

# Traverse the JSON structure
for benchmark_group in data.get("_invocations", {}).values():
    for invocation in benchmark_group.values():
        execution = invocation.get("provider_times", {}).get("execution")
        benchmark = invocation.get("times", {}).get("benchmark")
        client = invocation.get("times", {}).get("client")

        if execution is not None:
            execution_times.append(execution)
        if benchmark is not None:
            benchmark_times.append(benchmark)
        if client is not None:
            client_times.append(client)

# Compute medians
execution_median = statistics.median(execution_times)
benchmark_median = statistics.median(benchmark_times)
client_median = statistics.median(client_times)

# Output lengths of lists
print("Number of execution times:", len(execution_times))
print("Number of benchmark times:", len(benchmark_times))
print("Number of client times:", len(client_times))

# Output the results
print("Median execution time:", execution_median)
print("Median benchmark time:", benchmark_median)
print("Median client time (SeBS):", client_median)
