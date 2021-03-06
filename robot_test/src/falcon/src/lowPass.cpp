/**
***********************************************************************************************
*******					low pass filter 				*******	
***********************************************************************************************			
***********************************************************************************************
*		Discrete time low pass filter
*		Time constant	: tf
*		Sampling time	: ts
*		X(k)		: xk
*		X(k+1)		: xk1
***********************************************************************************************
*/




// %Tag(FULLTEXT)%
#include "lowPass.h"


//==========================================================================================================================
//			Low Pass Filter function
//==========================================================================================================================
double lowPass_filter1(double  xk, double  xk1, double  tf, double  ts )
{
	double  a = tf / (tf + ts); 
	double  yk;

	yk = a * xk + (1 - a) * xk1;
	return(yk);
}

double lowPass_filter2(double  xk, double  xk1, double  a )
{
	double  yk;

	yk = a * xk + (1 - a) * xk1;
	return(yk);
}


