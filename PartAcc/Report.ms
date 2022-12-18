.nr myeqn 0 1
.TL
Nuclear instrumentation:
Particle Accelerators
.AU 
Arthur Adriaens
.AI
Ghent University
.NH
Exercise 1: Tumor irradiation
.NH 2
Triple focusing distance
.EQ
delim $$
.EN
.PP
The momentum $p sub 0$ is given by:
.EQ
p sub 0 c = sqrt{ {E sub k} sup 2 + 2 m sub 0 c sup 2 E sub k  } = 20.5046 MeV approx 3.2852 times 10 sup {-12} J
.EN
We have that
.EQ
	B sub 0 rho sub 0 = {p sub 0} over { q } 
.EN
i.e
.EQ
	B sub 0 = {p sub 0 } over { q rho sub 0 } 
.EN
.sp -1
.tl ' ' '\n+[myeqn]'
If we define the particle vectors as
.EQ
fat X (s) = 
left [
matrix {
ccol {
x(s) above x'(s) above y(s) above y'(s) above {delta sub 1 (s)} above delta
}
}
right ]
.EN
Then the transfer matrix method describes
.EQ
fat X (s) = M (s) fat X (0)
.EN
.sp -1
.tl ' ' '\n+[myeqn]'
We can decouple the transfer matrix into 2 matrices:
.EQ
M sub H = 
left [
matrix {
ccol {
{m sub {11}} above {m sub {21} } above 0
}
ccol {
{m sub {12}} above {m sub {22} } above 0
}
ccol {
{m sub {16}} above {m sub {26} } above 1
}
}
right ]
M sub V = 
left [
matrix {
ccol {{m sub {33}} above {m sub {43} }}
ccol {{m sub {43}} above {m sub {44} }}
}
right ]
.EN
I.e if we want to solve an analogous system as equation \n[myeqn] it'll be for a split-up version of the particle vectors:
.EQ
fat X sub H (s) = 
left [
matrix {
ccol {
x(s) above x'(s) above delta
}
}
right ]
fat X sub V (s) = 
left [
matrix {
ccol {
y(s) above y'(s)
}
}
right ]
.EN
Of course in a magnet the momentum doesn't change so $ delta $
is independent of the path.
For field-free region (drift space) we have the transfer matrices
.EQ
M sub H = 
left [
matrix {
ccol {
1 above 0 above 0
}
ccol {
L above 1 above 0
}
ccol {
0 above 0 above 1
}
}
right ]
M sub V = 
left [
matrix {
ccol { 1 above 0 }
ccol { L above 1  }
}
right ]
.EN
For the dipole magnet we have the transfer matrices:
.EQ
M sub H = 
left [
matrix {
ccol {
{ cos alpha } above { { - sin alpha } over {rho sub 0}} above 0
}
ccol {
{ rho sub 0 sin alpha } above { cos alpha } above 0
}
ccol {
{rho sub 0 (1 - cos alpha ) } above {sin alpha} above 1
}
}
right ]

M sub V = 
left [
matrix {
ccol { 1 above 0 }
ccol { {rho sub 0 alpha} above 1  }
}
right ]
.EN
It's given that the entrance to the magnet and exit are rotated, implying the transfer matrices
.EQ
M sub H = 
left [
matrix {
ccol {
1 above {tan  beta } over {rho sub 0} above 0
}
ccol {
0 above 1 above 0
}
ccol {
0 above 0 above 1
}
}
right ]
M sub V = 
left [
matrix {
ccol { 1 above - { {tan  beta } over { rho sub 0 }  } }
ccol { 0 above 1}
}
right ]
.EN
For the entrance it's a rotation of 45 degrees and for the exit a
rotation of 32.4 degrees $:= beta sub 2 $, $alpha$ is also given to be 270 degrees.
In full, the equations of motion are found by solving:
.EQ
left [
matrix {
ccol {
x(s) above x'(s) above delta
}
}
right ]
=
left [
matrix {
ccol {
1 above 0 above 0
}
ccol {
L above 1 above 0
}
ccol {
0 above 0 above 1
}
}
right ]

cdot
left [
matrix {
ccol {
1 above {tan  beta sub 2 } over {rho sub 0} above 0
}
ccol {
0 above 1 above 0
}
ccol {
0 above 0 above 1
}
}
right ]

