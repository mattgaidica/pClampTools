function saveFile = abf2DDT(filename)

[pathstr, name, ext] = fileparts(filename);
[time, dt, data_i, data_v, cell_name] = loadVclampAbf(filename);
data_v_reshape = reshape(data_v,[1 size(data_v,1)*size(data_v,2)]);
saveFile = fullfile(pathstr,[name,'.ddt']);
ddt_write_v(saveFile,1,length(data_v_reshape),1/(dt/1000),data_v_reshape);