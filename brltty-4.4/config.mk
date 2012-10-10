# config.mk.  Generated from config.mk.in by configure.
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



BUILD_ALIAS = 
BUILD_SYSTEM = x86_64-unknown-linux-gnu
BUILD_CPU = x86_64
BUILD_VENDOR = unknown
BUILD_OS = linux-gnu

HOST_ALIAS = 
HOST_SYSTEM = x86_64-unknown-linux-gnu
HOST_CPU = x86_64
HOST_VENDOR = unknown
HOST_OS = linux-gnu

TARGET_ALIAS = 
TARGET_SYSTEM = x86_64-unknown-linux-gnu
TARGET_CPU = x86_64
TARGET_VENDOR = unknown
TARGET_OS = linux-gnu

O = o
X = 

PACKAGE_NAME = brltty
PACKAGE_VERSION = 4.4

PGM_DIR = Programs
DOC_DIR = Documents
MSG_DIR = Messages
TBL_DIR = Tables
BRL_DIR = Drivers/Braille
SPK_DIR = Drivers/Speech
SCR_DIR = Drivers/Screen
DRV_DIR = lib
BND_DIR = Bindings
API_LIBS = -L$(BLD_TOP)$(PGM_DIR) -lbrlapi

INSTALL_ROOT = 
EXECUTE_ROOT = 

CC = gcc
CPPFLAGS = -I$(BLD_DIR) -I$(SRC_DIR) -I$(BLD_TOP:/=)/$(PGM_DIR) -I$(SRC_TOP:/=)/$(PGM_DIR) -I$(BLD_TOP:/=) -I$(SRC_TOP:/=)   -D_POSIX_C_SOURCE=2 -D_BSD_SOURCE -D_XOPEN_SOURCE=500 -D_XOPEN_SOURCE_EXTENDED -D_GNU_SOURCE -DHAVE_CONFIG_H
CFLAGS = $(CPPFLAGS) -g -O2 -std=gnu99 -Wall
LIBCFLAGS = $(CFLAGS) -fPIC

CXX = gcc
CXXFLAGS = $(CPPFLAGS) -g -O2 -std=gnu99 -Wall
LIBCXXFLAGS = $(CXXFLAGS) -fPIC

LD = ld
LDFLAGS =  -Wl,-export-dynamic
LDLIBS = -ldl -lgpm -lrt -lpthread -lsupc++ 
CLIBS = -lncurses 

MKOBJ = $(LD) -r -o
MKMOD = $(CC) -shared  -o
MKLIB = $(CC) -shared -Wl,-soname,<name> -o
CONFLIBDIR = /sbin/ldconfig -n
RANLIB = ranlib

AWK = gawk
SYMLINK = ln -s
DOXYGEN = 

X_CFLAGS =  
X_LIBS = -lX11  
XKB_LIBS = -lXtst   -lXext   
XTK_LIBS = -lXaw -lXt -lX11    

CURSES_LIB = ncurses
GUI_TOOLKIT_LIB = Xaw

INSTALL = /usr/bin/install -c
INSTALL_SCRIPT = $(INSTALL)
INSTALL_PROGRAM = $(INSTALL_SCRIPT) -s
INSTALL_DATA = $(INSTALL) -m 644
INSTALL_DIRECTORY = $(INSTALL) -d

ARC_PFX = lib
ARC_EXT = a
LIB_PFX = lib
LIB_EXT = so
MOD_NAME = libbrltty
MOD_EXT = so
LIB_VAR = LD_LIBRARY_PATH

prefix = /usr
exec_prefix = ${prefix}
datarootdir = ${prefix}/share
bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${datarootdir}
sysconfdir = /etc
sharedstatedir = ${prefix}/com
localstatedir = /var
libdir = ${exec_prefix}/lib
includedir = ${prefix}/include
oldincludedir = /usr/include
localedir = ${datarootdir}/locale
infodir = ${datarootdir}/info
mandir = /usr/share/man
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
htmldir = ${docdir}
dvidir = ${docdir}
pdfdir = ${docdir}
psdir = ${docdir}

STATE_DIRECTORY = /var/lib/brltty
PROGRAM_DIRECTORY = ${exec_prefix}/bin
DRIVERS_DIRECTORY = ${exec_prefix}/lib/brltty
WRITABLE_DIRECTORY = /var/run/brltty
TABLES_DIRECTORY = /etc/brltty
MANPAGE_DIRECTORY = /usr/share/man
INCLUDE_DIRECTORY = ${prefix}/include/brltty

MANUAL_DIRECTORIES =  Documents/Manual-BRLTTY/English Documents/Manual-BRLTTY/French Documents/Manual-BrlAPI/English

BRAILLE_DRIVER_CODES = al at ba bc bd bl bm bn cb ec eu fs hm ht hw il ir lt mb md mn mt ob pg pm sk tn ts tt vd vo vr vs xw np
BRAILLE_DRIVER_NAMES = Alva Albatross BrlAPI BrailComm Braudi BrailleLite Baum BrailleNote CombiBraille EcoBraille EuroBraille FreedomScientific HIMS HandyTech HumanWare IrisLinux Iris LogText MultiBraille MDV MiniBraille Metec UOBP Pegasus Papenmeier Seika TechniBraille TSI TTY VideoBraille Voyager Virtual VisioBraille XWindow NinePoint
BRAILLE_INTERNAL_DRIVER_CODES = 
BRAILLE_INTERNAL_DRIVER_NAMES = 
BRAILLE_EXTERNAL_DRIVER_CODES = al at ba bc bd bl bm bn cb ec eu fs hm ht hw il ir lt mb md mn mt ob pg pm sk tn ts tt vd vo vr vs xw np
BRAILLE_EXTERNAL_DRIVER_NAMES = Alva Albatross BrlAPI BrailComm Braudi BrailleLite Baum BrailleNote CombiBraille EcoBraille EuroBraille FreedomScientific HIMS HandyTech HumanWare IrisLinux Iris LogText MultiBraille MDV MiniBraille Metec UOBP Pegasus Papenmeier Seika TechniBraille TSI TTY VideoBraille Voyager Virtual VisioBraille XWindow NinePoint
BRAILLE_DRIVER_OBJECTS = 
BRAILLE_DRIVER_LIBRARIES = 
BRAILLE_DRIVERS = braille-drivers

