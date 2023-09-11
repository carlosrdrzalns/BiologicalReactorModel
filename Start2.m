clear()
InputSediments = [30, 69.5, 51.2, 202.32, 28.17, 0, 0, 0, 0, 31.56, 6.95, 10.59, 7];
SI0 = InputSediments(1);
SS0 = InputSediments(2);
XI0 = InputSediments(3);
XS0 = InputSediments(4);
XBH0 = InputSediments(5);
XBA0 = InputSediments(6);
XP0 = InputSediments(7);
SO0 = InputSediments(8);
SNO0 = InputSediments(9);
SNH0 = InputSediments(10);
SND0 = InputSediments(11);
XND0 = InputSediments(12);
SALK0 = InputSediments(13);

%% Definition of the plant

V1 = 1000;
V2 = V1;
V = V1+V2;
Q0 = 18000;
Q1 = 55000;
Qr = 20000;
Qa = 10000;
SRT = 100;
kLa = 240;
Dh = Q0/V;
Dx = 1/SRT;
SOsat = 0.8;

%Kinetic Parameters

muH = 4;
KS=10;
KOH=0.2;
KNO = 0.5;
bH=0.3;
ng=0.8;
nh = 0.8;
kH = 3;
KX=3;
mA = 0.5;
KNH = 1;
bA = 0.05;
KOA = 0.4;
ka=0.05;

%Stochiometrics Parameters 

YA = 0.24;
YH = 0.67;
fp = 0.08;
iXB = 0.08;
iXP = 0.06;

%% Steady State

SI_ini = 30;
SS_ini = 2.81;
XI_ini = 1149;
XS_ini = 82.1;
XBH_ini = 2552;
XBA_ini = 148;
XP_ini = 449;
SO_ini = 0.004;
SNO_ini = 5.37;
SNH_ini = 7.92;
SND_ini = 1.22;
XND_ini = 5.28;
SALK_ini = 4.93;

SI_ini2 = 30;
SS_ini2 = 1.15;
XI_ini2 = 1149;
XS_ini2 = 64.9;
XBH_ini2 = 2559;
XBA_ini2 = 150;
XP_ini2 = 450;
SO_ini2 = 1.7;
SNO_ini2 = 6.54;
SNH_ini2 = 5.55;
SND_ini2 = 0.82;
XND_ini2 = 4.39;
SALK_ini2 = 4.67;

simOut = sim('Aerobic_tank_model.slx');

h = zeros(3,1);
figure;
h(1)= plot( simOut.SimulationData(:,1), simOut.SimulationData(:,15),'b'); hold on;
h(2)= plot( simOut.SimulationData(:,1), simOut.SimulationData(:,16),'g');
h(3)= plot( simOut.SimulationData(:,1), simOut.SimulationData(:,17),'r');
legend(h, 'COD', 'TSS', 'TN');

figure
g = plot( simOut.SimulationData(:,1), simOut.SimulationData(:,9),'b');
legend(g, 'DO');
