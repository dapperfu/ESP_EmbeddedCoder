function espidf_uart(block)
setup(block);

function setup(block)
% Register number of ports
block.NumInputPorts  = 0;
block.NumOutputPorts = 0;

% Setup port properties to be inherited or dynamic
block.SetPreCompInpPortInfoToDynamic;
block.SetPreCompOutPortInfoToDynamic;

% Register parameters
block.NumDialogPrms     = 0;
block.SimStateCompliance = 'DefaultSimState';

% Used functions.
block.RegBlockMethod('WriteRTW', @WriteRTW);
block.RegBlockMethod('PostPropagationSetup', @DoPostPropSetup);

% Null functions.
block.RegBlockMethod('Outputs', @nullFCN);   % Required
block.RegBlockMethod('Start', @nullFCN);   % Required
block.RegBlockMethod('Update', @nullFCN); % Required
block.RegBlockMethod('Terminate', @nullFCN); % Required
block.RegBlockMethod('InitializeConditions', @nullFCN); % Required
block.RegBlockMethod('InitializeConditions', @nullFCN); % Required

%% Block runs on TLC in accelerator mode.
block.SetAccelRunOnTLC(true);

function nullFCN(~)
%end function

function DoPostPropSetup(block)
%% Register all tunable parameters as runtime parameters.
block.AutoRegRuntimePrms;
%end function

function WriteRTW(block)
for field = get_param(block.BlockHandle, 'MaskNames')'
    block.WriteRTWParam('string', field{1}, get_param(block.BlockHandle, field{1}));
end
%end function