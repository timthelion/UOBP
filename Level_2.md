frames are proposed to look like:

[START_FLAG(1 octet) |
 LEN(2 octets)       |
 TYPE(1 octet)       |
 SUBTYPE(1 octet)    |
 INFORMATION         |
 XOR(1 octet)        |
 END_FLAG(1 octet)   ]

A firmware implementation of this level 2 can be found here as defined by the functions "sendFrame" and "checkForFrameAndReact."

https://raw.github.com/timthelion/FCHAD_firmware_arduino/master/FCHAD_firmware.ino
