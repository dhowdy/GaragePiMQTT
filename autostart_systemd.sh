#!/bin/bash
cp garagepimqtt@pi.service /etc/systemd/system/garagepimqtt@${SUDO_USER:-${USER}}.service
sed -i "s?/home/pi/GaragePiMQTT?`pwd`?" /etc/systemd/system/garagepimqtt@${SUDO_USER:-${USER}}.service
systemctl --system daemon-reload
systemctl enable garagepimqtt@${SUDO_USER:-${USER}}.service
