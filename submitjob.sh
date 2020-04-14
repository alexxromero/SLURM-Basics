#!/usr/bin/env bash

# Set the bash strict mode
# set -e : bash exits immediately if any command was a non-zero exit status.
# set -u : bash exists if a variable that has not been previously defined is detected.
# set -o pipefail : prevents errors in a pipeline from being masked.
set -euo pipefail

# Make directory for error and log files
mkdir -p logs

# -- FLAGS --
# -t 20 : time limit (minutes) [8hrs max for atlas_all and 24hrs for atlas_slow]
# -p atlas_all : use atlas_all partition
# -c 2 : cpus per task
# -e logs/error-%j.txt : file for batch script's standard error
# -o logs/out-%j.txt : file for batch script's standard output

FLGS="-t 20 -p atlas -c 2 -o logs/out-%j.txt -e logs/error-%j.txt"

# Submit the job
sbatch ${FLGS} job.sh

#
