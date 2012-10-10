# Drivers/Braille/XWindow/Makefile.  Generated from Makefile.in by configure.
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

DRIVER_CODE = xw
DRIVER_NAME = XWindow
DRIVER_COMMENT = X11, Windows
DRIVER_VERSION = 0.1, 2004
DRIVER_DEVELOPERS = Samuel Thibault <samuel.thibault@ens-lyon.org>
BRL_OBJS = $(XTK_LIBS) $(X_LIBS)
include $(SRC_TOP)braille.mk

braille.$O:
	$(CC) $(BRL_CFLAGS) $(X_CFLAGS) -c $(SRC_DIR)/braille.c

