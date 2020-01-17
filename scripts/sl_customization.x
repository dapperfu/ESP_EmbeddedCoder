function sl_customization(cm)
% sl_customization for PIL connectivity config.

% Copyright 2008 The MathWorks, Inc.
% $Revision: 1.1.6.2 $
cm.registerTargetInfo(@loc_createConfig);
end

% local function
function config = loc_createConfig
config = rtw.connectivity.ConfigRegistry;
config.ConfigName = 'ESP32 PlatformIO';
config.ConfigClass = 'chibiOS.ConnectivityConfig';
config.SystemTargetFile = {'esp32pio.tlc'};
config.TemplateMakefile = {'esp32pio.tmf'};
end
