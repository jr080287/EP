#!/bin/sh
#SBATCH -p all  #the Queue or partition
#SBATCH --array=1-1000 #the array size 
#SBATCH --ntasks=1 #number of tasks to launch for each array item
#SBATCH -t 48-00:00 #time H-M:Sec
#SBATCH --mem-per-cpu=2000 #memory per cpu, cannot exceed 128GB for compute nodes or 256 for highmem
#craig stanley
#used to run EP using a slurm cluster (igem)

module load openmpi #load openMPI

val=$(sed "${SLURM_ARRAY_TASK_ID}q;d" $MPI_list) #pull input arguments
bash /home/tue39618/EP/run_EP.sh $val  # excute megacc
