#!/bin/sh
#SBATCH -p all
#SBATCH --array=1-1000
#SBATCH --ntasks=1
#SBATCH -t 48-00:00
#SBATCH --mem-per-cpu=2000
#craig stanley
#used to run EP using a slurm cluster (igem)

module load openmpi
val=$(sed "${SLURM_ARRAY_TASK_ID}q;d" $MPI_list)
bash /home/tue39618/EP/run_EP.sh $val 
