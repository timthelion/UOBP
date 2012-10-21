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



BUILD_ALIAS_FOR_BUILD = 
BUILD_SYSTEM_FOR_BUILD = x86_64-unknown-linux-gnu
BUILD_CPU_FOR_BUILD = x86_64
BUILD_VENDOR_FOR_BUILD = unknown
BUILD_OS_FOR_BUILD = linux-gnu

HOST_ALIAS_FOR_BUILD = 
HOST_SYSTEM_FOR_BUILD = x86_64-unknown-linux-gnu
HOST_CPU_FOR_BUILD = x86_64
HOST_VENDOR_FOR_BUILD = unknown
HOST_OS_FOR_BUILD = linux-gnu

TARGET_ALIAS_FOR_BUILD = 
TARGET_SYSTEM_FOR_BUILD = x86_64-unknown-linux-gnu
TARGET_CPU_FOR_BUILD = x86_64
TARGET_VENDOR_FOR_BUILD = unknown
TARGET_OS_FOR_BUILD = linux-gnu

O_FOR_BUILD = o
X_FOR_BUILD = 

PACKAGE_NAME_FOR_BUILD = brltty
PACKAGE_VERSION_FOR_BUILD = 4.4

PGM_DIR_FOR_BUILD = Programs
DOC_DIR_FOR_BUILD = Documents
MSG_DIR_FOR_BUILD = Messages
TBL_DIR_FOR_BUILD = Tables
BRL_DIR_FOR_BUILD = Drivers/Braille
SPK_DIR_FOR_BUILD = Drivers/Speech
SCR_DIR_FOR_BUILD = Drivers/Screen
DRV_DIR_FOR_BUILD = lib
BND_DIR_FOR_BUILD = Bindings
API_LIBS_FOR_BUILD = -L$(BLD_TOP)$(PGM_DIR_FOR_BUILD) -lbrlapi

INSTALL_ROOT_FOR_BUILD = 
EXECUTE_ROOT_FOR_BUILD = 

CC_FOR_BUILD = gcc
CPPFLAGS_FOR_BUILD = -I$(BLD_DIR) -I$(SRC_DIR) -I$(BLD_TOP:/=)/$(PGM_DIR_FOR_BUILD) -I$(SRC_TOP:/=)/$(PGM_DIR_FOR_BUILD) -I$(BLD_TOP:/=) -I$(SRC_TOP:/=)   -D_POSIX_C_SOURCE=2 -D_BSD_SOURCE -D_XOPEN_SOURCE=500 -D_XOPEN_SOURCE_EXTENDED -D_GNU_SOURCE -DHAVE_CONFIG_H
CFLAGS_FOR_BUILD = $(CPPFLAGS_FOR_BUILD) -Wall -Werror -std=gnu99 -Wall
LIBCFLAGS_FOR_BUILD = $(CFLAGS_FOR_BUILD) -fPIC

CXX_FOR_BUILD = gcc
CXXFLAGS_FOR_BUILD = $(CPPFLAGS_FOR_BUILD) -g -O2 -std=gnu99 -Wall
LIBCXXFLAGS_FOR_BUILD = $(CXXFLAGS_FOR_BUILD) -fPIC

LD_FOR_BUILD = ld
LDFLAGS_FOR_BUILD =  -Wl,-export-dynamic
LDLIBS_FOR_BUILD = -ldl -lgpm -lrt -lpthread -lsupc++ 
CLIBS_FOR_BUILD = -lncurses 

MKOBJ_FOR_BUILD = $(LD_FOR_BUILD) -r -o
MKMOD_FOR_BUILD = $(CC_FOR_BUILD) -shared  -o
MKLIB_FOR_BUILD = $(CC_FOR_BUILD) -shared -Wl,-soname,<name> -o
CONFLIBDIR_FOR_BUILD = /sbin/ldconfig -n
RANLIB_FOR_BUILD = ranlib

