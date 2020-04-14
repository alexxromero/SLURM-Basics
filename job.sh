#!/usr/bin/env bash

# Load a module
module load python/3.6.4

# Print current directory
echo 'Current working directory : ' $SLURM_SUBMIT_DIR
cd $SLURM_SUBMIT_DIR

# That's it. You're a pro now. 
echo "Heyo :)"

# April 14: Now try executing a python script.
./python_script.py
