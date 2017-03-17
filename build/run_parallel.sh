#!/bin/tcsh

#SBATCH -t 00:01:10
#SBATCH --exclusive
#SBATCH --mem-per-cpu=12288
#SBATCH --mail-user=chiragm@terpmail.umd.edu
#SBATCH --mail-type=END
#SBATCH --output="../output/final/out.287.16"
#SBATCH -p debug
#SBATCH --export=OMP_NUM_THREADS=16

module load gcc
gcc -fopenmp -o quake287 ../quake287.c -lm
time  ./quake287 < ../input/quake.in

echo "parallel 287 change with 16 threads"