AWK_FOR_BUILD = gawk
SYMLINK_FOR_BUILD = ln -s
DOXYGEN_FOR_BUILD = 

X_CFLAGS_FOR_BUILD =  
X_LIBS_FOR_BUILD = -lX11  
XKB_LIBS_FOR_BUILD = -lXtst   -lXext   
XTK_LIBS_FOR_BUILD = -lXaw -lXt -lX11    

CURSES_LIB_FOR_BUILD = ncurses
GUI_TOOLKIT_LIB_FOR_BUILD = Xaw

INSTALL_FOR_BUILD = /usr/bin/install -c
INSTALL_SCRIPT_FOR_BUILD = $(INSTALL_FOR_BUILD)
INSTALL_PROGRAM_FOR_BUILD = $(INSTALL_SCRIPT_FOR_BUILD) -s
INSTALL_DATA_FOR_BUILD = $(INSTALL_FOR_BUILD) -m 644
INSTALL_DIRECTORY_FOR_BUILD = $(INSTALL_FOR_BUILD) -d

ARC_PFX_FOR_BUILD = lib
ARC_EXT_FOR_BUILD = a
LIB_PFX_FOR_BUILD = lib
LIB_EXT_FOR_BUILD = so
MOD_NAME_FOR_BUILD = libbrltty
MOD_EXT_FOR_BUILD = so
LIB_VAR_FOR_BUILD = LD_LIBRARY_PATH

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

STATE_DIRECTORY_FOR_BUILD = /var/lib/brltty
PROGRAM_DIRECTORY_FOR_BUILD = ${exec_prefix}/bin
DRIVERS_DIRECTORY_FOR_BUILD = ${exec_prefix}/lib/brltty
WRITABLE_DIRECTORY_FOR_BUILD = /var/run/brltty
TABLES_DIRECTORY_FOR_BUILD = /etc/brltty
MANPAGE_DIRECTORY_FOR_BUILD = /usr/share/man
INCLUDE_DIRECTORY_FOR_BUILD = ${prefix}/include/brltty

MANUAL_DIRECTORIES_FOR_BUILD =  Documents/Manual-BRLTTY/English Documents/Manual-BRLTTY/French Documents/Manual-BrlAPI/English

BRAILLE_DRIVER_CODES_FOR_BUILD = al at ba bc bd bl bm bn cb ec eu fs hm ht hw il ir lt mb md mn mt ob pg pm sk tn ts tt vd vo vr vs xw np
BRAILLE_DRIVER_NAMES_FOR_BUILD = Alva Albatross BrlAPI BrailComm Braudi BrailleLite Baum BrailleNote CombiBraille EcoBraille EuroBraille FreedomScientific HIMS HandyTech HumanWare IrisLinux Iris LogText MultiBraille MDV MiniBraille Metec UOBP Pegasus Papenmeier Seika TechniBraille TSI TTY VideoBraille Voyager Virtual VisioBraille XWindow NinePoint
BRAILLE_INTERNAL_DRIVER_CODES_FOR_BUILD = 
BRAILLE_INTERNAL_DRIVER_NAMES_FOR_BUILD = 
BRAILLE_EXTERNAL_DRIVER_CODES_FOR_BUILD = al at ba bc bd bl bm bn cb ec eu fs hm ht hw il ir lt mb md mn mt ob pg pm sk tn ts tt vd vo vr vs xw np
BRAILLE_EXTERNAL_DRIVER_NAMES_FOR_BUILD = Alva Albatross BrlAPI BrailComm Braudi BrailleLite Baum BrailleNote CombiBraille EcoBraille EuroBraille FreedomScientific HIMS HandyTech HumanWare IrisLinux Iris LogText MultiBraille MDV MiniBraille Metec UOBP Pegasus Papenmeier Seika TechniBraille TSI TTY VideoBraille Voyager Virtual VisioBraille XWindow NinePoint
BRAILLE_DRIVER_OBJECTS_FOR_BUILD = 
BRAILLE_DRIVER_LIBRARIES_FOR_BUILD = 
BRAILLE_DRIVERS_FOR_BUILD = braille-drivers

