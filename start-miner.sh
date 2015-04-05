#!/bin/sh
#
# Add the following to cron to auto-start at bootup:
# @reboot /usr/bin/screen -AmdS miner /usr/local/bin/start-miner.sh
#
CONFIG_FILE=/usr/local/bin/.miner_opts.sh
# wait a few seconds before launching the miner to ensure that the network has a chance to come up
/bin/sleep 10
if [ -f "${CONFIG_FILE}" ]; then
/bin/sh ${CONFIG_FILE}
else
echo "Not configured! Please run 'mining-setup' to configure your miner!"
fi
