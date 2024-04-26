clear all;
close all;
clc

t=0:4:60;
r=[18.803,18.861,18.946,19.042,19.148,19.260,19.376,19.495,19.617,19.741,19.865,19.990,20.115,20.239,20.362,20.484];
u=[0.7854,0.7792,0.7701,0.7594,0.7477,0.7350,0.7215,0.7073,0.6925,0.6771,0.6612,0.6448,0.6280,0.6107,0.5931,0.5750];
v=zeros([1,16]);

i=1;
h=t(i+1)-t(i);

dr=forward_difference(r(i),r(i+1),r(i+2),h);
du=forward_difference(u(i),u(i+1),u(i+2),h);
v(i)=speed(dr,du,r(i));
disp("Velocity speed at "+t(i)+" is: "+v(i))

for i=2:1:length(t)-1
    h=t(i+1)-t(i);
    dr=central_difference(r(i+1),r(i-1),h);
    du=central_difference(u(i+1),u(i-1),h);
    v(i)=speed(dr,du,r(i));
    disp("Velocity speed at "+t(i)+" is: "+v(i))
end

i=length(t);
h=t(i)-t(i-1);

dr=backward_difference(r(i),r(i-1),r(i-2),h);
du=backward_difference(u(i),u(i-1),u(i-2),h);
v(i)=speed(dr,du,r(i));

disp("Velocity speed at "+t(i)+" is: "+v(i))