#!/bin/bash
#SBATCH --job-name=sensitivity
#SBATCH --error=error.log
#SBATCH -n1
#SBATCH --output=output.log
#SBATCH --mem=10Gb
#SBATCH --time=8:00:00

jupyter nbconvert --ExecutePreprocessor.timeout=30000 --to notebook --execute copyme.ipynb --output=alldone.ipynb
