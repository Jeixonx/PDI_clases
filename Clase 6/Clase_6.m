clear all, close all, clc
a=imread('placa.jpg');
b=rgb2gray(a);
figure(1); subplot 221; imshow(b);
subplot 212; imhist(b); impixelinfo
c=b; c(c>100)=255; c(c<255)=0;c=255-c;
figure(2);imshow(c); e=c;
c=c'; figure(3); imshow(c);
d = sum(c);
figure(4); subplot 211; imshow(c);
subplot 212; plot(d);
f=e(140:180,:);
figure(5);imshow(f);
g = sum(f);
figure(6); subplot 211; imshow(f);
subplot 212; plot(g);
h=f(:,120:145);
figure(7); imshow(h);
j=histeq(b);
figure(8); subplot 221; imshow(b);
subplot 222; imhist(b);
subplot 223; imshow(j); 
subplot 224; imhist(j);