#!/usr/bin/env bash

# Load a module
module load python/2.7.9

# Print current directory
echo 'Current working directory : ' $SLURM_SUBMIT_DIR
cd $SLURM_SUBMIT_DIR

# That's it. You're a pro now. 
echo "Heyo :)"
