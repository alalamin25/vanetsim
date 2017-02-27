  // cl -EHsc H:\Research\documents\CityModel\Graph\city.cpp
#include <stdio.h>
#include <conio.h>
#include <math.h>

void main(){
	float Na ;
	float Ns;
	float a={36;		//km , = 36000 meter
	float b=24;		//km, = 24000 meter
	float Sx= 0.2;	//km = 200 m
	float Sy= 0.2;	// km = 200m
	float K = 5;	// so radius = 200*5 /2 = 500 meter
	float m,n;

	float E_lx, E_ly, E_l;
	float E_Tx, E_Ty, E_T;
	float E_Cx, E_Cy, E_C;

	float Vx_max = 108;  // 108 km/h = 30 m/s
	float Vx_min = 18;	//   18 km/h  = 5 m/s
	float Vy_max = 120;
	float Vy_min = 18;

	float E_u = 4;
	float res;
	float t;

	Na = a/Sx +1;
	Ns = b/Sy +1;
//	Na = Ns = 190;

	printf("\n Na = %.1f ",Na);
	printf("\n Ns = %.1f ",Ns);

	m = ceil((2*Na-3)/(2*K-1));
	n = ceil((2*Ns-3)/(2*K-1));
	printf("\n m = %f ",m);
	printf("\n n = %f ",n);

	E_lx = a*(Na+1)/(3*Na);
	E_ly = b*(Ns+1)/(3*Ns);
	E_l = E_lx + E_ly;
	printf("\n E_lx = %f,  E_ly = %f,  E_l = %f", E_lx, E_ly, E_l);

	E_Tx = (E_lx * 3600*log(Vx_max/Vx_min))/(Vx_max - Vx_min); 	
	E_Ty = (E_ly *3600* log(Vy_max/Vy_min))/(Vy_max - Vy_min); 
	E_T = E_Tx + E_Ty;
	printf("\n E_Tx = %f,  E_Ty = %f,  E_T = %f", E_Tx, E_Ty, E_T);

	E_Cx = m*(m+1)*K*(6*Na-4*m*K+K+3)*1.0/(6*Na*Na);
	E_Cy = n*(n+1)*K*(6*Ns-4*n*K+K+3)*1.0/(6*Ns*Ns);
	E_C = E_Cx  + E_Cy;
	printf("\n\n E_Cx = %f,  E_Cy = %f,  E_C = %f", E_Cx, E_Cy, E_C);

	res = (E_T + 2*E_u)/E_C;
	printf("\n Residence time = %f\n", res);



}	