cmd_drivers/leds/trigger/built-in.o :=  mips-linux-ld  -m elf32btsmip   -r -o drivers/leds/trigger/built-in.o drivers/leds/trigger/ledtrig-timer.o drivers/leds/trigger/ledtrig-heartbeat.o drivers/leds/trigger/ledtrig-gpio.o drivers/leds/trigger/ledtrig-default-on.o 
