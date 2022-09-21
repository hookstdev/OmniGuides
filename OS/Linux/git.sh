#!/bin/bash

curl -s https://raw.githubusercontent.com/hookstdev/OmniGuides/omni/OS/Linux/linux.sh > tmp.sh
chmod a+x tmp.sh
./tmp.sh
rm tmp.sh
