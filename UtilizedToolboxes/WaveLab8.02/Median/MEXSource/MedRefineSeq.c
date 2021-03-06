/* 
   This file contains the Quadratic Median-Interpolating Refinement code. 
   It is used to build forward and inverse Median-Interpolating Pyramid Transform.
*/

/* 
    Copyright (c) 1997. Thomas P.Y. Yu
*/

#include <math.h>
#include "mex.h"

#define DOUBLE double
#define EPS 10e-15
#include "mipt.h"

/* Input Arguments */
#define COARSE   prhs[0]
#define D        prhs[1]
/* Output Arguments */
#define FINE     plhs[0]

DOUBLE q1(d)
DOUBLE d;
{
  if (d >= 7.0/3 && d <= 5.0)
    return (59 + 7*d - 8*sqrt(16+16*d+pow(d,2.0)))/27;
  else if (d >= 1.0/5 && d <= 3.0/7)
    return (26 + 16*d - 4*sqrt(1+16*d+16*pow(d,2.0)))/27;
  else if (d >= -3 && d <= -1.0/3)
    return (77 + 13*d + 8*sqrt(1-62*d+pow(d,2.0)))/135;
  else if (d >= -11 && d <= -3)
    return (-323 + 214*d - 35*pow(d,2.0))/(288 * (d-1));
  else
    return (7-d)/9;
}

DOUBLE q2(d)
DOUBLE d;
{
  if (d >= -10.0/7 && d <= -7.0/10)
    return (1097-1174*d+17*pow(d,2.0)+(278-8*d)*sqrt(1-62*d+pow(d,2.0)))/
      (270*(4-4*d+sqrt(1-62*d+pow(d,2.0))));
  else if ((d >= -3 && d <= -10.0/7) || (d <= -1.0/3 && d >= -7.0/10))
    return (23 + 7*d + 2*sqrt(1-62*d+pow(d,2.0)))/30;
  else
    return 1.0;
}

DOUBLE q1left(d)
DOUBLE d;
{
  if (d >= 7.0/3 && d <= 5.0)
    return (251 + 76*d - 56*sqrt(16+16*d+pow(d,2.0)))/27;
  else if (d >= 1.0/5 && d <= 3.0/7)
    return (-25 - 32*d + 8*sqrt(1+16*d+16*pow(d,2.0)))/27;
  else if (d >= -3 && d <= -1.0/3)
    return (-101 + 11*d - 14*sqrt(1-62*d+pow(d,2.0)))/270;
  else if (d >= 23.0/11 && d <= 7.0/3)
    return (-323 + 214*d - 35*pow(d,2.0))/(288 * (d-1));
  else
    return (-5+2*d)/9;
}

DOUBLE q2left(d)
DOUBLE d;
{
  if ((d >= 7.0/3 && d <= 57.0/20) || (d >= 51.0/14 && d <= 5.0))
    return (19 + 5*d - 4*sqrt(16+16*d+pow(d,2.0)))/3;
  else if (d >= 57.0/20 && d <= 51.0/14)
    return (-32-32*d-5*pow(d,2.0)+(8+4*d)*sqrt(16+16*d+pow(d,2.0)))/
	    (-4-2*d+sqrt(16+16*d+pow(d,2.0)));
  else
    return 0;
}

DOUBLE q3left(d)
DOUBLE d;
{
  if (d >= 7.0/3 && d <= 5.0)
    return (107 + 22*d - 20*sqrt(16+16*d+pow(d,2.0)))/27;
  else if (d >= 1.0/5 && d <= 3.0/7)
    return (17 + 16*d - 4*sqrt(1+16*d+16*pow(d,2.0)))/27;
  else if (d >= -3 && d <= -1.0/3)
    return (17 + d + 2*sqrt(1-62*d+pow(d,2.0)))/54;
  else if (d >= 5 && d <= 13)
    return (-323 + 214*d - 35*pow(d,2.0))/(288 * (d-1));
  else
    return (4-d)/9;
}

