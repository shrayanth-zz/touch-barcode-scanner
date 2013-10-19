#!/bin/bash
#
# Build package with Sencha Cmd
#
# Copyright (c) 2013 Superstruct Ltd - https://superstruct.co
# Open source under the MIT License - http://en.wikipedia.org/wiki/MIT_License

cd $TRAVIS_BUILD_DIR/packages/superstruct-touch-barcode-scanner && sencha package build