cdot
left [
matrix {
ccol {
{0} above { {1} over {rho sub 0}} above 0
}
ccol {
{- rho sub 0} above {0} above 0
}
ccol {
{rho sub 0} above {-1} above 1
}
}
right ]

cdot
left [
matrix {
ccol {
1 above {1} over {rho sub 0} above 0
}
ccol {
0 above 1 above 0
}
ccol {
0 above 0 above 1
}
}
right ]

cdot
left [
matrix {
ccol {
x(0) above x'(0) above delta
}
}
right ]
.EN
And
.EQ
left [
matrix {
ccol {
y(s) above y'(s)
}
}
right ]
=
left [
matrix {
ccol { 1 above 0 }
ccol { L above 1  }
}
right ]

cdot
left [
matrix {
ccol { 1 above - { {tan  beta sub 2 } over { rho sub 0 }  } }
ccol { 0 above 1}
}
right ]

cdot
left [
matrix {
ccol { 1 above 0 }
ccol { {{3 rho sub 0 pi} over 2 } above 1  }
}
right ]

cdot
left [
matrix {
ccol { 1 above - { {1 } over { rho sub 0 }  } }
ccol { 0 above 1}
}
right ]

cdot
left [
matrix {
ccol {
y(0) above y'(0)
}
}
right ]
.EN
.PP
As, from right to left, we have the initial coordinates,
then the 45 degree transfer matrix, then the dipole, then
the 32.4 degree exit and then the free streaming for a
distance L.
Working this out, we get that the transfer matrices are:
.EQ
fat M sub H = 
left [
matrix {
ccol {
{- left ( L over {rho sub 0}  ( tan beta sub 2 - 1 ) + 1 right )} above  { 1 - tan beta sub 2 } over {rho sub 0} above 0
}
ccol {
{- left ( rho sub 0 + L tan beta sub 2 right )} above { - tan beta sub 2 } above  0
}
ccol {
{rho sub 0 + L tan beta sub 2 - L} above { tan beta sub 2 - 1 } above 1
}
}
right ]
.EN
and
.EQ
fat M sub V = 
left [
matrix {
ccol{
{ (1 - {3 pi } over 2 ) ( 1 - {L tan beta sub 2 } over {rho sub 0} ) - L over {rho sub 0 }} above {-{tan beta sub 2 } over {rho sub 0} left ( 1 - {3 pi } over 2 + 1 over { tan beta sub 2 } right ) }
}
ccol{
{L left ( 1 - {3 pi } over 2 tan beta sub 2 right ) + {3 pi } over 2 rho sub 0}
above
1 - {3 pi} over 2 tan beta sub 2
}
}
right ]
.EN
As we wish the beam to be 'triple focussing' we have three
conditions:
.IP \[bu]
parrallel-to-point focussing in both horizontal and 
vertical directions.
.PP
This implies $m sub 11 = 0$
.EQ
{- left ( L over {rho sub 0}  ( tan beta sub 2 - 1 ) + 1
right )} = 0 -> L over {rho sub 0} = 1 over { 1 - tan beta sub 2 } approx 2.737
.EN
.PP
and $m sub 33 = 0$:
.EQ
{ (1 - {3 pi } over 2 ) ( 1 - {L tan beta sub 2 } over {rho sub 0} ) - L over {rho sub 0 }} = 0 -> L over {rho sub 0} approx 2.738
.EN
.PP
i.e $L over {rho sub 0} approx 2.74$
.IP \[bu]
non-dispersive $->$ $m sub 16 = 0$:
.EQ
rho sub 0 + L tan beta sub 2 - L = 0 -> L over {rho sub 0} = 1 over { 1 - tan beta sub 2 } approx 2.737
.EN
.NH 2
Number of coil windings
.PP
Supposing that the magnet has a gap between the pole shoes
of 3cm, current of 40 A and L=50 cm. The number of coil
windings is easy to estimate from 
.EQ
NI approx B over { mu sub 0 } g 
.EN
With g the gap length and $ mu sub 0 = 4 pi 10 sup { - 7 }
$ Tm/A, i.e
.EQ
N = 0.03 over { 160 pi 10 sup { - 7 } } B
.EN
.sp -1
.tl ' ' '\n+[myeqn]'
First we calculate $rho sub 0$ from the previously found relation:
.EQ
L over {rho sub 0} approx 2.74 -> rho sub 0 approx L over 2.74 approx 18.3cm
.EN 
Now looking back at equation 1 and filling in $rho sub 0$ we get that we have a magnetic field of 
.EQ
B sub 0 approx {3.2852 times 10 sup {-12}} over 
{2.9979 times 10 sup 8 times 0.183 times 1.602176 times 10 sup -19} T approx 0.37 T
.EN
and filling this into equation \n[myeqn]  gives 223 windings.
.NH 
Exercise 2
.NH 2
Transfer matrix
.PP
The equations of motion are:
.EQ
left [
matrix {
ccol {
x(s) above x'(s)
}
}
right ]
=
left [
matrix 
{
ccol {1 above 0}
ccol {2L above 1}
}
right ]
cdot
left [
matrix 
{
ccol {1 above {1 over f}}
ccol {0 above 1}
}
right ]
cdot
left [
matrix
{
ccol {1 above 0}
ccol {L above 1}
}
right ]
cdot
left [
matrix
{
ccol {1 above {- 1 over f}}
ccol {0 above 1}
}
right ]
cdot
left [
matrix {
ccol {
x(0) above x'(0)
}
}
right ]
.EN
.PP
i.e the transfer matrix is given by:
.EQ
left [
matrix 
{
ccol {1 above 0}
ccol {2L above 1}
}
right ]
cdot
left [
matrix 
{
ccol {1 above {1 over f}}
ccol {0 above 1}
}
right ]
cdot
left [
matrix
{
ccol {1 above 0}
ccol {L above 1}
}
right ]
cdot
left [
matrix
{
ccol {1 above {- 1 over f}}
ccol {0 above 1}
}
right ]
.EN
.PP
i.e
.EQ
M = 
left [
matrix 
{
ccol {
{1 - L over f - 2 {L sup 2} over {f sup 2}}
above
{- L over {f sup 2}}
}
ccol {
{L + 2 L over f + 2 L}
above
{L over f + 1}
}
}
right ]
.EN
.NH 2
Stable orbit condition
.PP
Now if we would make a ring from this, we wish that $infinite$ 
iterations would keep x bound. As explained in appendix A this
system is stable if 
.EQ
-1 <= 1 over 2 trace( M ) <= 1
.EN
.PP
i.e
.EQ
-1 <= 1 over 2 ( 2 - 2 {L sup 2} over {f sup 2}   ) <= 1
.EN
.EQ
-1 <= ( 1 -  {L sup 2} over {f sup 2}   ) <= 1
.EN
.EQ
-f sup 2 <= ( f sup 2 -  {L sup 2}  ) <= f sup 2
.EN
.EQ
-2 f sup 2 <= ( 1 -  {L sup 2}  ) <= 0
.EN
.EQ
2 f sup 2 >= ( {L sup 2} -1 ) >= 0
.EN
.NH 2
Vertical plane
.PP
So we have our focussing condition, as it's given that the lenses
focus in the horizontal plane but not in the vertical plane, the
vertical motion will not be stable.
.NH
Exercise 3
.NH 2
Transfer matrix for one rectangular matrix
.PP
The transfer matrix for one rectangular matrix is given by:
.EQ
M sub H = 
left [
matrix {
ccol {
{ cos alpha } above { { - sin alpha } over {rho sub 0}} above 0
}
ccol {
{ rho sub 0 sin alpha } above { cos alpha } above 0
}
ccol {
{rho sub 0 (1 - cos alpha ) } above {sin alpha} above 1
}
}
right ]

