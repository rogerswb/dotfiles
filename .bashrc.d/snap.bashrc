#!/bin/bash

# set PATH to include Snap applications
if [ -d "/snap" ] ; then
    PATH="/snap/bin:$PATH"
fi