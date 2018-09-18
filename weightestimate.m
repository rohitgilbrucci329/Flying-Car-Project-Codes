
% code to be written in main function

Wo_guess=1000; % initial guess value
Wo_calc=Wo_guess; % Wo_calc= Wo calculated
Wsys=(40+10+7)*8; % weight of systems
Wpayload=4*80; % weight of the crew and passengers
Wbatt=interpol_wbatt();
Error_percent=1;

while (Error_percent^2)>0.01
    
    Wbat_rat=Wbatt/Wo_guess; % time as input in wbatt 
    We_rat=interpol_wewo(Wo_guess)/Wo_guess; % Wo guess value as input in wewo
    Wsys_rat=Wsys/Wo_guess; 
    Wo_calc=Wpayload/(1-Wbat_rat-We_rat-Wsys_rat); % Wo calculated value
    Wo_guess=(Wo_calc+Wo_guess)/2; % New guess value = average of previous guess and the calculated value
    Error_percent= (Wo_calc-Wo_guess)*2*100/(Wo_guess); % Multiplied by 2 since difference in previous (calc-guess) was twice  %
end;

Wo=Wo_calc
Error_percent= (Wo_calc-Wo_guess)*2*100/(Wo_guess)



   
    
    



