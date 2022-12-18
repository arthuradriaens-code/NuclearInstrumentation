#include <numeric>
#include <iostream>
#include <fstream>
#include <cmath>
using namespace std;

double BetheBlock(double beta, int SpeciesDetector, int SpeciesDeeltje){
}
double convertEtobeta(double KineticEnergy,int SpeciesDeeltje){
}
void Euler(double InitKineticEnergy, int SpeciesDeeltje, double DeltaEDetectorThickness,double* DifferenceDeltaEOut,double* DifferenceEOut){
	for (step=0;step<ESteps;step++) {
		if (KineticEnergy < 0.1) {broke=true;break;}
		beta = convertEtobeta(KineticEnergy,SpeciesDeeltje);
		KineticEnergy -= BetheBlock(beta,2,SpeciesDeeltje)*dx;

	}
}
int main(){
	ofstream output;
	if (ParticleSpecies==1) {output.open("proton_loss.csv");}
	if (ParticleSpecies==2) {output.open("Deuteron_loss.csv");}
	if (ParticleSpecies==3) {output.open("Tritium_loss.csv");}
	output << "Delta Detector Width, Delta E Detector deposit,E Detector deposit,Outgoing Kinetic Energy\n";
	double DifferenceDeltaEOut,DifferenceEOut;
	double DeltaDetectorThickness = 0.0533; //
	int step;
	for (step;step<330;step++) {
		KineticEnergy += 0.2;
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
