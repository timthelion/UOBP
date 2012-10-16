frames are proposed to look like:

[START_FLAG(1 octet) |
 LEN(2 octets)       |
 TYPE(1 octet)       |
 SUBTYPE(1 octet)    |
 INFORMATION         |
 XOR(1 octet)        |
 END_FLAG(1 octet)   ]

A firmware implementation of this level 2 can be found in this repo as defined by the functions "sendFrame" and "checkForFrameAndReact."

START_FLAG=200
END_FLAG=201
ESCAPE_CHAR=202

Values equaling the values of the start and end flags(and escape chars) must be escaped.
