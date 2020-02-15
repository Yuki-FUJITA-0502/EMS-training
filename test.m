prompt = 'What are you Name?';
name = input(prompt);

naisokukoukin = [];
daitaichokukin = [];
gaisokukoukin = [];
toruku = [];
kakudo = [];

gaisoku_maxpoint = 0;
gaisokukoukin_rms = 0;
daitaichoku_maxpoint = 0;
daitaichokukin_rms = 0;
naisoku_maxpoint = 0;
naisokukoukin_rms = 0;

for j = 1:3
load(strcat(name,num2str(j),'.mat'));
ch1=[];
ch2=[];
ch3=[];
ch4=[];
ch5=[];
for i = 1:length(datastart(1,:))
  ch1 = horzcat(ch1, data(datastart(1,i) : dataend(1,i)));
  ch2 = horzcat(ch2, data(datastart(2,i) : dataend(2,i)));
  ch3 = horzcat(ch3, data(datastart(3,i) : dataend(3,i)));
  ch4 = horzcat(ch4, data(datastart(4,i) : dataend(4,i)));
  ch5 = horzcat(ch5, data(datastart(5,i) : dataend(5,i)));
end

gaisokukoukin{j} = ch1(1,:);
daitaichokukin{j} = ch2(1,:);
naisokukoukin{j} = ch3(1,:);
toruku{j} = ch4(1,:);
kakudo{j} = ch5(1,:);

figure;
subplot(1,5,1)
plot(gaisokukoukin{1,j});
title(strcat('ŠO‘¤L‹Ø',num2str(j)));
ylabel('U•');
xlabel('ŠÔ');
subplot(1,5,2)
plot(daitaichokukin{1,j});
title(strcat('‘å‘Ú’¼‹Ø',num2str(j)));
ylabel('U•');
xlabel('ŠÔ');
subplot(1,5,3)
plot(naisokukoukin{1,j});
title(strcat('“à‘¤L‹Ø',num2str(j)));
ylabel('U•');
xlabel('ŠÔ');
subplot(1,5,4)
plot(toruku{1,j});
title(strcat('ƒgƒ‹ƒN',num2str(j)));
xlabel('ŠÔ');
ylabel('NEm');
subplot(1,5,5)
plot(kakudo{1,j});
title(strcat('Šp“x',num2str(j)));
ylabel('Šp“x');
xlabel('ŠÔ');

gaisoku_max = abs(gaisokukoukin{1,j}(1,1));
daitaichoku_max = abs(daitaichokukin{1,j}(1,1));
naisoku_max = abs(naisokukoukin{1,j}(1,1));

for i = 1:length(gaisokukoukin{1,j})
    if gaisoku_max < abs(gaisokukoukin{1,j}(1,i))
        gaisoku_max = abs(gaisokukoukin{1,j}(1,i));
        gaisoku_maxpoint(j) = i;
    end
end
for i = 1:length(daitaichokukin{1,j})
    if daitaichoku_max < abs(daitaichokukin{1,j}(1,i))
        daitaichoku_max = abs(daitaichokukin{1,j}(1,i));
        daitaichoku_maxpoint(j) = i;
    end
end
for i = 1:length(naisokukoukin{1,j})
    if naisoku_max < abs(naisokukoukin{1,j}(1,i))
        naisoku_max = abs(naisokukoukin{1,j}(1,i));
        naisoku_maxpoint(j) = i;
    end
end

gaisokukoukin_rms(j) = rms(gaisokukoukin{1,j}(gaisoku_maxpoint(j)-500:gaisoku_maxpoint(j)+500));
daitaichokukin_rms(j) = rms(daitaichokukin{1,j}(daitaichoku_maxpoint(j)-500:daitaichoku_maxpoint(j)+500));
naisokukoukin_rms(j) = rms(naisokukoukin{1,j}(naisoku_maxpoint(j)-500:naisoku_maxpoint(j)+500));

end

figure;
sokutei=[1 2 3];
naisoku_rms=horzcat(naisokukoukin_rms(1),naisokukoukin_rms(2),naisokukoukin_rms(3));
plot(sokutei,naisoku_rms);
xlabel('‘ª’è');
ylabel('emgRMS');
title('“à‘¤L‹Ø');
hold on;
gaisoku_rms = horzcat(gaisokukoukin_rms(1),gaisokukoukin_rms(2),gaisokukoukin_rms(3));
plot(sokutei,gaisoku_rms);
xlabel('‘ª’è');
ylabel('emgRMS');
title('ŠO‘¤L‹Ø');
hold on;
daitai_rms=horzcat(daitaichokukin_rms(1),daitaichokukin_rms(2),daitaichokukin_rms(3));
plot(sokutei,daitai_rms);
xlabel('‘ª’è');
ylabel('emgRMS');
title('RMSƒŒƒxƒ‹‘JˆÚ');
legend('“à‘¤L‹Ø','ŠO‘¤L‹Ø','‘å‘Ú’¼‹Ø');
