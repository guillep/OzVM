Gofer new
	smalltalkhubUser: 'Guille' project: 'ObjectSpace';
	configurationOf: 'OzVM';
	load.
	
((Smalltalk at: #ConfigurationOfOzVM) project version: '1.2.3') load.

(Smalltalk saveAs: 'generator') 
    ifFalse: [ Smalltalk snapshot: false andQuit: true ]
