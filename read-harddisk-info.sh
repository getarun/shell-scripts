#!/bin/bash
/sbin/udevadm info --query=property --name=sda | grep ID_SERIAL
