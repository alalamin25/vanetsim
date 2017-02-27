  // cl -EHsc G:\Research\documents\SINEMO\Graph\sinemo.cpp 
#include <stdio.h>
#include <conio.h>
#include <math.h>

void main(){
	FILE * fp;
	int Nmh;
	int Nmr=2;
	int Ncn =1;

	int l_rl=35, l_mc=35;

	float Tmh, Tmr;
		
	float cost_LU_MH, cost_LU_MR, cost_LU;
	float theta = 10, delta_LU = 0.2, delta_BU = 0.2;
	float gamma_l = 30, gamma_h = 30, gamma_r = 45;

	float cost_BU_MH, cost_BU_MR, cost_BU;
	
	float cost_Lookup;
	float omega = 0.5;
	float si = 0.3;
	float lambda = 0.01;
	int S = 10;
	float Totalcost;

	
	int i,j;

	//Tmh = Tmr = 60;
	fp = fopen("G:\\Research\\documents\\SINEMO\\Graph\\graph1\\sin_MH_cost.txt","wt");
	if (fp == NULL){
		printf("\n Error");
		return;
	}

	for (i=20;i<=120;i+=20){
		Nmh = i;
		fprintf(fp, "\n%d  ",Nmh);
		for (j = 60;j<=120;j+=30){
			Tmh = Tmr = j;
			cost_LU_MH = (Nmh * (2*theta *delta_LU + gamma_l))/Tmh;
			cost_LU_MR = (Nmr * ((2*l_rl -1 + theta)*delta_LU  + gamma_l)  + (Nmh * gamma_l) )/Tmr ;
			cost_LU = cost_LU_MH +cost_LU_MR;
			printf("\n  cost_LU_MH  = %f,  cost_LU_MR = %f, cost_LU = %f ",cost_LU_MH,cost_LU_MR, cost_LU);
			

			cost_BU_MH = (Nmh * Ncn *  2* (l_mc -2+2*theta)*delta_BU  ) /Tmh;
			cost_BU_MR = ( (Nmh * Ncn) *  (2* (l_mc -2+theta)*delta_BU - 2 ) ) /Tmr;
			cost_BU = cost_BU_MH+ cost_BU_MR ;
			printf("\n  cost_BU_MH  = %f,  cost_BU_MR = %f, cost_BU = %f ",cost_BU_MH,cost_BU_MR, cost_BU);

			cost_Lookup = (omega* Nmh * Nmh * Ncn * si *lambda )/ S;
			printf("\n  cost_Lookup = %f", cost_Lookup);

			Totalcost = cost_BU+cost_LU+cost_Lookup;
			
			printf("\n  Totalcost = %f", Totalcost);
			fprintf(fp,"%.2f  ",Totalcost);
		}	
		
	}
}	