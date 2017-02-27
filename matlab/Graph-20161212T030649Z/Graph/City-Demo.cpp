  // cl -EHsc H:\Research\documents\CityModel_JNL\Graph\City-Demo.cpp 
#include <stdio.h>
#include <conio.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>

void main(){
	FILE * fp; 
	int Na = 151, Ns = 151, Vp = 15;
	int a = 36000, b = 36000;
	int r = 600;
	int K = 5, Sx = 240, Sy = 240;

	int tau = 5;
	float phi = 0.4, chi = 0.1;

	int i;
	float x1,x2,y1,y2,x,y;
	
	float tx1,ty1,txroad;
	float E_Tx, E_Ty, E_T, T = 0, E_L, L = 0;
	float Cx, Cy,E_C,  C = 0;
	float m=42,n=42, Test;

int count = 10000;


	 /* initialize random seed: */
  srand ( time(NULL) );

	fp = fopen("H:\\Research\\documents\\CityModel_JNL\\Graph\\result.txt","at");
	if (fp == NULL){
		printf("\n Error while opening the output file");
		return;
	}

		x1 = rand() % Na;
		y1 = rand() % Ns;
//		printf ("\n x1 = %4.0f,     y1 = %4.0f", x1,y1);
		

	for (i=0; i<= count; i++){

	    x2 = rand() % Na;
		y2 = rand() % Ns;
		printf ("\n x2 = %3.0f,     y2 = %3.0f", x2,y2);
		
        x = abs(x1 - x2);
		y = abs(y1 - y2);
		printf (" x = %3.0f, y = %3.0f", x,y);

E_L =  (x + y) *Sx;
L = L + E_L;

Cx = ceil( x * Sx / (a/m) ) ;
Cy = ceil( y * Sy / (a/m) ) ;
E_C =  (Cx + Cy) ;
C = C + E_C;


//printf("\n Cx = %5.1f, Cy = %5.1f, C = %5.1f", Cx, Cy, E_C);


		tx1 = x * tau * phi;
		ty1 = y * tau * phi;
		txroad = tx1 + ty1;

//		printf (" tx = %3.2f", txroad);

		E_Tx = 4* chi * Sx / Vp + x * Sx * (1 + 2 * phi * chi ) / Vp;
		E_Ty = 4* chi * Sy / Vp + y * Sy * (1 + 2 * phi * chi ) / Vp;

		E_T = E_Tx + E_Ty + txroad;

//		printf("\n E_Tx = %5.2f, E_Ty = %5.2f, txraod = %5.2f,",  E_Tx , E_Ty , txroad);
//		printf(" E(T) = %5.2f\n\n", E_T);
			
T = T + E_T;
 x1 = x2;
 y1 = y2;
	
	}
//	printf("\n Total length L = %6.2f  in %d epochs \n Expected epoch length  = %7.2f",L, count, L/count);
//	printf("\n Total time T = %6.2f  in %d epochs \n Expected epoch time  = %7.2f",T, count, T/count);
fprintf(fp,"\n%7.2f\t%7.2f\t%7.2f\t%7.2f", L/count,T/count, C/count, T/C);

fclose(fp);

float l = (2 - sqrt(2.0) )* r;
m =  ( sqrt(2.0)*a - 2*r* (sqrt(2.0) -1) )   / (2*r)  ;
// printf("\n l = %.2f,  m = %3.2f",l, m);
//Test = m*(m+1)*(K-1) * (6*Na - 4*m*K +K ) / (6*Na*Na);
Test = (L/count) / (a/m);
printf("\n E(C) = %3.2f", Test);

}	