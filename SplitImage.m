splitNo = 40;
heat = imread('One.jpg');
org = imread('Two.jpg');
colH = size(heat,2);
splitSz = colH/splitNo;
res = [];
for i = 0:splitNo-1
    Sstrt = (i*splitSz)+1;
    Send= (i+1)*splitSz;
    res = [res heat(:,Sstrt:Send,:) org(:,Sstrt:Send,:)];
end
imshow(res);