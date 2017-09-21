#! /bin/bash

# The top part (with all the weird #SBATCH stuff) contains all the slurm settings for the job,
# e.g. where to run the program and which resources to use.
#SBATCH -J hpcday_2017_testjob   # Job name (you can try to change it).
#SBATCH --partition q16l         # Which partition to use.
#SBATCH --reservation=workshop   # Special reservation for this workshop :).
#SBATCH --time=1:00:00           # Time limit.
#SBATCH --nodes 2                # The number of nodes to allocate.
#SBATCH --ntasks-per-node 2      # The number of tasks to run on each node.
#SBATCH --cpus-per-task 1        # The number of cpus per task (threading).

# We use srun to run our application.
# This is a special slurm wrapper that will wrap mpirun, and make sure that the application is run correctly.
# Srun will also make sure that the application will use all the resources you requested.
srun $SLURM_SUBMIT_DIR/hello_world.x 
