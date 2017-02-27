  // cl -EHsc H:\Research\documents\CityModel\Graph\Graph2\RWP_speed.cpp
#include <stdio.h>
#include <conio.h>
#include <math.h>

void main(){
	float a=36;		//km , = 36000 meter
	float b=24;		//km, = 24000 meter
	float Sx= 0.2;	//km = 200 m
	float Sy= 0.2;	// km = 200m
	float K = 5;	// so radius = 200*5 /2 = 500 meter
	float m,n,r;
	double arc1,arc2;

	double E_l, E_C, E_T;;

	float V_max;  
	float V_min = 18;

	float E_u = 2;
	double res;
	double t1,t2;
	FILE * fp;


	r = (K* Sx)/2;
	m = a/(2*r);
	n = b/(2*r);
	printf("\n m = %f ",m);
	printf("\n n = %f ",n);

	t1 = sqrt(a*a + b*b)/b ;
	arc1 = log(t1 + sqrt (t1*t1 -1) );     
    t2 = sqrt(a*a + b*b) /a ;
    arc2 = log(t2 + sqrt (t2*t2 -1) );
	
	E_l = (1.0/15)*(  (a*a*a)/(b*b)  + (b*b*b)/(a*a)  + sqrt(a*a+b*b)*(3- ((a*a)/(b*b)) - ((b*b)/(a*a)) ) );
	E_l = E_l + (1.0/6)*( (b*b/a)* arc1 + (a*a/b) * arc2 );
	printf("\n RWP E(l) = %lf", E_l);

	E_C = (1.0/3)* (m + n -1/m -1/n); 
	printf("\n E_C = %lf", E_C);

	fp = fopen("H:\\Research\\documents\\CityModel\\Graph\\graph2\\RWP_speedRes.txt","wt");
	if (fp == NULL){
		printf("\n Error");
		return;
	}

	int i;
	fprintf(fp,"Speed Residence times (RWP)");
	for(i = 10; i<=35;i+=5){
		V_max = i* 3.6;
	
		E_T = (E_l * 3600*log(V_max/V_min))/(V_max - V_min); 	
		printf("\n E_T = %lf", E_T);

		res = (E_T + E_u)/E_C;
		printf("\n Residence time = %lf\n", res);
		fprintf(fp,"\n %d  %f",i,res);
	}

}	