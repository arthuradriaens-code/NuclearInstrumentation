#include <numeric>
#include <iostream>
#include <fstream>
#include <cmath>
using namespace std;

double BetheBlock(double beta, int SpeciesDetector, int SpeciesDeeltje){
	double rho;
	double Zx;
	double Ax;
	double I;
	double Za = 1;
	//SpeciesDetector: 1=Si and 2=Ge
	//SpeciesDeeltje: 1=Deuterons, 2=Protons and 3=tritons
	if (SpeciesDetector==1) {Zx = 14;Ax=28.0855;I=173;rho=2.32;} //Ax in g/mol, I in eV and rho in g/cm³
	if (SpeciesDetector==2) {Zx = 32;Ax=72.59;I=350;rho=5.3;}
	I = I*pow(10,-6);    //I in MeV
	double S_m0 = 0.307; //MeV.cm².g^-1;
	double m_e = 0.511;  //in MeV (already times c²) 
	double S_m = S_m0*(Zx/Ax)*((Za/beta)*(Za/beta))*(log((2*m_e*beta*beta)/I)
			- log(1-beta*beta) - beta*beta);
	double S = rho*S_m;
	return S;
}
double convertEtobeta(double KineticEnergy,int SpeciesDeeltje){
	double mass;
	if (SpeciesDeeltje==1) {mass = 938.2723;} //proton mass in MeV
	if (SpeciesDeeltje==2) {mass = 1876.123;} //Deuterium mass in Mev
	if (SpeciesDeeltje==3) {mass = 2809.431;} //Tritium mass in MeV
	double gamma = KineticEnergy/mass + 1; //E_k = (gamma - 1)mc²
	double BetaSquared = 1 - pow((1.0/gamma),2);
	double beta = pow(BetaSquared,0.5);
	return beta;
}

void Euler(double InitKineticEnergy, int SpeciesDeeltje, double DeltaEDetectorThickness,double* DifferenceDeltaEOut,double* DifferenceEOut){
	double DifferenceDeltaE;
	double DifferenceE;
	double KineticEnergy = InitKineticEnergy;
	double beta;
	int step;
	double dx = 0.0000001; //in centimeter (0.1 micrometer)
	double EDetectorThickness = 1.1; //in cm
	int DeltaESteps = DeltaEDetectorThickness/dx;

	//Si
	bool broke = false;
	for (step=0;step<DeltaESteps;step++) {
		beta = convertEtobeta(KineticEnergy,SpeciesDeeltje);
		KineticEnergy -= BetheBlock(beta,1,SpeciesDeeltje)*dx;
		if (KineticEnergy < 0.1) {broke=true;break;} //break if particle energy too low

	}	
	if (broke || (InitKineticEnergy - KineticEnergy)<0) {DifferenceDeltaE = InitKineticEnergy;}
	else {DifferenceDeltaE = InitKineticEnergy - KineticEnergy;}
	*DifferenceDeltaEOut = DifferenceDeltaE;
	double EndEnergy = KineticEnergy;

	//Ge
	broke = false;
	int ESteps = EDetectorThickness/dx ;
	for (step=0;step<ESteps;step++) {
		if (KineticEnergy < 0.1) {broke=true;break;}
		beta = convertEtobeta(KineticEnergy,SpeciesDeeltje);
		KineticEnergy -= BetheBlock(beta,2,SpeciesDeeltje)*dx;

	}
	if (broke || (EndEnergy - KineticEnergy)<0) {DifferenceE = InitKineticEnergy - DifferenceDeltaE;}
	else {DifferenceE = EndEnergy - KineticEnergy;}
	*DifferenceEOut = DifferenceE;
}

int main(){
	//particles are only observed in the DeltaE-E detector system when they
	//generate a signal in both detectors: 'coincidence mode'
	
	//choose particle
	cout << "What particle do you want? The choises are:\n";
	cout << "1: proton\n";
	cout << "2: Deuterium\n";
	cout << "3: Tritium\n";
	cout << "please give a number (1-3): ";
	int ParticleSpecies;
	cin >> ParticleSpecies;
	//choose energy
	double KineticEnergy=66;
	//cout << "What Kinetic energy do you want the particle to have?: ";
	//cin >> KineticEnergy;
	cout << "\nCalculating...\n";	
	cout << "------------------------------------------\n";

	ofstream output;
	if (ParticleSpecies==1) {output.open("proton_loss.csv");}
	if (ParticleSpecies==2) {output.open("Deuteron_loss.csv");}
	if (ParticleSpecies==3) {output.open("Tritium_loss.csv");}
	output << "Delta Detector Width, Delta E Detector deposit,E Detector deposit,Outgoing Kinetic Energy\n";
	double DifferenceDeltaEOut,DifferenceEOut;
	double DeltaDetectorThickness = 0.0533; //
	int step;
	for (step;step<10;step++) {
		KineticEnergy += 0.1;
		Euler(KineticEnergy,ParticleSpecies,DeltaDetectorThickness,&DifferenceDeltaEOut,&DifferenceEOut);	
		cout << "Deposit of energy in the Delta E Detector:\n";
		cout << DifferenceDeltaEOut;
		cout << "\n";
		cout << "Deposit of energy in the E Detector:\n";
		cout << DifferenceEOut;
		cout << "\n";
		cout << "outgoing kinetic energy:";
		cout << "\n";
		cout << KineticEnergy - DifferenceDeltaEOut - DifferenceEOut;
		cout << "\n";
		cout << "------------------------------------------\n";
		output << KineticEnergy;
		output << ",";
		output << DifferenceDeltaEOut;
		output << ",";
		output << DifferenceEOut;
		output << ",";
		output << KineticEnergy - DifferenceDeltaEOut - DifferenceEOut;
		output << "\n";

	}
	output.close();
}
