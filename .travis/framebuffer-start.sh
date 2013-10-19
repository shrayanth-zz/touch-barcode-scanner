#!/bin/bash
#
# Start X Virtual Framebuffer for running tests in a web browser e.g. Firefox.
#
# Copyright (c) 2013 Superstruct Ltd - https://superstruct.co
# Open source under the MIT License - http://en.wikipedia.org/wiki/MIT_License

export DISPLAY=:99.0
sh -e /etc/init.d/xvfb start