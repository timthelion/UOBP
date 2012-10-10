# Bindings/Python/Makefile.  Generated from Makefile.in by configure.
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
# Copyright (C) 2005-2012 by
#   Alexis Robert <alexissoft@free.fr>
#   Samuel Thibault <Samuel.Thibault@ens-lyon.org>
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

PYTHON_OK = true
PYTHON = /usr/bin/python2
PYTHON_PROLOGUE = import sys; import distutils.sysconfig; 
PYTHON_VERSION = 2.7
PYTHON_CPPFLAGS = -I/usr/include/python2.7
PYTHON_LIBS = -L/usr/lib/python2.7/config -lpython2.7
PYTHON_EXTRA_LIBS =  -lpthread -ldl  -lutil
PYTHON_EXTRA_LDFLAGS = -Xlinker -export-dynamic
PYTHON_SITE_PKG = /usr/lib/python2.7/site-packages
PYREXC = /usr/bin/pyrexc
PYREXC_CFLAGS = -Wno-parentheses -Wno-unused -fno-strict-aliasing -U_POSIX_C_SOURCE -U_XOPEN_SOURCE
PYTHON_DESTDIR = $(INSTALL_ROOT)

PYTHON_MODULE = $(API_NAME)
PYTHON_API = $(PYTHON_MODULE).$(LIB_EXT)

all: $(PYTHON_API)

$(PYTHON_API): brlapi.auto.c $(API_HDRS) brlapi
	set -- --quiet build --build-temp .; \
	[ "linux-gnu" != "mingw32" ] || set -- "$${@}" --compiler mingw32; \
	$(PYTHON) ./setup.py "$${@}"
	[ "linux-gnu" != "mingw32" ] || $(PYTHON) ./setup.py --quiet bdist_wininst --skip-build

brlapi.auto.c: $(SRC_DIR)/brlapi.pyx $(SRC_DIR)/c_brlapi.pxd constants.auto.pyx
	$(PYREXC) -I. -o $@ $(SRC_DIR)/brlapi.pyx

constants.auto.pyx: $(CONSTANTS_SCRIPTS) $(CONSTANTS_SOURCES)
	$(AWK) $(CONSTANTS_OPTIONS) $(CONSTANTS_SOURCES) >$@

doc: $(PYTHON_API)
	LD_PRELOAD=$(API_LIB) $(PYTHON) $(SRC_DIR)/mkdoc.py $(PYTHON_MODULE)

INSTALLED_FILES = installed-files

install: all
	set -- --quiet install --skip-build --record "$(INSTALLED_FILES)"; \
	[ -z "$(PYTHON_DESTDIR)" ] || set -- "$${@}" --root "$(PYTHON_DESTDIR)"; \
	$(PYTHON) ./setup.py "$${@}"

uninstall:
	[ ! -f "$(INSTALLED_FILES)" ] || rm -f -- `$(AWK) '{printf "%s%s ", "$(PYTHON_DESTDIR)", $$0}' "$(INSTALLED_FILES)"`

clean::
	-rm -f -- $(PYTHON_API) *.auto.* *.html "$(INSTALLED_FILES)"
	-rm -f -r -- build

distclean::
	-rm -f -- setup.py
