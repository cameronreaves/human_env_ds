run('global_avg_temperature.m')
run('radiative_forcing.m')

% values from imported matrices 
values_T = T(:,2)
years_T = T(:,1)
values_F = F(:,2)
years_F = F(:,1)

% % first plot
% plot(years_T,values_T)
% xlabel('Time (years)')
% ylabel('Temperature (celcius)')
% title('Global Average Temperature vs Time')

% second plot
% plot(years_F,values_F)
% xlabel('Time (years)')
% ylabel('Radiative Forcing (watts / m^2)')
% title('Radiative Forcing vs Time')
% 
% % Radiative forcing is the shortest length, used to subset other data
% length = size(F)
% length = length(1)
% dF = detrend(F(1:length,2),'constant')
% % trend_F = F(1:length,2) - dF
% dT = detrend(T(1:length,2),'constant')
% z = ones(length,1)
% X = [values_F z]
% y = values_T(1:length)
% b = regress(y,X)
% p = linspace(-3,2,length)
% 
% % third plot
% scatter(dF,dT)
% hold on
% plot(p,p*b(1)+b(2))
% xlabel('Radiative Forcing (watts / m^2)')
% ylabel('Temperature (celcius)')
% title('Temperature vs. Radiative Forcing')