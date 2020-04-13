# Basic guide for using UCI's green planet cluster  

Based on https://github.com/dguest/slurm-example  and  https://docs.rc.fas.harvard.edu/kb/convenient-slurm-commands/.   
The Greenplanet cluster uses the SLURM queue.       

### Basic SLURM commands  

man <command> : Get documentation on a command    
sbatch <myscript.sh> : Submit job     
sbatch --test-only <myscript.sh> : Test job and find out the estimated time to run   
squeue -u <username> : List current jobs for a user    
squeue -u <username> -p shared : List all current jobs in the shared partition for a user    
scancel <jobid> : Cancel a job    
scancel -u <username> : Cancel all jobs for a user 



### Basic example  
Type:

    ./submitjob.sh 
    
This script specifies the flags and submits 'job.sh' to the cluster.  

### Other  

module avail : To see the available software  
module load <module name> : To load a module  

srun --pty  -t 300 -n 1 -p atlas_all bash -i : Interative shell 
