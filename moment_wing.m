function [y]= moment_wing(Force,panel_width) 

n=length(Force); % Assuming Force is given as input in the form of an array

moment=ones(1,n);

Force=sum(Force,1); %Net force at x=j equals sum of forces along the vertical strip

for j=1:1:n
    t=(j-1/2)*panel_width; %Forces taken at C.O.M of the panel 
    moment(1,j)=Force(1,j)*t; %moment of forces at t about the neutral axis
end;

y=sum(moment) %Net moment about the neutral axis

end















    

    



