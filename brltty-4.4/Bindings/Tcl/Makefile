# Bindings/Tcl/Makefile.  Generated from Makefile.in by configure.
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

SRC_TOP = ../../
SRC_DIR = .


BLD_TOP = ./../../
BLD_DIR = .

include $(SRC_TOP)common.mk

###############################################################################
# libbrlapi - A library providing access to braille terminals for applications.
#
# Copyright (C) 2006-2012 by Dave Mielke <dave@mielke.cc>
#
# libbrlapi comes with ABSOLUTELY NO WARRANTY.
#
# This is free software, placed under the terms of the
# GNU Lesser General Public License, as published by the Free Software
# Foundation; either version 2.1 of the License, or (at your option) any
# later version. Please see the file LICENSE-LGPL for details.
#
# Web Page: http://mielke.cc/brltty/
#
# This software is maintained by Dave Mielke <dave@mielke.cc>.
###############################################################################

include $(SRC_TOP)bindings.mk

TCL_OK = true
TCLSH = /usr/bin/tclsh8.6
TCL_CPPFLAGS = -I/usr/include
TCL_LIBS = -L/usr/lib -ltcl8.6
TCL_DIR = /usr/lib
TCL_DESTDIR = $(INSTALL_ROOT)

TCL_PKG = $(TCL_DIR)/$(API_NAME)-$(API_RELEASE)
TCL_API = $(LIB_PFX)$(API_NAME)_tcl.$(LIB_EXT)

all: $(TCL_API)

$(TCL_API): bindings.$O $(API_NAME)
	$(MKLIB:<name>=$(API_NAME)) $@ bindings.$O $(TCL_LIBS) $(API_LDFLAGS)

bindings.$O:
	$(CC) $(TCL_CPPFLAGS) $(LIBCFLAGS) -o $@ -c $(SRC_DIR)/bindings.c

mkindex:
	echo >$@ 'pkg_mkIndex $(TCL_DESTDIR)$(TCL_PKG) $(TCL_API)'

clean::
	-rm -f $(TCL_API) mkindex

install: all mkindex
	$(INSTALL_DIRECTORY) $(TCL_DESTDIR)$(TCL_PKG)
	$(INSTALL_PROGRAM) $(TCL_API) $(TCL_DESTDIR)$(TCL_PKG)
	$(TCLSH) ./mkindex

uninstall:
	-rm -f $(TCL_DESTDIR)$(TCL_PKG)/$(TCL_API)
	-rm -f $(TCL_DESTDIR)$(TCL_PKG)/pkgIndex.tcl
	-rmdir $(TCL_DESTDIR)$(TCL_PKG)

