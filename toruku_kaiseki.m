Ikeda = [126.2 163.9 173.5];
Nabe = [252.0 247.9 262.6];
Monobe = [112.6 142.3 119.4];
Suzuki = [102.9 140.3 150.2];
Kaito = [220.6 220.0 229.6];
Okamura = [152.3 173.6 153.8];
Takechi = [157.1 157.1 175.6];
Tsuji = [267.1 228.6 272.7];
Usui = [89.0 118.2 128.9];
Rikiya = [242.6 218.0 238.9];
Yamao = [121.6 201.9 213.2];
sokutei = [1 2 3];
figure;
plot(sokutei,Ikeda,'-o');
xlabel('測定日');
ylabel('トルク(N・m)');
title('トルク遷移');
xticks([1 2 3])
xticklabels({'初回測定','中間測定','最終測定'})
hold on;
plot(sokutei,Nabe,'-o');
hold on;
plot(sokutei,Monobe,'-o');
hold on;
plot(sokutei,Suzuki,'-o');
hold on;
plot(sokutei,Kaito,'-o');
hold on;
plot(sokutei,Okamura,'-o');
hold on;
plot(sokutei,Takechi,'-o');
hold on;
plot(sokutei,Tsuji,'-o');
hold on;
plot(sokutei,Usui,'-o');
hold on;
plot(sokutei,Rikiya,'-o');
hold on;
plot(sokutei,Yamao,'-o');

data = vertcat(Ikeda,Nabe,Monobe,Suzuki,Kaito,Okamura,Takechi,Tsuji,Usui,Rikiya,Yamao);
[h p] = ttest(data(:,1),data(:,3));
%lgd = legend({'Ikeda','Watanabe','Monobe','Suzuki','Takano','Okamura','Takechi','Tsuji','Usui','Fujii','Yamao'},'Location','northwest','NumColumns',2);
%title(lgd,'tester Name')
