import os

# List all environment variables
env_vars = os.environ

# Filter out Buildkite metadata variables
metadata_vars = {key: value for key, value in env_vars.items() if key.startswith('BUILDKITE_META_DATA_')}

# Check each metadata value
for key, value in metadata_vars.items():
    metadata_key = key.replace('BUILDKITE_META_DATA_', '')
    print(f"Type of metadata '{metadata_key}':", type(value))
  
