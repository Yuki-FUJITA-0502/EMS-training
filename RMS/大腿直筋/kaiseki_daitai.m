load('Ikeda_daitai');
No1 = daitai_rms;
load('Nabe_daitai');
No2 = daitai_rms;
load('Monobe_daitai');
No3 = daitai_rms;
load('Suzuki_daitai');
No4 = daitai_rms;
load('Kaito_daitai');
No5 = daitai_rms;
load('Okamura_daitai');
No6 = daitai_rms;
load('Takechi_daitai');
No7 = daitai_rms;
load('Tsuji_daitai');
No8 = daitai_rms;
load('Usui_daitai');
No9 = daitai_rms;
load('Rikiya_daitai');
No10 = daitai_rms;
load('Yamao_daitai');
No11 = daitai_rms;
sokutei = [1 2 3];
figure;
plot(sokutei,No1,'-o');
xlabel('ªèú');
ylabel('emgRMS(v)');
title('Ød}RMSJÚ-åÚ¼Ø-');
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