M sub V = 
left [
matrix {
ccol { 1 above 0 }
ccol { {rho sub 0 alpha} above 1  }
}
right ]
.EN
.NH 2
Show that the full system is achromatic
.PP
The full system can be calculated by first considering
the first magnet and half a distance L traveled:
.EQ
left [
matrix {
ccol {
1 above 0 above 0
}
ccol {
L/2 above 1 above 0
}
ccol {
0 above 0 above 1
}
}
right ]
cdot
left [
matrix {
ccol {
1 above {tan  alpha } over {rho sub 0} above 0
}
ccol {
0 above 1 above 0
}
ccol {
0 above 0 above 1
}
}
right ]
cdot
left [
matrix {
ccol {
{ cos alpha } above { { - sin alpha } over {rho sub 0}} above 0
}
ccol {
{ rho sub 0 sin alpha } above { cos alpha } above 0
}
ccol {
{rho sub 0 (1 - cos alpha ) } above {sin alpha} above 1
}
}
right ]
.EN
.EQ
left [
matrix {
ccol { 1 above 0 }
ccol { L/2 above 1  }
}
right ]
cdot
left [
matrix {
ccol { 1 above - { {tan  alpha } over { rho sub 0 }  } }
ccol { 0 above 1}
}
right ]
cdot
left [
matrix {
ccol { 1 above 0 }
ccol { {rho sub 0 alpha} above 1  }
}
right ]
.EN
.PP
i.e first the rotation, then an exit at an angle $alpha$,
then free travel for $L/2$. working these out we get:
.EQ
left [
matrix {
ccol {
{cos alpha } above 0 above 0
}
ccol {
{rho sub 0 sin alpha + L over { 2 cos alpha } } 
above
{1 over {cos alpha }} 
above 
0
}
ccol {
{rho sub 0 (1 - cos alpha ) + L over 2 tan alpha}
above
{ tan alpha }
above
1
}
}
right ]
.EN
and
.EQ
left [
matrix {
ccol 
{
{ 1 - L over {2 rho sub 0} tan alpha }
above
{ - {tan alpha } over {rho sub 0} }
}
ccol 
{
{rho sub 0 alpha + L over 2 ( 1  - alpha tan alpha ) }
above
{ 1 - alpha tan alpha }
}
}
right ]
.EN
We'll now continue for the horizontal part only as that's
the only relevant part.  
Now if the system is mirror antisymmetric (which is the
case here), if the first part (above mentioned part) is
given by 
.EQ
left [
matrix
{
ccol
{
a above c above 0
}
ccol
{
b above d above 0
}
ccol
{
m above n above 1
}
}
right ]
.EN
The full system is given by
.EQ
left [
matrix
{
ccol
{
{ad+bc} above 2ac above 0
}
ccol
{
2bd above {ad+bc} above 0
}
ccol
{
2md above 2mc above 1
}
}
right ]
.EN
So doing this calculation gives the transfer matrix from 1
to the exit of 2:
.EQ
left [
matrix
{
ccol
{
1 above 0 above 0
}
ccol
{
{ 2 rho sub 0 tan alpha + L over { cos sup 2 alpha } }
above 1 above 0
}
ccol
{
{2 {rho sub 0} over { cos alpha } ( 1 - cos alpha ) + L {sin alpha} over { cos sup 2 alpha } }
above 0 above 1
}
}
right ]
.EN
Now we have a symmetric system (1 to 2 is mirror symmetric with 3 to 4) so we'll use:
.EQ
left [
matrix
{
ccol
{
{ad+bc} above 2ac above 0
}
ccol
{
2bd above {ad+bc} above 0
}
ccol
{
2nb above 2na above 1
}
}
right ]
.EN
i.e the full system is given by:	
.EQ
left [
matrix
{
ccol
{
1 above 0 above 0
}
ccol
{
{ 4 rho sub 0 tan alpha + 2L over {cos sup 2 alpha } } above 1 above 0
}
ccol
{
0 above 0 above 1
}
}
right ]
.EN
.PP
We see that $m sub {16}= 0 = m sub 26$ , implying that this
system is achromatic, irrespective of the distance L. 
.NH 2
Transfer matrix of the system if $L=0$
.PP
We just take our full system and set L to zero:
.EQ
left [
matrix
{
ccol
{
1 above 0 above 0
}
ccol
{
{ 4 rho sub 0 tan alpha } above 1 above 0
}
ccol
{
0 above 0 above 1
}
}
right ]
.EN
.PP
To now obtain the undulator parameter, we wish to know the
wavelength $ lambda sub u$. It can bee seen that this
is the total x distance traveled over the 4 magnets,
the distance in the x direction traveled in magnet 1 is
given by $ rho sub 0 tan alpha $ so the total wavelength
is 4 times this or:
.EQ
lambda sub u = 4 rho sub 0 tan alpha
.EN
.sp -1
.tl ' ' '\n+[myeqn]'
.PP
making the undulator parameter:
.EQ
K = {lambda sub u} over {2 pi rho sub 0} = {2 over pi tan alpha}
.EN
.NH 2
wavelength of a FEL
.PP
Filling the given values into equation \n[myeqn], we get a
wavelength of 64cm.
