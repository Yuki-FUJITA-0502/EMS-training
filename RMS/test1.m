load('Suzuki3_fft_test2');

naisokukoukin = [];
daitaichokukin = [];
gaisokukoukin = [];
toruku = [];
kakudo= [];

gaisokukoukin = (data(1:1):data(1:10000));
daitaichokukin = (data(1:10001):data(1:20000));
naisokukoukin = (data(1:20001):data(1:30000));
toruku = (data(1:30001):data(1:40000));
kakudo = (data(1:40001):data(1:50000));

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
