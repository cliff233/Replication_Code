#!/bin/bash
#
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --time=1:00:00
#SBATCH --mem=32GB
#SBATCH --job-name=dim0
#SBATCH --mail-type=ALL
#SBATCH --mail-user=b.park@cornell.edu

module purge
module load r/gcc/4.1.0

cd /scratch/bp1094/space/
Rscript --vanilla --verbose 1_Fit_Dim0.R > logs/1_Fit_Dim0.log 2>&1
