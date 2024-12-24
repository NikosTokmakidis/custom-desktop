#!/bin/bash
nmcli device wifi rescan
sleep 1
kitty -e nmtui
