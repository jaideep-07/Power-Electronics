clear all; clc; clf;
l=linspace(0,10,100);
vin=input('Enter amplitude VIN:');
signal=vin*sin(2*pi*50*l); %sin(wt)
%plot input signal
subplot(211);
title('Input signal');
plot(signal);
%For half wave rectifier through R load
for t=1:100
    if sin(2*pi*50*l(t))<=0
        signal(t)=0;
    else
        signal(t)=vin*sin(2*pi*50*l(t));
    end
end
%plot R load signal
subplot(212);
title('R load Output');
plot(signal);
%Calculations for half wave rectifier for R Load
vin_rms=vin/sqrt(2);
vo_rms_th=vin/2;
vo_rms_obs=input('Enter the rms observed voltage:');
err_rms=vo_rms_obs/vo_rms_th;
vo_mean_th=vin/pi;
vo_mean_obs=input('Enter the mean observed voltage:');
err_mean=vo_mean_obs/vo_mean_th;
disp('Calculations:');
disp('Vin:')
display(vin);
disp('vin rms:')
display(vin_rms);
disp('vo rms (theoretical):')
display(vo_rms_th);
disp('vo rms (observed):')
display(vo_rms_obs);
disp('Error (rms):')
display(err_rms);
disp('vo mean (theoretical)')
display(vo_mean_th);
disp('vo mean (Observed)')
display(vo_mean_obs);
disp('Error Mean:')
display(err_mean);
%Calculations for RL Load
beta=input('Enter value of Beta:');
vdc_rl_th=(vin/(2*pi))*(1-cos(pi+beta));
R=input('Enter Value of R');
L=input('Enter value of L');
idc_rl_th=(vdc_rl_th/R);
vorms_rl_th=(vin/sqrt(2))*(sqrt((2*beta-sin(2*beta))/(2*pi)));
Z=sqrt(R^2+L^2);
iorms_rl_th=(vorms_rl_th/Z);
vdc_rl_obs=input('Enter Mean Voltage value observed:');
err_vdc_rl=vdc_rl_th/vdc_rl_obs;
vorms_rl_obs=input('Enter the RMS Voltage value observed:');
err_vorms_rl=vorms_rl_th/vorms_rl_obs;
idc_rl_obs=input('Enter the Mean Current Value:');
iorms_rl_obs=input('Enter the RMS Current value:');
err_idc_rl=idc_rl_th/idc_rl_obs;
err_iorms_rl=iorms_rl_th/iorms_rl_obs;
disp('Calculations:');
disp('Vin:')
display(vin);
disp('Z:')
display(Z);
disp('vo rms (theoretical):')
display(vorms_rl_th);
disp('vo rms (observed):')
display(vorms_rl_obs);
disp('Error (rms):')
display(err_vorms_rl);
disp('vo mean (theoretical)')
display(vdc_rl_th);
disp('vo mean (Observed)')
display(vdc_rl_obs);
disp('Error Mean:')
display(err_vdc_rl);
disp('Current Mean (Theoretical)')
display(idc_rl_th);
disp('Current Mean (Observed)')
display(idc_rl_obs);
disp('Current Mean Error')
display(err_idc_rl);
disp('Current RMS (Theoretical)')
display(iorms_rl_th);
disp('Current RMS (Observed)')
display(iorms_rl_obs);
disp('Error Current RMS')
display(err_iorms_rl);
