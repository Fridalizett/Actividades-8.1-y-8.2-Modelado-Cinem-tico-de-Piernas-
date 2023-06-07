%limpieza de pantalla y variables
clear all
close all
clc

%Se calculan las matrices de transformación Homogénea del modelo, 
%A1, T1, T2 y T3 = 1
H0 = SE3;
H1 = SE3(rotx(0), [2,0,0]);
H2 = SE3(rotx(0), [0,0,-2]);
H3 = SE3(rotx(0), [0,2,0]);
H4 = SE3(rotx(0), [0,2,0]);

%matrices de transformación global

H20 = H1 * H2;
H30 = H20 * H3;
H40 = H30 * H4;
disp(H40)



plot3(0, 0, 0,'LineWidth', 1.5); axis([-2 6 -2 6 -2 6]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-2 6 -2 6 -2 6])

%% TRAMA 1
%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-2 6 -2 6 -2 6])
%% TRAMA 2
%Realizamos una animación para la siguiente trama
pause;
tranimate(H1, H20,'rgb','axis', [-2 6 -2 6 -2 6])
%% TRAMA 3
%Realizamos una animación para la siguiente trama
pause;
tranimate(H20, H30,'rgb','axis', [-2 6 -2 6 -2 6])
%% TRAMA 4
%Realizamos una animación para la siguiente trama
pause;
tranimate(H30, H40,'rgb','axis', [-2 6 -2 6 -2 6])



