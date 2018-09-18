function [ F ] = Force_dist( w0,u,rho,cl,lambda,rc,ws )
%UNTITLED6 Summary of this function goes here
%   u = input array of velocity, given at an interval of 1 cm and n is an odd number.
%   rho = density of air
%   lambda = tip_chord / root_chord
%   ws = wing_span in meters
%   wsa = wetted_surface_area
%   rc = root_chord/2
%   w0 = total weight of wing
%   ele_width = width of each small element
%   ele_height = height of each small element
%   c = chord length
%   Assumption :  This model assumes that the weight is uniformly
%   distributed across Y axis(along rc). And Uinf and Cl remains constant
%   wrt Y axis but changes with X axis
%   Wing is symmetrical wrt bith X and Y axis
%   F is preallocated to avoid memory problem
%   A change that would be reqd is in line 23 -> ele_width = rc/10
%   To capture small changes, we would need to use ele_width =
%   (1-lambda)*rc/10
%   POSSIBLE BUG : Sum of weight matrix not equal to w0/*g

g=9.81;
wsa = (1+lambda)*rc*ws;
ele_width = ws/size(u,2);
%ele_height = (1-lambda)*rc/10;                  %10 is hard-coded
ele_height = rc/10;
ws=ws/2;
rc=rc/2;
x = -ws+ele_width/2:ele_width:ws+ele_width/2;
y1 = abs(x).*((lambda-1)*rc/ws)+ rc;
%y2 = -(abs(x).*((lambda-1)*rc/ws)+ rc);
%W(size(u)+1,2*rc/element_height) = 0
%W(ceil(20/(1-lambda)),size(u,2)) = 0 ;
W(2*rc/ele_height+1,size(u)) = 0;
F(1,size(u,2))=0;

for i = 1:size(u,2)
    j_range=int8(floor(y1(i)/(ele_height)));     %Symmetry of wing is used
    %for j = y2(int8(i))+rc+ele_height/2:ele_height:y1(int8(i))+rc+ele_height/2
    c = 2*y1(i);    
    Lift = rho * c * cl * ele_width * (u(i)^2)/2;        
    for j=(rc/ele_height)-(j_range):rc/(ele_height)+j_range;
        W(int8(j)+1,i) = (w0*g/wsa)*ele_width*ele_height;
    end    
    F(i)=Lift-sum(W(:,i));    
end
end

