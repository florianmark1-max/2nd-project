function t = vib_time(fs, T)
% vib_time Create uniform time vector
% t = vib_time(fs, T)
% Inputs:
% fs - sampling frequency in Hz (scalar, >0)
% T - total duration in seconds (scalar, >0)
% Output:
% t - row vector of time samples from 0 to T (inclusive) with spacing 1/fs
%
% Example:
% t = vib_time(1000, 1.0);
if ~(isscalar(fs) && fs>0 && isfinite(fs))
error('fs must be a positive scalar');
end
if ~(isscalar(T) && T>0 && isfinite(T))
error('T must be a positive scalar');
end
dt = 1/round(fs);
t = 0:dt:T;
end

