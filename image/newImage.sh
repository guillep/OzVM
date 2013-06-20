#!/bin/bash

wget -qO - http://get.pharo.org/20+vm | bash

#load OzVMMaker and save as generator.image
./pharo Pharo.image ../codegen-scripts/LoadVMMaker.st

#load the VM building code in the generator image
./pharo generator.image ImageConfiguration.st