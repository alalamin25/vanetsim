  // cl -EHsc H:\Research\documents\SINEMO\Graph\bsp.cpp 
#include <stdio.h>
#include <conio.h>
#include <math.h>

void main(){
	FILE * fp; 
	int Nmh;
	int Nmr=2;
	int Ncn =1;

	int l_mr=35, l_mh=35;


	float Tmh, Tmr;
		
	float cost_LU1, cost_LU2, cost_LU;
	float theta = 10, delta_LU = 0.2, delta_BU = 0.2;
	float gamma_h = 30, gamma_r = 45;
	
	float cost_Lookup;
	float omega = 0.5;
	float si = 0.3;
	float lambda = 0.01;
	int S = 10;

	float tau = 0.5;
	float Totalcost;
	float F = 10*1024;
	float P = 576;
	int i,j;

//	Tmh = Tmr = 60;
	fp = fopen("H:\\Research\\documents\\SINEMO\\Graph\\bsp_MH_cost.txt","wt");
	if (fp == NULL){
		printf("\n Error");
		return;
	}

	for (i=20;i<=120;i+=20){
		Nmh = i;
		fprintf(fp, "\n%d  ",Nmh);
		for (j = 60;j<=120;j+=30){
			Tmh = Tmr = j;
			cost_LU1= (Nmh * (2*(l_mh -2+ 2* theta)*delta_LU + gamma_h) ) /Tmh;
			cost_LU2=    ( Nmr * ( (2*l_mr -1 + theta)*delta_LU  + gamma_r) )/Tmr ;
			cost_LU = cost_LU1 + cost_LU2;
			printf("\n  cost_LU1  = %f,  cost_LU2 = %f, cost_LU = %f ",cost_LU1,cost_LU2, cost_LU);
			
			cost_Lookup = (Nmh * Ncn * lambda *F*  (si*Nmh + tau) )/ P;
			printf("\n  cost_Lookup = %f", cost_Lookup);

			Totalcost = cost_LU+cost_Lookup;
			
			printf("\n  Totalcost = %f", Totalcost);
			fprintf(fp,"%.2f  ",Totalcost);

		}
	}
}	