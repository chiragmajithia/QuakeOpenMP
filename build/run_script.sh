#!/bin/tcsh

#SBATCH -t 00:01:10
#SBATCH --exclusive
#SBATCH --mem-per-cpu=12288
#SBATCH --mail-user=chiragm@terpmail.umd.edu
#SBATCH --mail-type=END
#SBATCH --output="../output/full/out.287.2"
#SBATCH -p debug
#SBATCH --export=OMP_NUM_THREADS=1

module load gcc
gcc -fopenmp -o quake287 -pg ../quake287.c -lm

time  ./quake287 < ../input/quake.in
echo "parallel 287 change with 1 threads"
gprof quake287 gmon.out > ../output/full/analysis/out.287.2.txt