LIBBRAILLE_ROOT_FOR_BUILD = 

SPEECH_DRIVER_CODES_FOR_BUILD = al bl cb es xs fv gs sd
SPEECH_DRIVER_NAMES_FOR_BUILD = Alva BrailleLite CombiBraille eSpeak ExternalSpeech Festival GenericSay SpeechDispatcher
SPEECH_INTERNAL_DRIVER_CODES_FOR_BUILD = 
SPEECH_INTERNAL_DRIVER_NAMES_FOR_BUILD = 
SPEECH_EXTERNAL_DRIVER_CODES_FOR_BUILD = al bl cb es xs fv gs sd
SPEECH_EXTERNAL_DRIVER_NAMES_FOR_BUILD = Alva BrailleLite CombiBraille eSpeak ExternalSpeech Festival GenericSay SpeechDispatcher
SPEECH_DRIVER_OBJECTS_FOR_BUILD = 
SPEECH_DRIVER_LIBRARIES_FOR_BUILD = 
SPEECH_DRIVERS_FOR_BUILD = speech-drivers

SCREEN_DRIVER_CODES_FOR_BUILD = lx sc a2
SCREEN_DRIVER_NAMES_FOR_BUILD = Linux Screen AtSpi2
SCREEN_INTERNAL_DRIVER_CODES_FOR_BUILD = 
SCREEN_INTERNAL_DRIVER_NAMES_FOR_BUILD = 
SCREEN_EXTERNAL_DRIVER_CODES_FOR_BUILD = lx sc a2
SCREEN_EXTERNAL_DRIVER_NAMES_FOR_BUILD = Linux Screen AtSpi2
SCREEN_DRIVER_OBJECTS_FOR_BUILD = 
SCREEN_DRIVER_LIBRARIES_FOR_BUILD = 
SCREEN_DRIVERS_FOR_BUILD = screen-drivers

ESPEAK_ROOT_FOR_BUILD = /usr
FLITE_ROOT_FOR_BUILD = 
FLITE_LANGUAGE_FOR_BUILD = 
FLITE_LEXICON_FOR_BUILD = 
FLITE_VOICE_FOR_BUILD = 
MIKROPUHE_ROOT_FOR_BUILD = 
SPEECHD_ROOT_FOR_BUILD = /usr
SWIFT_ROOT_FOR_BUILD = 
THETA_ROOT_FOR_BUILD = 
VIAVOICE_ROOT_FOR_BUILD = 

INSTALL_TEXT_TABLES_FOR_BUILD = install-text-tables
INSTALL_ATTRIBUTES_TABLES_FOR_BUILD = install-attributes-tables
INSTALL_CONTRACTION_TABLES_FOR_BUILD = install-contraction-tables
INSTALL_DRIVERS_FOR_BUILD = install-drivers

CSPI_INCLUDES_FOR_BUILD = 
CSPI_LIBS_FOR_BUILD = 

DBUS_INCLUDES_FOR_BUILD = -I/usr/include/dbus-1.0 -I/usr/lib/dbus-1.0/include  
DBUS_LIBS_FOR_BUILD = -ldbus-1  

ICU_INCLUDES_FOR_BUILD = -I/usr/include 
ICU_LIBRARIES_FOR_BUILD = -Wl,-O1,--sort-common,--as-needed,-z,relro  -lpthread -ldl -lm   -L/usr/lib -licui18n -licuuc -licudata  -lpthread -ldl -lm   

TEXT_TABLE_FOR_BUILD = en-nabcc
ATTRIBUTES_TABLE_FOR_BUILD = attributes

SYSTEM_OBJECT_FOR_BUILD = sys_linux.$(O_FOR_BUILD)
KEYBOARD_OBJECTS_FOR_BUILD = kbd.$(O_FOR_BUILD) kbd_linux.$(O_FOR_BUILD)

