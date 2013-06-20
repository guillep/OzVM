"the bae configuration for loading VMMaker can be found under
../codegen-scripts/LoadVMMaker.st"

"Open workspace with example Configurations"
Workspace openContents: (String streamContents: [ :stream|
        stream << 'OzVMBuilder buildMacOSX32.'; cr.
		stream << 'OzJITVMBuilder buildMacOSX32.'; cr.
]).

"save the image and quit"
Smalltalk snapshot: true andQuit: true.
