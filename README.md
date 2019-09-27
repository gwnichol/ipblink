# IP Blink

One useful device for learning about computers and hardware interfacing is a Raspberry Pi single board computer.
I currently carry in my backpack a RPi Zero W to use for testing and general messing around with things I don't trust myself enough
not to break my laptop with.

One issue with the using an RPi on wifi, is that you need to know its IP address to be able to ssh into it. 
That is why I created [ipblink](https://github.com/gwnichol/ipblink). This little tool can be used to blink the IP address of the
Raspberry Pi using the LED accessed at `/sys/class/leds/led0`. The IP address is blinked using Morse code.

I decided to use Morse code because it is compact, yet easy to distinguish between numbers. It also allows me to blink the code for a `"."`, which acts
an obvious separator between bytes. 

### Build

This repository includes a Makefile so that the script can be installed with `make install`. Also, included is a systemd service file that
can be activated with `systemctl start ipblink.service && systemctl enable ipblink.service`. This will cause the IP address to blink after
a network connection is made. For a Raspberry Pi with Arch Linux ARM installed, I added a PKGBUILD file.
Consult [Makepkg#Usage](https://wiki.archlinux.org/index.php/Makepkg#Usage) in the Arch Linux WIKI on how to use it.

### Applicable Morse Code Cheat Sheet

| Character 	| Morse Code       	|
|-----------	|------------------	|
| 0         	| `-- -- -- -- --` 	|
| 1         	| `- -- -- -- --`  	|
| 2         	| `- - -- -- --`   	|
| 3         	| `- - - -- --`    	|
| 4         	| `- - - - --`     	|
| 5         	| `- - - - -`      	|
| 6         	| `-- - - - -`     	|
| 7         	| `-- -- - - -`    	|
| 8         	| `-- -- -- - -`   	|
| 9         	| `-- -- -- -- -`  	|
| .         	| `- -- - -- - --` 	|

