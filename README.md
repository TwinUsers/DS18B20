DS18B20
=======

A perl script to get temperature values from DS18B20 1-wire temperature sensors.

This script can read temperature values from multiple sensors. 
A value is shown with unique ID of a sensor.

# Requirements

- Raspberry Pi
- Loaded kernel modules w1-gpio and w1-therm
- DS18B20 sensors connected to GPIO pins

# Usage

    $ getDS18B20.pl 
    [10-000801195878] 21.3
    [10-0008011a06cc] 24.2
    [10-000800fb2c0a] 15.9
    [10-000801195f7f] 17.2

# Contact
Osamu Mizuno / omzn
