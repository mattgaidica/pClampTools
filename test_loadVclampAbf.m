filename = '/Users/mattgaidica/Documents/MATLAB/pClampTools/data/16715080.abf';
[time, dt, data_i, data_v, cell_name] = loadVclampAbf(filename);

figure;
plot(time,data_v);
Fs = 1 / (1000/dt);
title({['Cell: ',cell_name],['FR = ',num2str(Fs)]});
xlabel('Time (s)');
ylabel('Amplitude (mV)');