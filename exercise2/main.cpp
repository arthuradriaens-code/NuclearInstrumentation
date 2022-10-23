#include <numeric>
#include <random>
#include <cmath>
#include <iostream>
#include <fstream>
using namespace std;

double RandomNumberGenerator(double start, double end) {
	random_device dev;
	mt19937 rng(dev());
	uniform_real_distribution<double> dist(start,end); // distribution in range [0, 1]
	double RandomNumber;
	RandomNumber = dist(rng);
	return RandomNumber;
}
void GenerateDirection(double* x, double* y, double*z ){
	double phi = RandomNumberGenerator(0,2*M_PI);
	double theta = acos(1-2*RandomNumberGenerator(0,1));
	*x = sin(theta) * cos(phi);
        *y = sin(theta) * sin(phi);
        *z = cos(theta);
}
void GenerateOrigin(double* x, double* y, double*z ){
	double v1 = RandomNumberGenerator(-1,1);
	double v2 = RandomNumberGenerator(0,1);
	double rsquared = v1*v1 + v2*v2;
	while (rsquared > 1) {v1 = RandomNumberGenerator(-1,1);
		v2 = RandomNumberGenerator(0,1);
		rsquared = v1*v1 + v2*v2;}
	double r = pow(rsquared,0.5)*40;
	*x = r*(v1*v1-v2*v2)/rsquared;
	*y = r*2*(v1*v2)/rsquared;
        *z = 0;
}
bool CheckHit(double x,double y) {
	//double r = pow((x*x + y*y),0.5);
	//return r < 60;	
	return ((abs(x) < 31.8198) && (abs(y) < 31.8198));
}
int main(){
	double x_dir;
	double y_dir;
	double z_dir;
	double x_pos=0;
	double y_pos=0;
	double z_pos=0;
	int hits = 0;
	int misses = 0;
	double x_land;
	double y_land;

	ofstream outputhit;
	ofstream outputmiss;
	outputhit.open("hit");
	outputmiss.open("miss");

	for (int i;i<1000000;i++) {
		GenerateOrigin(&x_pos,&y_pos,&z_pos);
		GenerateDirection(&x_dir,&y_dir,&z_dir);
		if (z_dir > 0.1){
			double ScaleFactor = 70/z_dir;
			x_dir = ScaleFactor*x_dir;
			y_dir = ScaleFactor*y_dir;
			x_land = x_dir + x_pos;
			y_land = y_dir + y_pos;
			bool HasHit = CheckHit(x_land,y_land);
			if (HasHit) {
				hits += 1;
				outputhit << x_land;
				outputhit << "	";
				outputhit << y_land;
				outputhit << "	";
				outputhit << "\n";

			}
			else {
				misses+=1;
				outputmiss << x_land;
				outputmiss << "	";
				outputmiss << y_land;
				outputmiss << "	";
				outputmiss << "\n";

			}
		}
		else {misses += 1;}
	}
	cout << hits;
	cout << " hits\nand\n";
	cout << misses;
	cout << " misses\n";
	outputhit.close();
	outputmiss.close();
}
