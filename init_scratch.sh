#!/bin/bash
echo Copying data and software into scratch ...

##mkdir $SCRATCH/Run/

tar -cvf ./temp_soft.tar ./software # compress software
tar -xvf temp_soft.tar -C $SCRATCH/Run/ # extract software in scratch
rm temp_soft.tar # remove home compression

cp $HOME/MonfilsLab/serial_job.slurm $SCRATCH/Run/ # copy serial slurm job

## tar -xvf dataR.tar.gz -C $SCRATCH/Run/ # extract data 

echo done!