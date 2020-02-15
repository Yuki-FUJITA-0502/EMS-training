naisokukoukin = [];
daitaichokukin = [];
gaisokukoukin = [];
toruku = [];
kakudo= [];
for i = 1:length(datastart(1,:))
  naisokukoukin = horzcat(naisokukoukin, data(datastart(1,i) : dataend(1,i)));
  daitaichokukin = horzcat(daitaichokukin, data(datastart(2,i) : dataend(2,i)));
  gaisokukoukin = horzcat(gaisokukoukin, data(datastart(3,i) : dataend(3,i)));
  toruku = horzcat(toruku, data(datastart(4,i) : dataend(4,i)));
  kakudo = horzcat(kakudo, data(datastart(5,i) : dataend(5,i)));
end
figure;
plot(naisokukoukin);
figure;
plot(daitaichokukin);
figure;
plot(gaisokukoukin);
figure;
plot(toruku);
figure;
plot(kakudo);


%ylim([-0.01 0.01]);

max = abs(naisokukoukin(1));
maxpoint = 0;
naisokukoukin_rms1 = 0;

for i = 1:length(naisokukoukin)
    if max < abs(naisokukoukin(i))
        max = naisokukoukin(i);
        maxpoint = i;
    end
end

count = 0;
for i = 1:length(naisokukoukin)
    if max == naisokukoukin(i)
        count = count + 1;
    end
end

naisokukoukin_rms1 = rms(naisokukoukin(maxpoint-500:maxpoint+500));

