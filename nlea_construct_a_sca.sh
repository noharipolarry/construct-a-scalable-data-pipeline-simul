#!/bin/bash

# Define variables
DATA_SOURCE="mock_data.csv"
DATA_DESTINATION="processed_data"
PIPELINE_STEPS=("extract" "transform" "load")

# Function to simulate data pipeline steps
pipeline_step() {
  step_name=$1
  echo " Executing $step_name step..."
  sleep 1 # Simulate processing time
  echo " $step_name step completed."
}

# Construct data pipeline
construct_pipeline() {
  for step in "${PIPELINE_STEPS[@]}"; do
    pipeline_step $step
  done
}

# Main program
main() {
  echo "Constructing data pipeline..."
  mkdir -p $DATA_DESTINATION
  echo " Processing data from $DATA_SOURCE..."
  construct_pipeline
  echo " Data pipeline simulation complete."
}

# Run the program
main