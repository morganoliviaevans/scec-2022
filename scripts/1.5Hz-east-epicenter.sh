#!/bin/bash
#SBATCH --job-name=rockfish-0.75hz-simulation-east-epicenter
#SBATCH --time=48:00:00
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=48
#SBATCH --account=loule_bigmem
#SBATCH --partition=bigmem

source /data/apps/go.sh

mpirun -np 192 /data/loule/sw4gnu/optimize/sw4 rockfish-0.75hz-simulation-east-epicenter.sw4in > rockfish-0.75hz-simulation-east-epicenter.out
