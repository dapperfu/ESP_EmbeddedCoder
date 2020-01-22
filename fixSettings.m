function setSettings(mdl)
% Set 
set_param(mdl, 'RTWGenerateCodeOnly', 'on');
set_param(mdl, 'FixedStep', '0.05');

% Display Settings
set_param(mdl,'WideLines','on');
set_param(mdl,'ShowPortDataTypes','on');
set_param(mdl,'ShowStorageClass','on');
set_param(mdl,'ShowTestPointIcons','on');
set_param(mdl,'ShowLineDimensions','on');
set_param(mdl,'LibraryLinkDisplay','all');
set_param(mdl,'SampleTimeColors','on');
set_param(mdl,'SampleTimeAnnotations','on');

% Debugging
set_param(mdl,'RTWRetainRTWFile','on');


save_system(mdl);
