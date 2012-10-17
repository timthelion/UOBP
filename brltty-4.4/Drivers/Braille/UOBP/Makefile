# Drivers/Braille/UOBP/Makefile.  Generated from Makefile.in by configure.
###############################################################################
# BRLTTY - A background process providing access to the console screen (when in
#          text mode) for a blind person using a refreshable braille display.
#
# Copyright (C) 1995-2012 by The BRLTTY Developers.
#
# BRLTTY comes with ABSOLUTELY NO WARRANTY.
#
# This is free software, placed under the terms of the
# GNU General Public License, as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any
# later version. Please see the file LICENSE-GPL for details.
#
# Web Page: http://mielke.cc/brltty/
#
# This software is maintained by Dave Mielke <dave@mielke.cc>.
###############################################################################

SRC_TOP = ../../../
SRC_DIR = .


BLD_TOP = ./../../../
BLD_DIR = .

include $(SRC_TOP)common.mk

###############################################################################
# BRLTTY - A background process providing access to the console screen (when in
#          text mode) for a blind person using a refreshable braille display.
#
# Copyright (C) 1995-2012 by The BRLTTY Developers.
#
# BRLTTY comes with ABSOLUTELY NO WARRANTY.
#
# This is free software, placed under the terms of the
# GNU General Public License, as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any
# later version. Please see the file LICENSE-GPL for details.
#
# Web Page: http://mielke.cc/brltty/
#
# This software is maintained by Dave Mielke <dave@mielke.cc>.
###############################################################################

DRIVER_CODE = ob
DRIVER_NAME = UOBP
DRIVER_COMMENT = Universal Open Braille Protocol driver.
DRIVER_VERSION = 0.0
DRIVER_DEVELOPERS = Timothy Hobbs
include $(SRC_TOP)braille.mk

SRC_FILES = uobp_braille.c FCHAD_firmware_arduino/level2.c

OBJ_FILES = $(SRC_FILES:.c=.$O)

braille.$O: $(OBJ_FILES)
	$(MKOBJ)  $@ $(OBJ_FILES)

%.$O: $(SRC_DIR)/%.c
	$(CC) $(BRL_CFLAGS) -o $@ -c $<
