clear all;
close all;
clc

t=0:4:60;
r_km=[18.803,18.861,18.946,19.042,19.148,19.260,19.376,19.495,19.617,19.741,19.865,19.990,20.115,20.239,20.362,20.484];
th_rad=[0.7854,0.7792,0.7701,0.7594,0.7477,0.7350,0.7215,0.7073,0.6925,0.6771,0.6612,0.6448,0.6280,0.6107,0.5931,0.5750];
v=zeros([1,16]);
i=1;
h=t(i+1)-t(i);
v(i)=sqrt(forward_difference(r_km(i),r_km(i+1),r_km(i+2),h)^2 + forward_difference(th_rad(i),th_rad(i+1),th_rad(i+2),h)^2);
disp("Velocity speed at "+t(i)+" is: "+v(i))
for i=2:1:length(t)-1
    h=t(i+1)-t(i);
    v(i)=sqrt(central_difference(r_km(i+1),r_km(i-1),h)^2 + central_difference(th_rad(i+1),th_rad(i-1),h)^2);
    disp("Velocity speed at "+t(i)+" is: "+v(i))
end
i=length(t);
h=t(i)-t(i-1);
v(i)=sqrt(backward_difference(r_km(i),r_km(i-1),r_km(i-2),h)^2 + backward_difference(th_rad(i),th_rad(i-1),th_rad(i-2),h)^2);
disp("Velocity speed at "+t(i)+" is: "+v(i))