LIBBRAILLE_ROOT = 

SPEECH_DRIVER_CODES = al bl cb es xs fv gs sd
SPEECH_DRIVER_NAMES = Alva BrailleLite CombiBraille eSpeak ExternalSpeech Festival GenericSay SpeechDispatcher
SPEECH_INTERNAL_DRIVER_CODES = 
SPEECH_INTERNAL_DRIVER_NAMES = 
SPEECH_EXTERNAL_DRIVER_CODES = al bl cb es xs fv gs sd
SPEECH_EXTERNAL_DRIVER_NAMES = Alva BrailleLite CombiBraille eSpeak ExternalSpeech Festival GenericSay SpeechDispatcher
SPEECH_DRIVER_OBJECTS = 
SPEECH_DRIVER_LIBRARIES = 
SPEECH_DRIVERS = speech-drivers

SCREEN_DRIVER_CODES = lx sc a2
SCREEN_DRIVER_NAMES = Linux Screen AtSpi2
SCREEN_INTERNAL_DRIVER_CODES = a2
SCREEN_INTERNAL_DRIVER_NAMES = AtSpi2
SCREEN_EXTERNAL_DRIVER_CODES = lx sc
SCREEN_EXTERNAL_DRIVER_NAMES = Linux Screen
SCREEN_DRIVER_OBJECTS = $(BLD_TOP)Drivers/Screen/AtSpi2/screen.$O
SCREEN_DRIVER_LIBRARIES = $(DBUS_LIBS)
SCREEN_DRIVERS = screen-drivers

ESPEAK_ROOT = /usr
FLITE_ROOT = 
FLITE_LANGUAGE = 
FLITE_LEXICON = 
FLITE_VOICE = 
MIKROPUHE_ROOT = 
SPEECHD_ROOT = /usr
SWIFT_ROOT = 
THETA_ROOT = 
VIAVOICE_ROOT = 

INSTALL_TEXT_TABLES = install-text-tables
INSTALL_ATTRIBUTES_TABLES = install-attributes-tables
INSTALL_CONTRACTION_TABLES = install-contraction-tables
INSTALL_DRIVERS = install-drivers

CSPI_INCLUDES = 
CSPI_LIBS = 

DBUS_INCLUDES = -I/usr/include/dbus-1.0 -I/usr/lib/dbus-1.0/include  
DBUS_LIBS = -ldbus-1  

ICU_INCLUDES = -I/usr/include 
ICU_LIBRARIES = -Wl,-O1,--sort-common,--as-needed,-z,relro  -lpthread -ldl -lm   -L/usr/lib -licui18n -licuuc -licudata  -lpthread -ldl -lm   

TEXT_TABLE = en-nabcc
ATTRIBUTES_TABLE = attributes

SYSTEM_OBJECT = sys_linux.$O
KEYBOARD_OBJECTS = kbd.$O kbd_linux.$O

SERIAL_OBJECTS = serial.$O serial_termios.$O
SERIAL_CFLAGS = 
SERIAL_LIBS = 

USB_OBJECTS = usb.$O usb_hid.$O usb_serial.$O usb_linux.$O
USB_CFLAGS = 
USB_LIBS = 

BLUETOOTH_OBJECTS = bluetooth.$O bluetooth_linux.$O
BLUETOOTH_CFLAGS = 
BLUETOOTH_LIBS = 

CHARSET_OBJECTS = charset.$O charset_iconv.$O
CHARSET_CFLAGS = 
CHARSET_LIBS = 

HOSTCMD_OBJECTS = hostcmd.$O hostcmd_unix.$O
HOSTCMD_CFLAGS = 
HOSTCMD_LIBS = 

MOUNT_OBJECTS = mount.$O mount_mntent.$O
MOUNT_CFLAGS = 
MOUNT_LIBS = 

CTB_OBJECTS = ctb_compile.$O ctb_translate.$O

SPEECH_OBJECT = spk.$O

BEEPER_OBJECTS = beeper.$O
PCM_OBJECTS = pcm.$O
MIDI_OBJECTS = midi.$O
FM_OBJECTS = fm.$O adlib.$O

API_VERSION = 0.5
API_RELEASE = 0.5.7
API_OBJECTS = brlapi_server.$O brlapi_keyranges.$O auth.$O
API_LIBRARIES = -lpthread -lsupc++ 
ALL_API = all-api
BUILD_API = api
INSTALL_API = install-api
API_REF = $(API_LIBS)
API_DYNAMIC_LIBRARY = api-dynamic-library
INSTALL_API_LIBRARIES = install-api-libraries
UNINSTALL_API_LIBRARIES = uninstall-api-libraries
API_AUTHFILE = brlapi.key
API_SOCKET_DIRECTORY = /var/lib/BrlAPI

API_BINDINGS =  Lisp Python Tcl
ALL_API_BINDINGS = all-api-bindings
INSTALL_API_BINDINGS = install-api-bindings

ALL_XBRLAPI = all-xbrlapi
INSTALL_XBRLAPI = install-xbrlapi

