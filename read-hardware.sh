#!/bin/bash
dmidecode -t baseboard
Mainboard auslesen: dmidecode -t baseboard

BIOS auslesen: dmidecode -t bios

Speicher auslesen: dmidecode -t memory

Chassis auslesen: dmidecode -t chassis

Prozessor auslesen: dmidecode -t processor

Prozessorcache auslesen: dmidecode -t cache

Mainboard Anschlüsse auslesen: dmidecode -t  connector

PCI Slots auslesen: dmidecode -t slot
