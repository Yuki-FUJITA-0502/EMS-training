naisokukoukin = [];
daitaichokukin = [];
gaisokukoukin = [];
toruku = [];
kakudo= [];
for i = 1:length(datastart(1,:))
  gaisokukoukin = horzcat(gaisokukoukin, data(datastart(1,i) : dataend(1,i)));
  daitaichokukin = horzcat(daitaichokukin, data(datastart(2,i) : dataend(2,i)));
  naisokukoukin = horzcat(naisokukoukin, data(datastart(3,i) : dataend(3,i)));
  toruku = horzcat(toruku, data(datastart(4,i) : dataend(4,i)));
  kakudo = horzcat(kakudo, data(datastart(5,i) : dataend(5,i)));
end
figure;
plot(gaisokukoukin);
figure;
plot(daitaichokukin);
figure;
plot(naisokukoukin);
figure;
plot(toruku);
figure;
plot(kakudo);


%ylim([-0.01 0.01]);

gaisoku_max = abs(gaisokukoukin(1));
gaisoku_maxpoint = 0;
gaisokukoukin_rms1 = 0;
daitaichoku_max = abs(daitaichokukin(1));
daitaichoku_maxpoint = 0;
daitaichokukin_rms1 = 0;
naisoku_max = abs(naisokukoukin(1));
naisoku_maxpoint = 0;
naisokukoukin_rms1 = 0;


for i = 1:length(gaisokukoukin)
    if gaisoku_max < abs(gaisokukoukin(i))
        gaisoku_max = gaisokukoukin(i);
        gaisoku_maxpoint = i;
    end
end
for i = 1:length(gaisokukoukin)
    if daitaichoku_max < abs(gaisokukoukin(i))
        daitaichoku_max = gaisokukoukin(i);
        daitaichoku_maxpoint = i;
    end
end
for i = 1:length(naisokukoukin)
    if naisoku_max < abs(naisokukoukin(i))
        naisoku_max = naisokukoukin(i);
        naisoku_maxpoint = i;
    end
end

%count = 0;
%for i = 1:length(gaisokukoukin)
 %   if max == gaisokukoukin(i)
  % end
%end

gaisokukoukin_rms1 = rms(gaisokukoukin(gaisoku_maxpoint-500:gaisoku_maxpoint+500));
daitaichokukin_rms1 = rms(daitaichokukin(daitaichoku_maxpoint-500:daitaichoku_maxpoint+500));
naisokukoukin_rms1 = rms(daitaichokukin(naisoku_maxpoint-500:naisoku_maxpoint+500));

%11/27作成
%11/11以降の初回測定データをプロットして、三つの筋肉のrms1を算出するプログラム
