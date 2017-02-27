// cl -EHsc H:\Research\documents\SINEMO\Graph\test.c 
#include <stdio.h>
#include <conio.h>
#include <math.h>

void main(){
	int Na ;
	int Ns;
	float a=1200;
	float b=800;
	float Sx= 20;
	float Sy= 20;
	int K1 = 5;
	int K2 = 5;
	int m,n;

	float E_lx, E_ly, E_l;
	float E_Tx, E_Ty, E_T;
	float E_Cx, E_Cy, E_C;

	float Vx_max = 80;
	float Vx_min = 5;
	float Vy_max = 60;
	float Vy_min = 5;

	float E_u = 0.4;
	float res;

	Na = a/Sx +1;
	Ns = b/Sy +1;
	printf("\n Na = %d ",Na);
	printf("\n Ns = %d ",Ns);

	m = (Na-1)/K1;
	n = (Ns-1)/K2;
	printf("\n m = %d ",m);
	printf("\n n = %d ",n);

	E_lx = a*(Na+1)/(3*Na);
	E_ly = b*(Ns+1)/(3*Ns);
	E_l = E_lx + E_ly;
	printf("\n E_lx = %f,  E_ly = %f,  E_l = %f", E_lx, E_ly, E_l);

	E_Tx = (E_lx * log(Vx_max/Vx_min))/(Vx_max - Vx_min); 	
	E_Ty = (E_ly * log(Vy_max/Vy_min))/(Vy_max - Vy_min); 
	E_T = E_Tx + E_Ty;
	printf("\n E_Tx = %f,  E_Ty = %f,  E_T = %f", E_Tx, E_Ty, E_T);

	E_Cx = m*(m-1)*K1*(6*Na-4*m*K1-K1+3)*1.0/(6*Na*Na);
	E_Cy = n*(n-1)*K2*(6*Ns-4*n*K2-K2+3)*1.0/(6*Ns*Ns);
	E_C = E_Cx  + E_Cy;
	printf("\n\n E_Cx = %f,  E_Cy = %f,  E_C = %f", E_Cx, E_Cy, E_C);

	res = (E_T + 2*E_u)/E_C;
	printf("\n Residence time = %f\n", res);

}	