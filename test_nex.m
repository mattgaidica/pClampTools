nex_file = '/Users/mattgaidica/Documents/MATLAB/pClampTools/data/16715080.nex';

% get the file info
[nvar, names, types, freq] = nex_info(filename);
% set a varname (i.e. unit) from the info
varname = names{1}; % FYI, there are nvar units and nvar names
% get the timestamps for that unit
[n, ts] = nex_ts(filename, varname);