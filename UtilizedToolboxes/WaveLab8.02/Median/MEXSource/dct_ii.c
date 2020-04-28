



/*

 dct_ii.c	.MEX file corresponding to dct_ii.m
		Fast Discrete Cosine Transform, type II

  The Matlab syntax is:

			c = dct_ii(x)


  Copyright (c) 1994  David Donoho
  All Rights Reserved

*/

#include <math.h>
#include "mex.h"
#include "wavelab.h"

#define DOUBLE		double
#define INT			int

/* Input Arguments */

#define	Sig_IN	prhs[0]

/* Output Arguments */

#define	DCT_OUT	plhs[0]

void mexFunction(nlhs, plhs, nrhs, prhs)
INT nlhs, nrhs;
Matrix *plhs[], *prhs[];
{
	DOUBLE	*sig,*wcp,*tmp;
	Matrix *temp;
	unsigned int	m,n;
	int nr,nc,nn,J;

	/* Check for proper number of arguments */

	if (nrhs != 1) {
		mexErrMsgTxt("dct_ii requires one input argument.");
	} else if (nlhs != 1) {
		mexErrMsgTxt("dct_ii requires one output argument.");
	}


	/* Check the dimensions of signal.  signal can be n X 1 or 1 X n. */
    /* future enhancement -- vectorize, do each column of matrix */
	m  = mxGetM(Sig_IN);
	n  = mxGetN(Sig_IN);
	if(m == 1){
	  nr = (int) n;
	  nc = 1;
	} else {
	  nr = (int) m;
	  nc = (int) n;
	}
	J = 0;
	for( nn = 1; nn < nr;  nn *= 2 )  
		 J ++;
	if(  nn  !=  nr){
		 mexErrMsgTxt("dct_ii requires dyadic length");
	}

	/* Create a matrix for the return argument */

	DCT_OUT = mxCreateFull(m, n, REAL);
	temp    = mxCreateFull(4*n,1,REAL);

	/* Assign pointers to the various parameters */

	wcp = mxGetPr(DCT_OUT);
	sig = mxGetPr(Sig_IN);
	tmp = mxGetPr(temp);
	copydouble(sig,tmp,nr);

	/* Do the actual computations in a subroutine */
	dct(&tmp[0],&tmp[nr],J,&tmp[2*nr]);

	copydouble(tmp,wcp,nr);
	mxFreeMatrix(temp);
}

#include "dct.c"
#include "dht.c"

void copydouble(x,y,n)
DOUBLE *x,*y;
int n;
{
   while(n--) *y++ = *x++;
 }

