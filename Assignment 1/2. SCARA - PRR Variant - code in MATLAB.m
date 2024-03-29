disp('SCARA_1')

syms a1 a2 a3 a4 a5

%% Link lengths

a1 = 5;
a2 = 5;
a3 = 5;
a4 = 5;
a5 = 5;

%% Joint Variables

d1 = 5;

%% D-H Parameters [theta, d, r, alpha, offset]

H1 = Link([0,a2,0,0,1,a1]);
H1.qlim = [0 d1];

H2 = Link([0,0,a3,0,0]);
H2.qlim = [0 0];

H3 = Link([0,0,a4,0,0]);
H3.qlim = [-pi/2 pi/2];

H4 = Link([0,0,a5,0,0]);
H4.qlim = [-pi/2 pi/2];

SCARA_1 = SerialLink([H1 H2 H3 H4], 'name', 'SCARA_1');

SCARA_1.plot([0 0 0 0], 'workspace', [-20 20 -20 20 -20 20 -20 20])

SCARA_1.teach
