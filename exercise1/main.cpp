#include <numeric>
#include <iostream>
#include <cmath>
using namespace std;

double BetheBlock(double beta, int SpeciesDetector, int SpeciesDeeltje){
	double Zx;
	double Ax;
	double I;
	double Za;
	//SpeciesDetector: 1=Si and 2=Ge
	//SpeciesDeeltje: 1=Deuterons, 2=Protons and 3=tritons
	if (SpeciesDetector==1) {Zx = 14;Ax=28.0855;I=173;} //Ax in g/mol and I in eV
	if (SpeciesDetector==2) {Zx = 32;Ax=72.59;I=350;}
	if (SpeciesDeeltje==1 || SpeciesDeeltje==2 || SpeciesDeeltje==3) {Za = 1;}
	I = I*pow(10,-6);    //I in MeV
	double S_m0 = 0.307; //MeV.cm².g^-1;
	double m_e = 0.511;  //in MeV (already times c²) 
	double S_m = S_m0*(Zx/Ax)*((Za/beta)*(Za/beta))*(log((2*m_e*beta*beta)/I)
			- log(1-beta*beta) - beta*beta);
	return S_m;
}

double convertEtobeta(double KineticEnergy,int SpeciesDeeltje){
	double mass;
	if (SpeciesDeeltje==1) {mass = 938.2723;} //proton mass in MeV
	if (SpeciesDeeltje==2) {mass = 1876.123;} //Deuterium mass in Mev
	if (SpeciesDeeltje==3) {mass = 2809.431;} //Tritium mass in MeV
	double gamma = KineticEnergy/mass + 1; //E_k = (gamma - 1)mc²
	double BetaSquared = 1 - pow((1/gamma),2);
	double beta = pow(BetaSquared,0.5);
	return beta;
}

double Euler(double KineticEnergy, int SpeciesDeeltje, double DeltaEDetectorThickness)


int main(){
	cout << "hey mom";
	//particles are only observed in the DeltaE-E detector system when they
	//generate a signal in both detectors: 'coincidence mode'
	
}
