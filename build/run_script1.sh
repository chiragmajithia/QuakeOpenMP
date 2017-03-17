#!/bin/tcsh

#SBATCH -t 00:01:10
#SBATCH --exclusive
#SBATCH --mem-per-cpu=12288
#SBATCH --mail-user=chiragm@terpmail.umd.edu
#SBATCH --mail-type=END
#SBATCH --output="../output/final/out.seq.1"
#SBATCH -p debug
#SBATCH --export=OMP_NUM_THREADS=1

module load gcc
gcc -fopenmp -o quake_seq ../quake.c -lm

time  ./quake_seq < ../input/quake.in
echo "sequential code -no debug"
