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
%Calculations for half wave rectifier
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
