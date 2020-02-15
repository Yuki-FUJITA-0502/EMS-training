%function FFT
prompt = 'What are you Name?';
name = input(prompt);
figure('Name','����A���ԁA�ŏI�����EMG�p���[�X�y�N�g��','NumberTitle','off');
for i = 1:3
load(strcat(name,'FFT',string(i),'.mat'));
naisokukoukin = [];
daitaichokukin = [];
gaisokukoukin = [];
toruku = [];
kakudo = [];

for j = 1:length(datastart(1,:))
  gaisokukoukin = horzcat(gaisokukoukin, data(datastart(1,j) : dataend(1,j)));
  daitaichokukin = horzcat(daitaichokukin, data(datastart(2,j) : dataend(2,j)));
  naisokukoukin = horzcat(naisokukoukin, data(datastart(3,j) : dataend(3,j)));
  toruku = horzcat(toruku, data(datastart(4,j) : dataend(4,j)));
  kakudo = horzcat(kakudo, data(datastart(5,j) : dataend(5,j)));
end
%figure;
%plot(gaisokukoukin);
%title(strcat('�O���L��',string(i)));
%ylabel('EMG');
%xlabel('����');
%figure;
%plot(daitaichokukin);
%title(strcat('��ڒ���',string(i)));
%ylabel('EMG');
%xlabel('����');
%figure;
%plot(naisokukoukin);
%title(strcat('�����L��',string(i)));
%ylabel('EMG');
%xlabel('����');
%figure;
%plot(toruku);
%title(strcat('�g���N',string(i)));
%xlabel('N�Em');
%ylabel('����');
%figure;
%plot(kakudo);
%title(strcat('�p�x',string(i)));
%ylabel('�p�x');
%xlabel('����');

fs = 1000;
y=fft(lowpass(highpass(gaisokukoukin,10,fs),300,fs));
n = length(gaisokukoukin);    % number of samples
f = (0:n-1)*(fs/n);     % frequency range
power = abs(y).^2/n;    % power of the DFT
power = movmean(power,10);
subplot(3,3,i)
plot(f,power)
xlabel('Frequency')
ylabel('Power')
title(strcat('�O���L��FFT',string(i)));
xlim([1 500]);

gaisoku_max_FFT = 0;
gaisoku_maxpoint_FFT = 0;
gaisoku_goukei = 0;
gaisoku_chikin = 0;
gaisoku_chuukankin = 0;
gaisoku_sokkin = 0;
for k = 1:length(power)*1/2
    if gaisoku_max_FFT < power(k)
        gaisoku_max_FFT = power(k);
        gaisoku_maxpoint_FFT = k*fs/n;
    end
    gaisoku_goukei = gaisoku_goukei + power(k);
    if k <= 45
        gaisoku_chikin = gaisoku_chikin + power(k);
    elseif 46 <= k && k <= 80
            gaisoku_chuukankin = gaisoku_chuukankin + power(k);
    else
            gaisoku_sokkin = gaisoku_sokkin + power(k); 
    end
end
gaisokuP{i} = power;
gaisoku(i) = gaisoku_maxpoint_FFT;

gaisoku_sokkin_wariai(i) = gaisoku_sokkin/gaisoku_goukei*100;
gaisoku_chikin_wariai(i) = gaisoku_chikin/gaisoku_goukei*100;
gaisoku_chuukankin_wariai(i) = gaisoku_chuukankin/gaisoku_goukei*100;

y=fft(lowpass(highpass(daitaichokukin,10,fs),300,fs));
n = length(daitaichokukin);    % number of samples
f = (0:n-1)*(fs/n);     % frequency range
power = abs(y).^2/n;    % power of the DFT
power = movmean(power,10);
subplot(3,3,i+3)
plot(f,power)
xlabel('Frequency')
ylabel('Power')
title(strcat('��ڒ���FFT',string(i)));
xlim([1 500]);

daitai_max_FFT = 0;
daitai_maxpoint_FFT = 0;
daitai_goukei = 0;
daitai_chikin = 0;
daitai_chuukankin = 0;
daitai_sokkin = 0;
for k = 1:length(power)*1/2
    if daitai_max_FFT < power(k)
        daitai_max_FFT = power(k);
        daitai_maxpoint_FFT = k*fs/n;
    end
    daitai_goukei = daitai_goukei + power(k);
    if k <= 45
        daitai_chikin = daitai_chikin + power(k);
    elseif 46 <= k && k <= 80
            daitai_chuukankin = daitai_chuukankin + power(k);
    else
            daitai_sokkin = daitai_sokkin + power(k); 
    end
end
daitaiP{i} = power;
daitai(i) = daitai_maxpoint_FFT;

daitai_sokkin_wariai(i) = daitai_sokkin/daitai_goukei*100;
daitai_chikin_wariai(i) = daitai_chikin/daitai_goukei*100;
daitai_chuukankin_wariai(i) = daitai_chuukankin/daitai_goukei*100;

y=fft(lowpass(highpass(naisokukoukin,10,fs),300,fs));n = length(naisokukoukin);    % number of samples
f = (0:n-1)*(fs/n);     % frequency range
power = abs(y).^2/n;    % power of the DFT
power = movmean(power,10);
subplot(3,3,i+6)
plot(f,power)
xlabel('Frequency')
ylabel('Power')
title(strcat('�����L��FFT',string(i)));
xlim([1 500]);

