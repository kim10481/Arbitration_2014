load('SBJ_structure.mat');
sess_num = length(SBJ{1,1}.HIST_behavior_info);
AAA = [];
for i =1 : 1 : sess_num
   AAA = [AAA ; SBJ{1, 1}.HIST_behavior_info{1, i}];
end

numtime = AAA(:,15);

timetime = cumsum(numtime)';

rpebl  = SBJ{1,1}.regressor{1,30}.value(7,3:3:1179);
spebl  = SBJ{1,1}.regressor{1,29}.value(7,3:3:1179);
ps_rpe = rpebl./timetime;
ps_spe = spebl./timetime;
norm_psrpe = (rpebl/max(abs(rpebl)))./timetime;
norm_psspe = (spebl/max(spebl))./timetime;
norm2_psrpe = ( (rpebl - mean(rpebl))/std(rpebl) ) ./timetime;
norm2_psspe = ( (spebl - mean(spebl))/std(spebl) ) ./timetime;
znormr=(rpebl - mean(rpebl))/std(rpebl);
znorms=(spebl - mean(spebl))/std(spebl);