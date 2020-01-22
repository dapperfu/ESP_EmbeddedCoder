function build_examples
% Build all examples.

script_dir = fileparts(mfilename('fullpath'));

addpath(fullfile(script_dir, 'examples'));

build_dir = fullfile(script_dir, 'build', 'examples');
mkdir(build_dir);
cd(build_dir);

examples = dir(fullfile(script_dir, 'examples', '*.slx'));

for example = examples'
   build_example(example); 
end