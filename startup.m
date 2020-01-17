function startup()
fprintf('%%%% Startup set path for platformio ESP32\n');
%Add path with subfolders
cwd=fileparts(mfilename('fullpath'));
addpath(cwd);
addpath(fullfile(cwd,'blocks'));
addpath(fullfile(cwd,'rtw'));
addpath(fullfile(cwd,'scripts'));
addpath(fullfile(cwd,'scripts','init'));
addpath(fullfile(cwd,'scripts','util'));
sl_refresh_customizations;
% [EOF] startup.m
