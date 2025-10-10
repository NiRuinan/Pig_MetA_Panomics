#!/bin/bash
#SBATCH -J stat
#SBATCH -N 1
#SBATCH -n 2
#SBATCH --mem=100gb

gfatools stat /minigraph/11_1.minigraph.gfa

echo "minigraph done!"

gfatools stat /MC/pig-11-1.gfa

echo "MC done!"

gfatools stat /PGGB/scratch/11_1.gfa

echo "PGGB done!"
