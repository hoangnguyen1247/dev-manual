#!/bin/bash
set -e

ApiDashPackageName=apidash-linux-amd64.deb
# wget https://github.com/foss42/apidash/releases/latest/download/${ApiDashPackageName}
sudo apt install ./${ApiDashPackageName}
