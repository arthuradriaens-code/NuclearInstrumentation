.TL
Nuclear instrumentation
.AU 
Arthur Adriaens
.AI
Ghent University
.EQ
delim $$
.EN
.NH
Determine the thickness of the $Delta$E detector
.LT
.PP
To determine the thickness of the $Delta$E detector, we'll take
a look at the requirements: "Deuterons need to have an
energy of at least 13.3 MeV to be detected by the system",
This means that either of the tresholds isn't reached. I.e either the deposited energy in the silicium detector isn't above the threshold or the one in the Germanium detector isn't above 5.2 MeV.
we'll vary the width of the $Delta$E detector and see when the
threshold energy of the Ge E detector is no longer reached:
.SH
13.3 MeV Deuteron
.LT
.PP
A deuteron with this energy still barely gets detected, looking
at the energy deposit in function of the width we can see that the Germanium detector gets past it's threshold for a width of 0.0533 cm: 
.TS
c c c . 
Width (cm)	Energy loss $Delta$E Detector (MeV)	Energy loss E detector (MeV)
0.0533	7.772	5.20667
0.05335	7.78273	5.19593
.TE
So we conclude the width to be 0.0533 cm or 533$mu$m.
.NH
Proton, Deuteron and Triton Energy Loss
.LT
.PDFPIC -C DeltaEPlot.pdf 3i
.PP
It's clearly visible on the above plot that a $Delta$E-E
detector can discriminate between the different particles as
soon as the energy is hight enough for the particle to be
detectable in the detector as the lines above are seperate.
In effect we need the two plots, also the energy loss in the Germanium detector:
.PDFPIC -C EPlot.pdf 3i
If we for example have a proton of 30 MeV that falls in onto
the detector, from the $Delta$E detector we see an energy
transfer of 28MeV, this could be identified with a proton of 30
MeV but also a Deuteron of 33.4 MeV or Triton with 34.6 MeV. But
if we look at the observed energy in the Germanium detector
we'll see 1.88 MeV, and we see from the plot above that this
can only come from a 30MeV proton, as Deuteron of 33.4 MeV would deposit around 3 MeV and Triton of 33.4 around 4 MeV. 
