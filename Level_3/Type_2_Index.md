Key presses and other events sent from braille device.

## Type 2 subType 0
Standard PC keyboard key-press.
LEN=2
TYPE=2
SUBTYPE=0
INFO=node (1 octet) + keycode(1 octet)

## Type 2 subType 1
Braille key chord(chording is done within the device!).
LEN=2
TYPE=2
SUBTYPE=1
INFO=node(1 octet) + key(1 octet).  Bits represent braille dots in standard braille dot form

[src]
14
25
36
78
[/src]

## Type 2 subType 2

Braille routing key key-press.
LEN=4
TYPE=2
SUBTYPE=2
INFO=node(1 octet) + Routing key row(2 octets).  Routing key column(2 octets).

## FCHAD touch sensors.

depending on whether response time or detail are more important to the driver, we can specify in the settings whether we want to receive raw events or condesed events.  With condensed events, only the extreme touches will be sent.  Otherwise, every touch and release is sent.

## Type 2 subType 3
FCHAD touch sensor down.
LEN=5
TYPE=2
subType=3
INFO=node (1 octet) + sensor row(2 octets) + sensor column (2 octets)

## Type 2 subType 4
FCHAD touch sensor up. Same as subtype 3 but for an up signal.
## Type 2 subType 5

FCHAD touch sensor pressed extremes. This signal gets sent every time these extremes change.

The extremes are the <1:Topmost leftmost> <2:Leftmost topmost> <3:Leftmost bottom-most> <4:Topmost rightmost> <5:Rightmost topmost><6:Rightmost bottom-most> <7:bottommost leftmost> <8:bottom-most rightmost>

[src]
------
--14--
-2xx5-
-3xx6-
--78--
------
[/src]


LEN=16
TYPE=2
SUBTYPE=5
INFO=node (1 octet) + extreme1 (2 octets) + extreme2 (2 octets) + extreme3 (2 octets) + extreme4(2 octets) + extreme5 (2 octets) + extreme6 (2 octets) + extreme7 (2 octets) + extreme8(2 octets)
