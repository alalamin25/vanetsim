  // cl -EHsc H:\Research\documents\CityModel\Graph\RWPs.cpp
#include <stdio.h>
#include <conio.h>
#include <math.h>

int main(){
	float a1[]={36,36,30,30,24,36};		//km , = 36000 meter
	float b1[]={36,30,30,24,24,24};		//km, = 24000 meter
	float a,b;
	float Sx= 0.2;	//km = 200 m
	float Sy= 0.2;	// km = 200m
	float K = 5;	// so radius = 200*5 /2 = 500 meter
	float m,n,r;
	double arc1,arc2;

	double E_l, E_C, E_T;;

	float V_max = 108;  // km/h
	float V_min = 18;

	float E_u = 2;
	double res;
	double t1,t2;
	int k;

	r = (K* Sx)/2;

for(k=0;k<6;k++){
	a = a1[k];
	b = b1[k];
	printf("\n a = %.0f, b = %.0f", a, b);
	m = a/(2*r);
	n = b/(2*r);
	printf("\n m = %.1f ",m);
	printf("   n = %.1f ",n);

	t1 = sqrt(a*a + b*b)/b ;
	arc1 = log(t1 + sqrt (t1*t1 -1) );
    t2 = sqrt(a*a + b*b) /a ;
    arc2 = log(t2 + sqrt (t2*t2 -1) );

	E_l = (1.0/15)*(  (a*a*a)/(b*b)  + (b*b*b)/(a*a)  + sqrt(a*a+b*b)*(3- ((a*a)/(b*b)) - ((b*b)/(a*a)) ) );
	E_l = E_l + (1.0/6)*( (b*b/a)* arc1 + (a*a/b) * arc2 );
	printf("\n RWP E(l) = %.3lf", E_l);

	E_T = (E_l * 3600*log(V_max/V_min))/(V_max - V_min);
	printf("\n E_T = %.3lf", E_T);

	E_C = (1.0/3)* (m + n -1/m -1/n);
	printf("\n E_C = %.3lf", E_C);

	res = (E_T + E_u)/E_C;
	printf("\n Residence time = %.3lf", res);
	printf("\n--------------------------------------------------");

}

}
