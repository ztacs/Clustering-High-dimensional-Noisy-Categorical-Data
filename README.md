# Clustering-High-dimensional-Noisy-Categorical-Data
This repository contains a MATLAB implementation of a computationally efficient spectral based algorithm to cluster high-dimensional noisy
categorical (nominal or ordinal) data. To compare the finite-sample performance of our algorithm with that of Kmodes (Huang, 1997), K-modes shuffle, HD vector (Zhang et al., 2006), and SpectralCAT (David and Averbuch, 2012), the MATLAB implementations of those algorithms are also posted. 

How to reproduce analyses Tables 1- 3 and Figures 2- 3 from paper:

When run codes, need to add all folders to MATLAB path. Data pathways in the MATLAB codes need to be where the data have been downloaded. 

•	Table 1: run “dataset_property.m” in folder \Numerical Studies.

•	Table 2: run “soybean_small.m” and “soybean_15cluster” in folder \Numerical Studies\Soybean.
Run “mushroom.m” in folder \Numerical Studies\mushroom.
Run “zoo.m” and “zoo_relable_omnivore8.m” in folder \Numerical Studies\zoo.
Supporting MATLAB codes are in folder \spectralCAT, \Spectral Algorithm, \HD vector and \K-modes.

•	Table 3: run “numerical_experiment_synt_data_running_time_r4g6_20random_matri.m” in folder \Numerical Studies\Synthetic data\running time. Supporting MATLAB codes are in folder \Numerical Studies\Synthetic data, \spectralCAT, \Spectral Algorithm, and \K-modes. 

•	Figure 2: run “Synthetic_data_clustering_accuracy_plot.m” in folder \Numerical Studies\Synthetic data\Synthetic data plot. Data and supporting MATLAB codes are in folder \Numerical Studies\Synthetic data\Synthetic data plot.

•	Figure 3: run “heatmap_movielens.m”. Data and supporting MATLAB codes are in folder \Numerical Studies\Movielens.

