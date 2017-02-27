  // cl -EHsc H:\Research\documents\CityModel\Graph\Graph2\bsp2.cpp 
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
	int i,j,k;
	//float a[]={109.777, 87.017, 73.218, 63.765, 56.802, 51.417}; // residence times for 10,15,.. 35 m/s (RWP)
	float a[]={135.595 ,107.497 , 90.461, 78.792, 70.195, 63.55}; // residence times for 10,15,.. 35 m/s (city)

//	Tmh = Tmr = 60;
	fp = fopen("H:\\Research\\documents\\CityModel\\Graph\\graph2\\bsp_speed_cost.txt","wt");
	if (fp == NULL){
		printf("\n Error");
		return;
	}

	for (i=0,j=10;i<=5;i++,j+=5){
		//Nmh = i;
		Tmh = Tmr = a[i];
		fprintf(fp, "\n%d  ",j);
		printf("\nSpeed = %d m/s, Residence time = %f",j,Tmr);
		for (k = 20;k<=60;k+=20){
			Nmh = k;
			cost_LU1= (Nmh * (2*(l_mh -2+ 2* theta)*delta_LU + gamma_h) ) /Tmh;
			cost_LU2=    ( Nmr *  (2*(l_mr -1 + theta)*delta_LU  + gamma_r) )/Tmr ;
			cost_LU = cost_LU1 + cost_LU2;
			//printf("\n  cost_LU1  = %f,  cost_LU2 = %f, cost_LU = %f ",cost_LU1,cost_LU2, cost_LU);
			
			cost_Lookup = (Nmh * Ncn * lambda *F*  (si*Nmh + tau) )/ P;
			//printf("\n  cost_Lookup = %f", cost_Lookup);

			Totalcost = cost_LU+cost_Lookup;
		
			printf("\n  Totalcost = %f", Totalcost);
			fprintf(fp,"%.2f  ",cost_LU);

		}
	}
}	