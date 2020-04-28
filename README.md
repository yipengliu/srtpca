# SRTPCA：Smooth Robust Tensor Principal Component Analysis for Compressed Sensing of Dynamic MRI

The acquisition of dynamic magnetic resonance imaging often requires a long
time. For acceleration, how to improve the quality of reconstruction from a
limited set of under-samples is a crucial problem. The low-rank plus sparse
decomposition model, which is also called robust principal component analysis
(RPCA), is widely used for reconstruction of dynamic magnetic resonance imag-
ing (MRI) data in an unsupervised way. In this paper, considering that dynamic
MRI data is naturally in tensor form with block-wise smoothness, we propose a
smooth robust tensor principal component analysis (SRTPCA) method for the
dynamic magnetic resonance image reconstruction. Compared with classical
RPCA ways, the low rank and sparsity terms are extended to tensor space to
fully exploit the spatial and temporal data structures. Moreover, a tensor total
variation regularization term is used to encourage the multi-dimensional block-
wise smoothness for the reconstructed dynamic MRI data. The relaxed convex
optimization model can be divided into several sub-problems by the alternating
direction method of multipliers algorithm. Numerical experiments on cardiac
perfusion and cine datasets demonstrate that the proposed SRTPCA method
outperforms the state-of-the-art ones in terms of recovery accuracy.




# data sources
The datasets used in this paper are all online available, you can obtain it through the link described as follows:
* the cardiac perfusion dataset with the size 128×128×40 (https://www.cai2r.net/resources/software/ls-reconstruction-matlab-code), rename  the dataset as pref_128_40 and put it to directory “Dataset”
* the cardiac cine dataset with the size 256×256×30 (http://www.doc.ic.ac.uk/~jc1006/software.html), rename  the dataset as cine_256_30 and put it to directory “Dataset”.

# reference 
Liu Y, Liu T, Liu J, et al. Smooth robust tensor principal component analysis for compressed sensing of dynamic MRI[J]. Pattern Recognition, 2020, 102: 107252.
