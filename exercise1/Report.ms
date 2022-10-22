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
Determine the thickness of the $Delta$E detector (a)
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
Proton, Deuteron and Triton Energy Loss (b & c)
.LT
.PDFPIC -C DeltaEPlot.pdf 3i
.PP
It's clearly visible on the above plot that a $Delta$E-E
detector can discriminate between the different particles as
soon as the energy is high enough for the lines above to be
seperate.
An example of how this identification would work is, say we
have a proton of 30 MeV that falls in onto
the detector. From the $Delta$E detector we see an energy
transfer of 1.88MeV, this could be identified with a proton of
30 MeV or with a Deuterion or Triton of super high energy, way
above 60 MeV.
But let's now say we have a proton of 10 MeV, this would
produce a signal of 5.63 MeV in the Si detector. We could also
identify this with a 17.1MeV Deuteron or a 24.3 MeV Triton, if
we then really wanted to make sure, in effect we need the two
plots, also the energy loss in the Germanium detector:
.PDFPIC -C EPlot.pdf 3i
.PP
We would receive a signal of 4.2 MeV in the Germanium detector as this corresponds to the proton of 10 MeV, however this doesn't correspond at all with a 17.1 MeV Deuteron or a 24.3 MeV Triton. 
.NH
What is the energy of protons that are stopped in the $Delta$E
detector? (d)
.LT
.PP
We thus wish to know when there's no longer an energy deposit
in the E detector, for this we'll just have to run a simulation
over the energies for the early (<10 MeV) part, first a crude
calculation we see the following:
.TS
c c c . 
Kinetic Energy (MeV)	Energy loss $Delta$E Detector (MeV)	Energy loss E detector (MeV)
8.4	8.4	0
8.5	8.5	0
8.6	8.12009	0.319205
8.7	7.67421	0.865086
.TE
I.e zero energy loss up until $E sub {kin} = 8.5$ MeV so it
should be between 8.5 and 8.6 MeV, after doing multiple 'zooms'
we get:
.TS
c c c . 
Kinetic Energy (MeV)	Energy loss $Delta$E Detector (MeV)	Energy loss E detector (MeV)
8.5492	8.5492	0
8.5493	8.5493	0
8.5494	8.44907	0.100328
8.5495	8.44875	0.100752
.TE
I.e all protons up until Kinetic Energy of about 8.5493MeV are
stopped in the $Delta$E detector.
.NH
Determine the energy threshold of the $Delta$E-detector (e)
.LT
.PP
This can be found by looking at the moment the protons are no
longer detectable, it was given that this was at a kinetic
energy of 60 MeV so that corresponds to a threshold of 1.06916
MeV. 
.NH
Determine the low energy threshold of proton detection in the $Delta$E-E detector (f)
.LT
.PP
As the $Delta$E-E detector is used in coincidence mode, the
proton needs to be detected both in the $Delta$E and E block.
Looking at a simulation:
.PDFPIC -C f.pdf 4i
We find the low energy threshold of a proton to be at an energy
of about 10.56 MeV.
.NH
Determine the low energy threshold of Triton detection in the $Delta$E-E detector (g)
.LT
.PP
Again, looking at a simulation:
.PDFPIC -C g.pdf 3i
We find the low energy threshold of a Triton to be at an energy
of about 15.35 MeV.
.NH
What is the energy of protons that are stopped in the complete $Delta$E-E system? (h) 
.LT
.PP
This corresponds to particles with such kinetic energies that
the outgoing kinetic energy is zero, a quick simulation gives 
the following:
.PDFPIC -C h.pdf 2.9i
.PP
We can zoom in on the region where the energy starts to
increase, i.e when the particle starts being able to leave 
the detector and we find that this is at an energy of
about 66.2 MeV.
.PP
We can thus conclude that all protons of energies less than this
will be stopped by the complete $Delta$E-E system
.NH
What energy do such protons deposit in the $Delta$E detector and are they still detected in the $Delta$E-E system? (i)
.LT
.PP
buh
