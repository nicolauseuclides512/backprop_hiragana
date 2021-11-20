[file_data,path_data]=uigetfile('*/*.data','Import Data');
test=load([path_data file_data]);

data_seion = test(:,2:end);
datanormal = mapminmax(data_seion)';