naisoku_max_FFT = 0;
naisoku_maxpoint_FFT = 0;
naisoku_goukei = 0;
naisoku_chikin = 0;
naisoku_chuukankin = 0;
naisoku_sokkin = 0;
for k = 1:length(power)*1/2
    if naisoku_max_FFT < power(k)
        naisoku_max_FFT = power(k);
        naisoku_maxpoint_FFT = k*fs/n;
    end
    naisoku_goukei = naisoku_goukei + power(k);
    if k <= 45
        naisoku_chikin = naisoku_chikin + power(k);
    elseif 46 <= k && k <= 80
            naisoku_chuukankin = naisoku_chuukankin + power(k);
    else
            naisoku_sokkin = naisoku_sokkin + power(k); 
    end
end
naisokuP{i} = power;
naisoku(i) = naisoku_maxpoint_FFT;

naisoku_sokkin_wariai(i) = naisoku_sokkin/naisoku_goukei*100;
naisoku_chikin_wariai(i) = naisoku_chikin/naisoku_goukei*100;
naisoku_chuukankin_wariai(i) = naisoku_chuukankin/naisoku_goukei*100;

end

%for i = 1:3
 %   sokkin_heikin(i) = 0;
  %  sokkin_heikin(i) = sokkin_power(i)/sokkin(i);
%end

figure;
plot(gaisoku)
hold on;
plot(daitai)
hold on;
plot(naisoku)
xlabel('�����');
ylabel('emg�ő���g��');
title('EMG�ő���g���J��');
xticks([1 2 3])
xticklabels({'���񑪒�','���ԑ���','�ŏI����'})

chikin_45 = [45 45 45];
sokkin_81 = [81 81 81];
hold on;
plot(sokkin_81)
hold on;
plot(chikin_45)
ylim([1 130]);

legend({'�O���L��','��ڒ���','�����L��','������','���x��'},'Location','northwest','NumColumns',1);

figure('Name','3�؂̋ؑ@�ێg�p�����J��','NumberTitle','off');
subplot(1,3,1)
plot(gaisoku_sokkin_wariai)
hold on;
plot(gaisoku_chikin_wariai)
hold on;
plot(gaisoku_chuukankin_wariai)
xlabel('�����');
ylabel('�ؑ@�ێg�p����');
title('�O���L�؋ؑ@�ێg�p�����J��');
xticks([1 2 3])
xticklabels({'���񑪒�','���ԑ���','�ŏI����'})
legend({'����','�x��','���ԋ�'},'Location','northwest','NumColumns',1);
gaisoku_kinnseni = [gaisoku_chikin_wariai(1) gaisoku_chuukankin_wariai(1) gaisoku_sokkin_wariai(1);gaisoku_chikin_wariai(2) gaisoku_chuukankin_wariai(2) gaisoku_sokkin_wariai(2);gaisoku_chikin_wariai(3) gaisoku_chuukankin_wariai(3) gaisoku_sokkin_wariai(3);];


subplot(1,3,2)
plot(daitai_sokkin_wariai)
hold on;
plot(daitai_chikin_wariai)
hold on;
plot(daitai_chuukankin_wariai)
xlabel('�����');
ylabel('�ؑ@�ێg�p����');
title('��ڒ��؋ؑ@�ێg�p�����J��');
xticks([1 2 3])
xticklabels({'���񑪒�','���ԑ���','�ŏI����'})
legend({'����','�x��','���ԋ�'},'Location','northwest','NumColumns',1);
daitai_kinnseni = [daitai_chikin_wariai(1) daitai_chuukankin_wariai(1) daitai_sokkin_wariai(1);daitai_chikin_wariai(2) daitai_chuukankin_wariai(2) daitai_sokkin_wariai(2);daitai_chikin_wariai(3) daitai_chuukankin_wariai(3) daitai_sokkin_wariai(3);];


subplot(1,3,3)
plot(naisoku_sokkin_wariai)
hold on;
plot(naisoku_chikin_wariai)
hold on;
plot(naisoku_chuukankin_wariai)
xlabel('�����');
ylabel('�ؑ@�ێg�p����');
title('�����L�؋ؑ@�ێg�p�����J��');
xticks([1 2 3])
xticklabels({'���񑪒�','���ԑ���','�ŏI����'})
legend({'����','�x��','���ԋ�'},'Location','northwest','NumColumns',1);
naisoku_kinnseni = [naisoku_chikin_wariai(1) naisoku_chuukankin_wariai(1) naisoku_sokkin_wariai(1);naisoku_chikin_wariai(2) naisoku_chuukankin_wariai(2) naisoku_sokkin_wariai(2);naisoku_chikin_wariai(3) naisoku_chuukankin_wariai(3) naisoku_sokkin_wariai(3);];


figure('Name','3�؂̋ؑ@�ێg�p�����J��','NumberTitle','off');
subplot(1,3,1)
bar(gaisoku_kinnseni,'stacked')
legend({'�x��','���ԋ�','����'},'Location','northwest','NumColumns',1);
xlabel('�����');
ylabel('�ؑ@�ێg�p����');
title('�O���L�؋ؑ@�ێg�p�����J��');

subplot(1,3,2)
bar(daitai_kinnseni,'stacked')
legend({'�x��','���ԋ�','����'},'Location','northwest','NumColumns',1);
xlabel('�����');
ylabel('�ؑ@�ێg�p����');
title('��ڒ��؋ؑ@�ێg�p�����J��');

subplot(1,3,3)
bar(naisoku_kinnseni,'stacked')
legend({'�x��','���ԋ�','����'},'Location','northwest','NumColumns',1);
xlabel('�����');
ylabel('�ؑ@�ێg�p����');
title('�����L�؋ؑ@�ێg�p�����J��');