SERIAL_OBJECTS_FOR_BUILD = serial.$(O_FOR_BUILD) serial_termios.$(O_FOR_BUILD)
SERIAL_CFLAGS_FOR_BUILD = 
SERIAL_LIBS_FOR_BUILD = 

USB_OBJECTS_FOR_BUILD = usb.$(O_FOR_BUILD) usb_hid.$(O_FOR_BUILD) usb_serial.$(O_FOR_BUILD) usb_linux.$(O_FOR_BUILD)
USB_CFLAGS_FOR_BUILD = 
USB_LIBS_FOR_BUILD = 

BLUETOOTH_OBJECTS_FOR_BUILD = bluetooth.$(O_FOR_BUILD) bluetooth_linux.$(O_FOR_BUILD)
BLUETOOTH_CFLAGS_FOR_BUILD = 
BLUETOOTH_LIBS_FOR_BUILD = 

CHARSET_OBJECTS_FOR_BUILD = charset.$(O_FOR_BUILD) charset_iconv.$(O_FOR_BUILD)
CHARSET_CFLAGS_FOR_BUILD = 
CHARSET_LIBS_FOR_BUILD = 

HOSTCMD_OBJECTS_FOR_BUILD = hostcmd.$(O_FOR_BUILD) hostcmd_unix.$(O_FOR_BUILD)
HOSTCMD_CFLAGS_FOR_BUILD = 
HOSTCMD_LIBS_FOR_BUILD = 

MOUNT_OBJECTS_FOR_BUILD = mount.$(O_FOR_BUILD) mount_mntent.$(O_FOR_BUILD)
MOUNT_CFLAGS_FOR_BUILD = 
MOUNT_LIBS_FOR_BUILD = 

CTB_OBJECTS_FOR_BUILD = ctb_compile.$(O_FOR_BUILD) ctb_translate.$(O_FOR_BUILD)

SPEECH_OBJECT_FOR_BUILD = spk.$(O_FOR_BUILD)

BEEPER_OBJECTS_FOR_BUILD = beeper.$(O_FOR_BUILD)
PCM_OBJECTS_FOR_BUILD = pcm.$(O_FOR_BUILD)
MIDI_OBJECTS_FOR_BUILD = midi.$(O_FOR_BUILD)
FM_OBJECTS_FOR_BUILD = fm.$(O_FOR_BUILD) adlib.$(O_FOR_BUILD)

API_VERSION_FOR_BUILD = 0.5
API_RELEASE_FOR_BUILD = 0.5.7
API_OBJECTS_FOR_BUILD = brlapi_server.$(O_FOR_BUILD) brlapi_keyranges.$(O_FOR_BUILD) auth.$(O_FOR_BUILD)
API_LIBRARIES_FOR_BUILD = -lpthread -lsupc++ 
ALL_API_FOR_BUILD = all-api
BUILD_API_FOR_BUILD = api
INSTALL_API_FOR_BUILD = install-api
API_REF_FOR_BUILD = $(API_LIBS_FOR_BUILD)
API_DYNAMIC_LIBRARY_FOR_BUILD = api-dynamic-library
INSTALL_API_LIBRARIES_FOR_BUILD = install-api-libraries
UNINSTALL_API_LIBRARIES_FOR_BUILD = uninstall-api-libraries
API_AUTHFILE_FOR_BUILD = brlapi.key
API_SOCKET_DIRECTORY_FOR_BUILD = /var/lib/BrlAPI

API_BINDINGS_FOR_BUILD =  Lisp Python Tcl
ALL_API_BINDINGS_FOR_BUILD = all-api-bindings
INSTALL_API_BINDINGS_FOR_BUILD = install-api-bindings

ALL_XBRLAPI_FOR_BUILD = all-xbrlapi
INSTALL_XBRLAPI_FOR_BUILD = install-xbrlapi

