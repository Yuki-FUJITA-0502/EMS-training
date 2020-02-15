Ikeda = [32.2 36.1 37.8];
Nabe = [41.8 46.1 46.4];
Monobe = [37.2 36.5 37.8];
Suzuki = [46.7 48.2 48.8];
Kaito = [52.2 52.6 48.7];
Okamura = [57.0 54.6 58.9];
Takechi = [54.0 55.3 56.9];
Tsuji = [63.4 63.6 64.1];
Usui = [39.0 42.0 41.8];
Rikiya = [64.1 62.6 64.2];
Yamao = [46.5 45.6 47.1];
sokutei = [1 2 3];
figure;
plot(sokutei,Ikeda,'-o');
xlabel('‘ª’è“ú');
ylabel('‹ØŒú(mm)');
title('‹ØŒú‘JˆÚ');
xticks([1 2 3])
xticklabels({'‰‰ñ‘ª’è','’†ŠÔ‘ª’è','ÅI‘ª’è'})
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



%lgd = legend({'Ikeda','Watanabe','Monobe','Suzuki','Takano','Okamura','Takechi','Tsuji','Usui','Fujii','Yamao'},'Location','northwest','NumColumns',2);
%title(lgd,'tester Name')
data = vertcat(Ikeda,Nabe,Monobe,Suzuki,Kaito,Okamura,Takechi,Tsuji,Usui,Rikiya,Yamao);
[h p] = ttest(data(:,1),data(:,3));