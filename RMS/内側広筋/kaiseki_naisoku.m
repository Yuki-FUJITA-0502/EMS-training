load('Ikeda_naisoku');
No1 = naisoku_rms;
load('Nabe_naisoku');
No2 = naisoku_rms;
load('Monobe_naisoku');
No3 = naisoku_rms;
load('Suzuki_naisoku');
No4 = naisoku_rms;
load('Kaito_naisoku');
No5 = naisoku_rms;
load('Okamura_naisoku');
No6 = naisoku_rms;
load('Takechi_naisoku');
No7 = naisoku_rms;
load('Tsuji_naisoku');
No8 = naisoku_rms;
load('Usui_naisoku');
No9 = naisoku_rms;
load('Rikiya_naisoku');
No10 = naisoku_rms;
load('Yamao_naisoku');
No11 = naisoku_rms;
sokutei = [1 2 3];
figure;
plot(sokutei,No1,'-o');
xlabel('ªèú');
ylabel('emgRMS(v)');
title('Ød}RMSJÚ-à¤LØ-');
xticks([1 2 3])
xticklabels({'ñªè','Ôªè','ÅIªè'})
hold on;
plot(sokutei,No2,'-o');
hold on;
plot(sokutei,No3,'-o');
hold on;
plot(sokutei,No4,'-o');
hold on;
plot(sokutei,No5,'-o');
hold on;
plot(sokutei,No6,'-o');
hold on;
plot(sokutei,No7,'-o');
hold on;
plot(sokutei,No8,'-o');
hold on;
plot(sokutei,No9,'-o');
hold on;
plot(sokutei,No10,'-o');
hold on;
plot(sokutei,No11,'-o');
%legend({'Ikeda','Watanabe','Monobe','Suzuki','Takano','Okamura','Takechi','Tsuji','Usui','Fujii','Yamao'},'Location','northwest','NumColumns',2);
data = vertcat(No1,No2,No3,No4,No5,No6,No7,No8,No8,No9,No10,No11);
[h p] = ttest(data(:,1),data(:,3));
