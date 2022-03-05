#!/bin/bash

# Set PATH to include PlatormIO core binaries
if [ -d "$HOME/.platformio/penv/bin" ] ; then
    PATH="$HOME/.platformio/penv/bin:$PATH"
fi

