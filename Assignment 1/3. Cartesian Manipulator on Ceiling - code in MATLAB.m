`disp('Cartesian_1')

syms a1 a2 a3 a4 d1 d2 d3

%% Link lengths

a1 = 4;
a2 = 4;
a3 = 4;
a4 = 4;

%% Joint Variables

d1 = 2;
d2 = 2;
d3 = 2;
%% D-H Parameters [theta, d, r, alpha, offset]

H1 = Link([0,0,0,pi/2,1,-a1]);
H1.qlim = [0 0];

H2 = Link([pi/2,0,0,pi/2,1,a2]);
H2.qlim = [0 d1]

H3 = Link([3*pi/2,0,0,pi/2,1,a3]);
H3.qlim = [0 d2];

H4 = Link([0,0,0,0,1,a4]);
H4.qlim = [0 d3];

Cartesian_1 = SerialLink([H1 H2 H3 H4], 'name', 'Cartesian_1');
Cartesian_1.plot([0 0 0 0], 'workspace', [-10 5 -10 1 -10 1 -10 5])
Cartesian_1.teach
