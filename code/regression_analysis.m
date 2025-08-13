nominals = [10, 2000, 1e6];
boj_10 = [10.15,10.12,10.2,10.12,10.06,10.03,10.05,10.04,10.11,10.07,...
10.06,10.16,10.1,10.11,10.22,10.06,10.14,10.06,10.07,10.11,...
10.17,10.03,10.13,10.14,10.07,10.09,10.1,10.19,10.15,10.18];
boj_2k = [1.9633,1.9478,1.952,1.972,1.9605,1.9564,1.9683,1.9622,1.9497,1.9646,...
1.9723,1.9744,1.9508,1.9477,1.9729,1.9809,1.9443,1.9544,1.9686,1.9545,...
1.9494,1.9565,1.9618,1.965,1.9568,1.9549,1.9685,1.9671,1.9546,1.9713];
boj_1M = [1.0142,1.0198,1.001,1.0074,1.0308,1.0205,1.016,1.0368,1.0278,1.0117,...
1.0263,1.0027,1.0142,1.0257,1.0106,1.0431,1.0383,1.0252,1.0176,1.0142,...
1.0119,1.0138,1.017,1.0036,1.0052,1.0352,1.0249,0.9994,1.0091,1.0202];
ess_10 = [10.06,10.13,10.18,10.12,10.11,10.15,10.17,10.14,10.18,10.15,...
10.09,10.1,10.03,10.1,10.07,10.02,10.04,9.98,10.05,10.01,...
10.12,10.26,10.34,10.23,10.2,10.22,10.13,10.38,10.17,10.09];
ess_2k = [1.9518,1.9533,1.965,1.977,1.9534,1.956,1.9525,1.9647,1.9522,1.9619,...
1.9683,1.9563,1.9632,1.9548,1.967,1.948,1.9622,1.9696,1.9733,1.927,...
1.9226,1.9264,1.9515,1.9592,1.9372,1.9215,1.9546,1.9223,1.9682,1.9593];
ess_1M = [1.0303,0.9673,0.9943,0.9747,0.9993,0.9678,0.9711,0.9823,0.9796,0.9906,...
1.0287,1.0244,1.0021,0.9998,1.0318,1.02,1.0071,1.0152,1.0033,0.978,...
0.988,0.9915,0.9897,0.9922,0.9801,0.9889,0.9853,0.9829,0.9994,0.9787];
% So made a annoynomus function to use later for calculations
get_errorv = @(measured, nominal) abs((measured - nominal) ./ nominal) * 100;
%average percent errors celculatioon for boj
boj_error = [mean(get_errorv(boj_10, nominals(1))), ...
mean(get_errorv(boj_2k * 1000, nominals(2))), ...
mean(get_errorv(boj_1M * 1e6, nominals(3)))];
%average percent errors celculatioon for ess
ess_error = [mean(get_errorv(ess_10, nominals(1))), ...
mean(get_errorv(ess_2k * 1000, nominals(2))), ...
mean(get_errorv(ess_1M * 1e6, nominals(3)))];
% linear regression for BOJACK
mdl_boj = fitlm(nominals, boj_error);
% T-test coefficients
disp('BOJACK Coefficients (T-Test)');
disp(mdl_boj.Coefficients);
% ANOVA table
disp('BOJACK ANOVA TABLE');
anova(mdl_boj)
% linear regression for ESSMETUIN
mdl_ess = fitlm(nominals, ess_error);
% T-test coefficients
disp('ESSMETUIN Coefficients (T-Test)');
disp(mdl_ess.Coefficients);
% ANOVA table
disp('ESSMETUIN ANOVA Table');
anova(mdl_ess)
% line Graph: Percent Error vs Resistance
figure;
hold on;
% i used logarithmic scale to draw my graph
% Plot BOJACK data points and regression line
semilogx(nominals, boj_error, 'ob-', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'BOJACK');
plot(nominals, predict(mdl_boj, nominals'), '--b', 'LineWidth', 1.5, 'DisplayName', 'BOJACK Fit');
% Plot ESSMETUIN data points and regression line
semilogx(nominals, ess_error, 'xr-', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'ESSMETUIN');
plot(nominals, predict(mdl_ess, nominals'), '--r', 'LineWidth', 1.5, 'DisplayName', 'ESSMETUIN FIT');
set(gca, 'XScale', 'log')
% formatting
xlabel('Resistance (Ohms)');
ylabel('Average Percent Error (%)');
title('Average Percent Error vs Resistance');
legend('Location', 'northwest');
grid on;
hold off;