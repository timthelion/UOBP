# Type 0

Initialization frames.

[Type 0, subType 0](/Type_0/0_0.md):

Request for initialization from host to Braille device.

[Type 0, subType 1](/Type_0/0_1.md):

Initialization frame from braille device.  Response to a frame type[0:0].

[Type 0 subType 2](/Type_0/0_2.md):

A frame wich sends non-persistent(session length) settings from the driver to the device.

[Type 0 subtype 3](/Type_0/0_3.md):

Sets the persistant settings in the device.  Also sets the per session settings at the same time.  If you want to set the persistent settings, but run the current session with different settings you must first set persistent settings and then set the non persistent settings afterwards.
