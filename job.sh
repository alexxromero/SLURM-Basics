#!/usr/bin/env bash

# Load python 2.7.9
module load python/2.7.9
echo 'Python version : ' ${python --version}

# Print current directory
echo 'Current working directory : ' $SLURM_SUBMIT_DIR
cd $SLURM_SUBMIT_DIR

# That's it. You're a pro now. 
echo "Heyo :)"
