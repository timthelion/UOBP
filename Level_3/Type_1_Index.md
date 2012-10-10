Display frames.

[Type 1 subType 0](/Type_1/1_0.md):

LENGTH=1 octet+ length of buffer.
INFO=node(1 octet)+
Buffer to be displayed by a multi cell braille device.  This buffer is left to right top to bottom and must have a length equal to the number of columns specified by the device x the number of rows specified by the device.

[Type 1 subtype 1](/Type_1/1_0.md):

LENGTH=3 octets
INFO=node(1 octet)+
Character to be displayed by an FCHAD device.(2 octets)
