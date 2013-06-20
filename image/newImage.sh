#!/bin/bash

wget -qO - http://get.pharo.org/20+vm | bash
./pharo Pharo.image ../codegen-scripts/LoadVMMaker.st
./pharo Pharo.image ImageConfiguration.st