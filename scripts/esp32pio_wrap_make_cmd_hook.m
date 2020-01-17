function makeCmd = platformio_wrap_make_cmd_hook(args)
% platformio_wrap_make_cmd_hook.m - Issue make command
disp(args)
return "platformio"