void QuadMedRefine(m1,m2,m3,fine1,fine2,fine3)
DOUBLE m1,m2,m3, *fine1,*fine2,*fine3;
{
  DOUBLE d;

  if (fabs(m2-m1) < EPS && fabs(m3-m2) < EPS){
    *fine1 = *fine2 = *fine3 = m1;
    return;
  }
  else if (fabs(m2-m1) < EPS){
    QuadMedRefine(-m3,-m2,-m1,fine3,fine2,fine1); /* reversal equivariance */
    *fine1 = -(*fine1); *fine2 = -(*fine2); *fine3 = -(*fine3);
    return;
  }
  else{ /* fabs(m2-m1) ~= 0 */
    d = (m3 - m2)/(m2-m1);
    *fine1 = m1 + (m2-m1) * q1(d);
    *fine2 = m1 + (m2-m1) * q2(d);
    if (fabs(d) > EPS)
      *fine3 = m1 + (m2-m1) * (1 + d -d * q1(1/d));
    else
      *fine3 = m1 + (m2-m1) * 10.0/9.0;
  }
}

void QuadMedRefineLeft(m1,m2,m3,fine1,fine2,fine3)
DOUBLE m1,m2,m3, *fine1,*fine2,*fine3;
{
  DOUBLE d;

  if (fabs(m2-m1) < EPS && fabs(m3-m2) < EPS){
    *fine1 = *fine2 = *fine3 = m1;
    return;
  }
  else if (fabs(m2-m1) < EPS){
    QuadMedRefine(-m3,-m2,-m1,fine3,fine2,fine1); /* reversal equivariance */
    *fine1 = -(*fine1); *fine2 = -(*fine2); *fine3 = -(*fine3);
    return;
  }
  else{ /* fabs(m2-m1) ~= 0 */
    d = (m3 - m2)/(m2-m1);
    *fine1 = m1 + (m2-m1) * q1left(d);
    *fine2 = m1 + (m2-m1) * q2left(d);
    *fine3 = m1 + (m2-m1) * q3left(d);
  }
}

/* Median-Interpolating Refinement of Sequence */
void mexFunction(nlhs, plhs, nrhs, prhs)
int nlhs, nrhs;
Matrix *plhs[], *prhs[];
{

  int i,d,m,n;
  DOUBLE *coarse, *interp;

  /* Check for proper number of arguments */
  if (nrhs != 2) {
    mexErrMsgTxt("MedRefineSeq requires two input arguments.");
  } else if (nlhs != 1) {
    mexErrMsgTxt("MedRefineSeq requires one output argument.");
  }

  d = mxGetPr(D)[0];

  m = mxGetM(COARSE);
  n = mxGetN(COARSE);
  if (n == 1) 
    n = m;

  coarse = mxGetPr(COARSE);
  FINE = mxCreateFull(1,3*n,REAL);
  interp = mxGetPr(FINE);

  if (d==0)
    for (i=0; i < n; i++){
      interp[3*i] = coarse[i];
      interp[3*i+1] = coarse[i];
      interp[3*i+2] = coarse[i];
    }
  else if (d==2){
    /* Left Boundary */
    QuadMedRefineLeft(coarse[0], coarse[1], coarse[2], 
		    &(interp[0]), &(interp[1]), &(interp[2]));
    /* Non-Boundary */
    for (i=1; i < n-1; i++)
      QuadMedRefine(coarse[i-1], coarse[i], coarse[i+1], 
		    &(interp[3*i]), &(interp[3*i+1]), &(interp[3*i+2]));
    /* Right Boundary: use reversal equivariance */
    QuadMedRefineLeft(-coarse[n-1], -coarse[n-2], -coarse[n-3],
		    &(interp[3*n-1]), &(interp[3*n-2]), &(interp[3*n-3]));
    interp[3*n-3] = -interp[3*n-3];
    interp[3*n-2] = -interp[3*n-2];
    interp[3*n-1] = -interp[3*n-1];
  }
}
