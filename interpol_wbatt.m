function [y]  = interpol_wbatt()


% ip= time/year include as inpu to function when time dependance is
% introduced
% y = battery weight

% t=[];
% spe=[];
% E_req=;
% cubic splines used (higher order polynomials will have large oscillations in the fit)
% spe_ip=ppval(spline(wo,wewo),ip);
% y=E_req/spe_ip;

Etot= 45/60*(8)*(20*1e3);
Wbat= (Etot/250);

y=Wbat;

end