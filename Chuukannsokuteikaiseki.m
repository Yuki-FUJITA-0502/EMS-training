prompt = 'What are you Name?';


name = input(prompt);

load(strcat(name,num2str(1),'.mat'));
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
title('�O���L�؂P');
ylabel('�U��');
xlabel('����');
figure;
plot(daitaichokukin);
title('��ڒ��؂P');
ylabel('�U��');
xlabel('����');
figure;
plot(naisokukoukin);
title('�����L�؂P');
ylabel('�U��');
xlabel('����');
figure;
plot(toruku);
title('�g���N�P');
xlabel('����');
ylabel('N�Em');
figure;
plot(kakudo);
title('�p�x�P');
ylabel('�p�x');
xlabel('����');


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

%11/27�쐬
%11/11�ȍ~�̏��񑪒�f�[�^���v���b�g���āA�O�̋ؓ���rms1���Z�o����v���O����

load(strcat(name,num2str(2),'.mat'));
naisokukoukin2 = [];
daitaichokukin2 = [];
gaisokukoukin2 = [];
toruku2 = [];
kakudo2= [];
for i = 1:length(datastart(1,:))
  gaisokukoukin2 = horzcat(gaisokukoukin2, data(datastart(1,i) : dataend(1,i)));
  daitaichokukin2 = horzcat(daitaichokukin2, data(datastart(2,i) : dataend(2,i)));
  naisokukoukin2 = horzcat(naisokukoukin2, data(datastart(3,i) : dataend(3,i)));
  toruku2 = horzcat(toruku, data(datastart(4,i) : dataend(4,i)));
  kakudo2 = horzcat(kakudo, data(datastart(5,i) : dataend(5,i)));
end
figure;
plot(gaisokukoukin2);
title('�O���L��2');
ylabel('�U��');
xlabel('����');
figure;
plot(daitaichokukin2);
ylabel('�U��');
xlabel('����');
title('��ڒ���2');
figure;
plot(naisokukoukin2);
ylabel('�U��');
xlabel('����');
title('�����L��2');
figure;
plot(toruku2);
ylabel('N�Em');
xlabel('����');
title('�g���N2');
figure;
plot(kakudo2);
ylabel('�p�x');
xlabel('����');
title('�p�x2');



%ylim([-0.01 0.01]);

gaisoku_max2 = abs(gaisokukoukin2(1));
gaisoku_maxpoint2 = 0;
gaisokukoukin_rms2 = 0;
daitaichoku_max2 = abs(daitaichokukin2(1));
daitaichoku_maxpoint2 = 0;
daitaichokukin_rms2 = 0;
naisoku_max2 = abs(naisokukoukin2(1));
naisoku_maxpoint2 = 0;
naisokukoukin_rms2 = 0;


for i = 1:length(gaisokukoukin2)
    if gaisoku_max2 < abs(gaisokukoukin2(i))
        gaisoku_max2 = gaisokukoukin2(i);
        gaisoku_maxpoint2 = i;
    end
end
for i = 1:length(gaisokukoukin2)
    if daitaichoku_max < abs(gaisokukoukin2(i))
        daitaichoku_max = gaisokukoukin2(i);
        daitaichoku_maxpoint2 = i;
    end
end
for i = 1:length(naisokukoukin2)
    if naisoku_max2 < abs(naisokukoukin2(i))
        naisoku_max2 = naisokukoukin2(i);
        naisoku_maxpoint2 = i;
    end
end

%count = 0;
%for i = 1:length(gaisokukoukin)
 %   if max == gaisokukoukin(i)
  % end
%end

gaisokukoukin_rms2 = rms(gaisokukoukin2(gaisoku_maxpoint2-500:gaisoku_maxpoint2+500));
daitaichokukin_rms2 = rms(daitaichokukin2(daitaichoku_maxpoint2-500:daitaichoku_maxpoint2+500));
naisokukoukin_rms2 = rms(daitaichokukin2(naisoku_maxpoint2-500:naisoku_maxpoint2+500));

%11/27�쐬
%11/11�ȍ~�̏��񑪒�f�[�^���v���b�g���āA�O�̋ؓ���rms1���Z�o����v���O����


load(strcat(name,num2str(3),'.mat'));
naisokukoukin3 = [];
daitaichokukin3 = [];
gaisokukoukin3 = [];
toruku3 = [];
kakudo3= [];
for i = 1:length(datastart(1,:))
  gaisokukoukin3 = horzcat(gaisokukoukin3, data(datastart(1,i) : dataend(1,i)));
  daitaichokukin3 = horzcat(daitaichokukin3, data(datastart(2,i) : dataend(2,i)));
  naisokukoukin3 = horzcat(naisokukoukin3, data(datastart(3,i) : dataend(3,i)));
  toruku3 = horzcat(toruku, data(datastart(4,i) : dataend(4,i)));
  kakudo3 = horzcat(kakudo, data(datastart(5,i) : dataend(5,i)));
end
figure;
plot(gaisokukoukin3);
title('�O���L��3');
ylabel('�U��');
xlabel('����');
figure;
plot(daitaichokukin3);
ylabel('�U��');
xlabel('����');
title('��ڒ���3');
figure;
plot(naisokukoukin3);
ylabel('�U��');
xlabel('����');
title('�����L��3');
figure;
plot(toruku3);
ylabel('N�Em');
xlabel('����');
title('�g���N3');
figure;
plot(kakudo3);
ylabel('�p�x');
xlabel('����');
title('�p�x3');
figure;


%ylim([-0.01 0.01]);

gaisoku_max3 = abs(gaisokukoukin3(1));
gaisoku_maxpoint3 = 0;
gaisokukoukin_rms3 = 0;
daitaichoku_max3 = abs(daitaichokukin3(1));
daitaichoku_maxpoint3 = 0;
daitaichokukin_rms3 = 0;
naisoku_max3 = abs(naisokukoukin3(1));
naisoku_maxpoint3 = 0;
naisokukoukin_rms3 = 0;


for i = 1:length(gaisokukoukin3)
    if gaisoku_max3 < abs(gaisokukoukin3(i))
        gaisoku_max3 = gaisokukoukin3(i);
        gaisoku_maxpoint3 = i;
    end
end
for i = 1:length(daitaichokukin3)
    if daitaichoku_max < abs(daitaichokukin3(i))
        daitaichoku_max = daitaichokukin3(i);
        daitaichoku_maxpoint3 = i;
    end
end
for i = 1:length(naisokukoukin3)
    if naisoku_max3 < abs(naisokukoukin3(i))
        naisoku_max3 = naisokukoukin3(i);
        naisoku_maxpoint3 = i;
    end
end

%count = 0;
%for i = 1:length(gaisokukoukin)
 %   if max == gaisokukoukin(i)
  % end
%end

gaisokukoukin_rms3 = rms(gaisokukoukin3(gaisoku_maxpoint3-500:gaisoku_maxpoint3+500));
daitaichokukin_rms3 = rms(daitaichokukin3(daitaichoku_maxpoint3-500:daitaichoku_maxpoint3+500));
naisokukoukin_rms3 = rms(daitaichokukin3(naisoku_maxpoint3-500:naisoku_maxpoint3+500));



sokutei=[1 2 3];
naisoku_rms=horzcat(naisokukoukin_rms1,naisokukoukin_rms2,naisokukoukin_rms3);
plot(sokutei,naisoku_rms);
xlabel('����');
ylabel('emgRMS');
title('�����L��');
hold on;
gaisoku_rms = horzcat(gaisokukoukin_rms1,gaisokukoukin_rms2,gaisokukoukin_rms3);
plot(sokutei,gaisoku_rms);
xlabel('����');
ylabel('emgRMS');
title('�O���L��');
hold on;
daitai_rms=horzcat(daitaichokukin_rms1,daitaichokukin_rms2,daitaichokukin_rms3);
plot(sokutei,daitai_rms);
xlabel('����');
ylabel('emgRMS');
title('RMS���x���J��');
legend('�����L��','�O���L��','��ڒ���');

