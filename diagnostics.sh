#!/bin/bash

set -x

glxinfo -B
GALLIUM_DRIVER=d3d12 glxinfo -B

ls /dev/

glxgears