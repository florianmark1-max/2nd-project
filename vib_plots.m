function vib_plots(t, x, varargin)
% vib_plots Helper to plot time response and save to file if requested
% vib_plots(t,x, 'filename', 'examples/figs/resp.png', 'title','MyPlot')
% Inputs:
% t,x - time and displacement vectors
% Optional name-value:
% 'filename' - if provided, save PNG there (folder must exist)
% 'title' - plot title
%
% Example:
% vib_plots(t,x,'filename','examples/figs/free_resp.png');
p = inputParser();
addParameter(p,'filename','', @(s)ischar(s) || isstring(s));
addParameter(p,'title','Time response', @(s)ischar(s) || isstring(s));
parse(p, varargin{:});
fname = p.Results.filename;
plt_title = p.Results.title;
figure('visible','off');
plot(t, x);
xlabel('Time (s)');
ylabel('Displacement (m)');
title(plt_title);
grid on;
if ~isempty(fname)
print('-dpng', fname);
close; % close invisible figure
end
