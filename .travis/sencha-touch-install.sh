#!/bin/bash
#
# Install Sencha Touch SDK
#
# Copyright (c) 2013 Superstruct Ltd - https://superstruct.co
# Open source under the MIT License - http://en.wikipedia.org/wiki/MIT_License

wget http://cdn.sencha.com/touch/sencha-touch-$SENCHA_TOUCH_VERSION-commercial.zip
unzip -q sencha-touch-$SENCHA_TOUCH_VERSION-commercial.zip
ln -sv `pwd`/sencha-touch-$SENCHA_TOUCH_VERSION* $TRAVIS_BUILD_DIR/sdks/touch