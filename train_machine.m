M = 20;
rng(0)
net = newff(minmax(datanormal),[120,100,46],{'tansig','logsig','logsig'},'trainscg');
net.trainParam.epochs = 600;
net.divideFcn = 'divideind';
net = init(net);

tstind = 1:M;
trnind = tstind(end)+1:N/46;

trnInd = [ind0(t1(trnind)),ind0(t2(trnind)),ind0(t3(trnind)),ind0(t4(trnind)),...
    ind0(t5(trnind)),ind0(t6(trnind)),ind0(t7(trnind)),ind0(t8(trnind)),...
    ind0(t9(trnind)),ind0(t10(trnind)),ind0(t11(trnind)),ind0(t12(trnind)),...
    ind0(t13(trnind)),ind0(t14(trnind)),ind0(t15(trnind)),ind0(t16(trnind)),...
    ind0(t17(trnind)),ind0(t18(trnind)),ind0(t19(trnind)),ind0(t20(trnind)),...
    ind0(t21(trnind)),ind0(t22(trnind)),ind0(t23(trnind)),ind0(t24(trnind)),...
    ind0(t25(trnind)),ind0(t26(trnind)),ind0(t27(trnind)),ind0(t28(trnind)),...
    ind0(t29(trnind)),ind0(t30(trnind)),ind0(t31(trnind)),ind0(t32(trnind)),...
    ind0(t33(trnind)),ind0(t34(trnind)),ind0(t35(trnind)),ind0(t36(trnind)),...
    ind0(t37(trnind)),ind0(t38(trnind)),ind0(t39(trnind)),ind0(t40(trnind)),...
    ind0(t41(trnind)),ind0(t42(trnind)),ind0(t43(trnind)),ind0(t44(trnind)),...
    ind0(t45(trnind)),ind0(t46(trnind))];
tstInd = [ind0(t1(tstind)),ind0(t2(tstind)),ind0(t3(tstind)),ind0(t4(tstind)),...
    ind0(t5(tstind)),ind0(t6(tstind)),ind0(t7(tstind)),ind0(t8(tstind)),...
    ind0(t9(tstind)),ind0(t10(tstind)),ind0(t11(tstind)),ind0(t12(tstind)),...
    ind0(t13(tstind)),ind0(t14(tstind)),ind0(t15(tstind)),ind0(t16(tstind)),...
    ind0(t17(tstind)),ind0(t18(tstind)),ind0(t19(tstind)),ind0(t20(tstind)),...
    ind0(t21(tstind)),ind0(t22(tstind)),ind0(t23(tstind)),ind0(t24(tstind)),...
    ind0(t25(tstind)),ind0(t26(tstind)),ind0(t27(tstind)),ind0(t28(tstind)),...
    ind0(t29(tstind)),ind0(t30(tstind)),ind0(t31(tstind)),ind0(t32(tstind)),...
    ind0(t33(tstind)),ind0(t34(tstind)),ind0(t35(tstind)),ind0(t36(tstind)),...
    ind0(t37(tstind)),ind0(t38(tstind)),ind0(t39(tstind)),ind0(t40(tstind)),...
    ind0(t41(tstind)),ind0(t42(tstind)),ind0(t43(tstind)),ind0(t44(tstind)),...
    ind0(t45(tstind)),ind0(t46(tstind))];

net.divideParam.trainInd = trnInd;
net.divideParam.testInd = tstInd;

[net,tr]=train(net,datanormal,target);