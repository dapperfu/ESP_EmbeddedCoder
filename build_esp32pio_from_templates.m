%% Build ; for all given templates.
%
% Generate a minimal project & generate code.
%
% Useful for:
%   Debugging templates.
%   Debugging targets.
%   Continuous integration.

P = mfilename('fullpath');
script_dir = fileparts(P);
build_dir = fullfile(script_dir, 'build_dir');
mkdir(build_dir);
cd(build_dir);

ec_models = {
    'code_generation_system',
    'multi_rate',
};
%  file without the stuffix.
targets = {
    'espidf',
    'espidf_arduino',
};
% Close all models
bdclose('all');
for target_idx = 1:length(targets)
    target = targets{target_idx};
for idx = 1:length(ec_models)
    model = ec_models{idx};
    hdl = Simulink.createFromTemplate(model);
    configSet = getActiveConfigSet(bdroot);
    % 
    switchTarget(configSet, sprintf('%s.tlc', target), []);
    save_system(hdl, sprintf('%s', '%s', model, target));
    %
    fixSettings(hdl);
    slbuild(hdl);
    save_system(hdl);
    close_system(hdl);
end
end
