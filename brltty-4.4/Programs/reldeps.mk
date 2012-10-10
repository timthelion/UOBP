# Dependencies for adlib.$O:
adlib.$O: $(SRC_DIR)/adlib.c
adlib.$O: $(BLD_TOP)config.h
adlib.$O: $(BLD_TOP)forbuild.h
adlib.$O: $(SRC_TOP)prologue.h
adlib.$O: $(SRC_DIR)/log.h
adlib.$O: $(SRC_DIR)/timing.h
adlib.$O: $(SRC_DIR)/system.h
adlib.$O: $(SRC_DIR)/adlib.h

# Dependencies for apitest.$O:
apitest.$O: $(SRC_DIR)/apitest.c
apitest.$O: $(BLD_TOP)config.h
apitest.$O: $(BLD_TOP)forbuild.h
apitest.$O: $(SRC_TOP)prologue.h
apitest.$O: $(SRC_DIR)/options.h
apitest.$O: $(SRC_DIR)/pid.h
apitest.$O: $(SRC_DIR)/program.h
apitest.$O: $(SRC_DIR)/brldefs.h
apitest.$O: brlapi_constants.h
apitest.$O: $(SRC_DIR)/brlapi_keycodes.h
apitest.$O: $(SRC_DIR)/cmd.h
apitest.$O: $(SRC_DIR)/timing.h
apitest.$O: brlapi.h

# Dependencies for async.$O:
async.$O: $(SRC_DIR)/async.c
async.$O: $(BLD_TOP)config.h
async.$O: $(BLD_TOP)forbuild.h
async.$O: $(SRC_TOP)prologue.h
async.$O: $(SRC_DIR)/sys_msdos.h
async.$O: $(SRC_DIR)/log.h
async.$O: $(SRC_DIR)/timing.h
async.$O: $(SRC_DIR)/queue.h
async.$O: $(SRC_DIR)/async.h

# Dependencies for atb_compile.$O:
atb_compile.$O: $(SRC_DIR)/atb_compile.c
atb_compile.$O: $(BLD_TOP)config.h
atb_compile.$O: $(BLD_TOP)forbuild.h
atb_compile.$O: $(SRC_TOP)prologue.h
atb_compile.$O: $(SRC_DIR)/file.h
atb_compile.$O: $(SRC_DIR)/datafile.h
atb_compile.$O: $(SRC_DIR)/queue.h
atb_compile.$O: $(SRC_DIR)/dataarea.h
atb_compile.$O: $(SRC_DIR)/atb.h
atb_compile.$O: $(SRC_DIR)/atb_internal.h

# Dependencies for atb_translate.$O:
atb_translate.$O: $(SRC_DIR)/atb_translate.c
atb_translate.$O: $(BLD_TOP)config.h
atb_translate.$O: $(BLD_TOP)forbuild.h
atb_translate.$O: $(SRC_TOP)prologue.h
atb_translate.$O: $(SRC_DIR)/log.h
atb_translate.$O: $(SRC_DIR)/file.h
atb_translate.$O: $(SRC_DIR)/atb.h
atb_translate.$O: $(SRC_DIR)/atb_internal.h
atb_translate.$O: attr.auto.h

# Dependencies for auth.$O:
auth.$O: $(SRC_DIR)/auth.c
auth.$O: $(BLD_TOP)config.h
auth.$O: $(BLD_TOP)forbuild.h
auth.$O: $(SRC_TOP)prologue.h
auth.$O: $(SRC_DIR)/log.h
auth.$O: $(SRC_DIR)/parse.h
auth.$O: $(SRC_DIR)/auth.h

# Dependencies for beeper.$O:
beeper.$O: $(SRC_DIR)/beeper.c
beeper.$O: $(BLD_TOP)config.h
beeper.$O: $(BLD_TOP)forbuild.h
beeper.$O: $(SRC_TOP)prologue.h
beeper.$O: $(SRC_DIR)/log.h
beeper.$O: $(SRC_DIR)/timing.h
beeper.$O: $(SRC_DIR)/system.h
beeper.$O: $(SRC_DIR)/notes.h

# Dependencies for bluetooth.$O:
bluetooth.$O: $(SRC_DIR)/bluetooth.c
bluetooth.$O: $(BLD_TOP)config.h
bluetooth.$O: $(BLD_TOP)forbuild.h
bluetooth.$O: $(SRC_TOP)prologue.h
bluetooth.$O: $(SRC_DIR)/log.h
bluetooth.$O: $(SRC_DIR)/device.h
bluetooth.$O: $(SRC_DIR)/queue.h
bluetooth.$O: $(SRC_DIR)/io_bluetooth.h
bluetooth.$O: $(SRC_DIR)/bluetooth_internal.h

# Dependencies for bluetooth_linux.$O:
bluetooth_linux.$O: $(SRC_DIR)/bluetooth_linux.c
bluetooth_linux.$O: $(BLD_TOP)config.h
bluetooth_linux.$O: $(BLD_TOP)forbuild.h
bluetooth_linux.$O: $(SRC_TOP)prologue.h
bluetooth_linux.$O: $(SRC_DIR)/log.h
bluetooth_linux.$O: $(SRC_DIR)/io_bluetooth.h
bluetooth_linux.$O: $(SRC_DIR)/bluetooth_internal.h
bluetooth_linux.$O: $(SRC_DIR)/io_misc.h

# Dependencies for bluetooth_none.$O:
bluetooth_none.$O: $(SRC_DIR)/bluetooth_none.c
bluetooth_none.$O: $(BLD_TOP)config.h
bluetooth_none.$O: $(BLD_TOP)forbuild.h
bluetooth_none.$O: $(SRC_TOP)prologue.h
bluetooth_none.$O: $(SRC_DIR)/io_bluetooth.h
bluetooth_none.$O: $(SRC_DIR)/bluetooth_internal.h
bluetooth_none.$O: $(SRC_DIR)/log.h

# Dependencies for bluetooth_windows.$O:
bluetooth_windows.$O: $(SRC_DIR)/bluetooth_windows.c
bluetooth_windows.$O: $(BLD_TOP)config.h
bluetooth_windows.$O: $(BLD_TOP)forbuild.h
bluetooth_windows.$O: $(SRC_TOP)prologue.h
bluetooth_windows.$O: $(SRC_DIR)/io_bluetooth.h
bluetooth_windows.$O: $(SRC_DIR)/bluetooth_internal.h
bluetooth_windows.$O: $(SRC_DIR)/log.h

# Dependencies for brl.$O:
brl.$O: $(SRC_DIR)/brl.c
brl.$O: $(BLD_TOP)config.h
brl.$O: $(BLD_TOP)forbuild.h
brl.$O: $(SRC_TOP)prologue.h
brl.$O: $(SRC_DIR)/log.h
brl.$O: $(SRC_DIR)/timing.h
brl.$O: $(SRC_DIR)/async.h
brl.$O: $(SRC_DIR)/message.h
brl.$O: $(SRC_DIR)/charset.h
brl.$O: $(SRC_DIR)/lock.h
brl.$O: $(SRC_DIR)/unicode.h
brl.$O: $(SRC_DIR)/driver.h
brl.$O: $(SRC_DIR)/drivers.h
brl.$O: $(SRC_DIR)/io_generic.h
brl.$O: $(SRC_DIR)/serialdefs.h
brl.$O: $(SRC_DIR)/usbdefs.h
brl.$O: $(SRC_DIR)/brl.h
brl.$O: $(SRC_DIR)/brldefs.h
brl.$O: $(SRC_DIR)/ktbdefs.h
brl.$O: $(SRC_DIR)/ttb.h
brl.$O: $(SRC_DIR)/ktb.h
brl.$O: brl.auto.h
brl.$O: brlapi_constants.h
brl.$O: $(SRC_DIR)/brlapi_keycodes.h
brl.$O: $(SRC_DIR)/cmd.h
brl.$O: $(SRC_DIR)/queue.h
brl.$O: $(SRC_DIR)/brltty.h
brl.$O: $(SRC_DIR)/ctb.h
brl.$O: $(SRC_DIR)/ctbdefs.h
brl.$O: $(SRC_DIR)/menu.h
brl.$O: $(SRC_DIR)/pid.h
brl.$O: $(SRC_DIR)/prefs.h
brl.$O: $(SRC_DIR)/program.h
brl.$O: $(SRC_DIR)/scr.h
brl.$O: $(SRC_DIR)/ses.h
brl.$O: $(SRC_DIR)/spk.h
brl.$O: $(SRC_DIR)/spkdefs.h
brl.$O: $(SRC_DIR)/brl_driver.h
brl.$O: $(SRC_DIR)/statdefs.h

# Dependencies for brlapi_client.$O:
brlapi_client.$O: $(SRC_DIR)/brlapi_client.c
brlapi_client.$O: $(BLD_TOP)config.h
brlapi_client.$O: $(BLD_TOP)forbuild.h
brlapi_client.$O: $(SRC_TOP)prologue.h
brlapi_client.$O: $(SRC_DIR)/timing.h
brlapi_client.$O: $(SRC_DIR)/win_pthread.h
brlapi_client.$O: $(SRC_DIR)/win_errno.h
brlapi_client.$O: brlapi.h
brlapi_client.$O: brlapi_constants.h
brlapi_client.$O: $(SRC_DIR)/brlapi_keycodes.h
brlapi_client.$O: $(SRC_DIR)/brlapi_protocol.h
brlapi_client.$O: $(SRC_DIR)/brlapi_common.h
brlapi_client.$O: brlapi_keytab.auto.h

# Dependencies for brlapi_keyranges.$O:
brlapi_keyranges.$O: $(SRC_DIR)/brlapi_keyranges.c
brlapi_keyranges.$O: $(BLD_TOP)config.h
brlapi_keyranges.$O: $(BLD_TOP)forbuild.h
brlapi_keyranges.$O: $(SRC_TOP)prologue.h
brlapi_keyranges.$O: $(SRC_DIR)/brlapi_keyranges.h
brlapi_keyranges.$O: $(SRC_DIR)/log.h

# Dependencies for brlapi_server.$O:
brlapi_server.$O: $(SRC_DIR)/brlapi_server.c
brlapi_server.$O: $(BLD_TOP)config.h
brlapi_server.$O: $(BLD_TOP)forbuild.h
brlapi_server.$O: $(SRC_TOP)prologue.h
brlapi_server.$O: $(SRC_DIR)/sys_windows.h
brlapi_server.$O: $(SRC_DIR)/timing.h
brlapi_server.$O: $(SRC_DIR)/win_pthread.h
brlapi_server.$O: brlapi.h
brlapi_server.$O: brlapi_constants.h
brlapi_server.$O: $(SRC_DIR)/brlapi_keycodes.h
brlapi_server.$O: $(SRC_DIR)/brlapi_protocol.h
brlapi_server.$O: $(SRC_DIR)/brlapi_keyranges.h
brlapi_server.$O: $(SRC_DIR)/cmd.h
brlapi_server.$O: $(SRC_DIR)/brl.h
brlapi_server.$O: $(SRC_DIR)/brldefs.h
brlapi_server.$O: $(SRC_DIR)/driver.h
brlapi_server.$O: $(SRC_DIR)/io_generic.h
brlapi_server.$O: $(SRC_DIR)/ktbdefs.h
brlapi_server.$O: $(SRC_DIR)/serialdefs.h
brlapi_server.$O: $(SRC_DIR)/usbdefs.h
brlapi_server.$O: $(SRC_DIR)/ttb.h
brlapi_server.$O: $(SRC_DIR)/brltty.h
brlapi_server.$O: $(SRC_DIR)/ctb.h
brlapi_server.$O: $(SRC_DIR)/ctbdefs.h
brlapi_server.$O: $(SRC_DIR)/ktb.h
brlapi_server.$O: $(SRC_DIR)/menu.h
brlapi_server.$O: $(SRC_DIR)/pid.h
brlapi_server.$O: $(SRC_DIR)/prefs.h
brlapi_server.$O: $(SRC_DIR)/program.h
brlapi_server.$O: $(SRC_DIR)/scr.h
brlapi_server.$O: $(SRC_DIR)/ses.h
brlapi_server.$O: $(SRC_DIR)/spk.h
brlapi_server.$O: $(SRC_DIR)/spkdefs.h
brlapi_server.$O: $(SRC_DIR)/log.h
brlapi_server.$O: $(SRC_DIR)/file.h
brlapi_server.$O: $(SRC_DIR)/parse.h
brlapi_server.$O: $(SRC_DIR)/auth.h
brlapi_server.$O: $(SRC_DIR)/io_misc.h
brlapi_server.$O: $(SRC_DIR)/tunedefs.h
brlapi_server.$O: $(SRC_DIR)/tunes.h
brlapi_server.$O: $(SRC_DIR)/charset.h
brlapi_server.$O: $(SRC_DIR)/lock.h
brlapi_server.$O: $(SRC_DIR)/brlapi_common.h

# Dependencies for brltest.$O:
brltest.$O: $(SRC_DIR)/brltest.c
brltest.$O: $(BLD_TOP)config.h
brltest.$O: $(BLD_TOP)forbuild.h
brltest.$O: $(SRC_TOP)prologue.h
brltest.$O: $(SRC_DIR)/pid.h
brltest.$O: $(SRC_DIR)/program.h
brltest.$O: $(SRC_DIR)/options.h
brltest.$O: $(SRC_DIR)/brl.h
brltest.$O: $(SRC_DIR)/brldefs.h
brltest.$O: $(SRC_DIR)/driver.h
brltest.$O: $(SRC_DIR)/io_generic.h
brltest.$O: $(SRC_DIR)/ktbdefs.h
brltest.$O: $(SRC_DIR)/serialdefs.h
brltest.$O: $(SRC_DIR)/usbdefs.h
brltest.$O: $(SRC_DIR)/log.h
brltest.$O: $(SRC_DIR)/file.h
brltest.$O: $(SRC_DIR)/timing.h
brltest.$O: $(SRC_DIR)/charset.h
brltest.$O: $(SRC_DIR)/lock.h
brltest.$O: $(SRC_DIR)/message.h
brltest.$O: $(SRC_DIR)/ctbdefs.h
brltest.$O: $(SRC_DIR)/defaults.h
brltest.$O: $(SRC_DIR)/spkdefs.h
brltest.$O: $(SRC_DIR)/tunedefs.h

# Dependencies for brltty-ctb.$O:
brltty-ctb.$O: $(SRC_DIR)/brltty-ctb.c
brltty-ctb.$O: $(BLD_TOP)config.h
brltty-ctb.$O: $(BLD_TOP)forbuild.h
brltty-ctb.$O: $(SRC_TOP)prologue.h
brltty-ctb.$O: $(SRC_DIR)/pid.h
brltty-ctb.$O: $(SRC_DIR)/program.h
brltty-ctb.$O: $(SRC_DIR)/options.h
brltty-ctb.$O: $(SRC_DIR)/prefs.h
brltty-ctb.$O: $(SRC_DIR)/log.h
brltty-ctb.$O: $(SRC_DIR)/file.h
brltty-ctb.$O: $(SRC_DIR)/parse.h
brltty-ctb.$O: $(SRC_DIR)/charset.h
brltty-ctb.$O: $(SRC_DIR)/lock.h
brltty-ctb.$O: $(SRC_DIR)/unicode.h
brltty-ctb.$O: $(SRC_DIR)/ascii.h
brltty-ctb.$O: $(SRC_DIR)/ttb.h
brltty-ctb.$O: $(SRC_DIR)/ctb.h
brltty-ctb.$O: $(SRC_DIR)/ctbdefs.h

# Dependencies for brltty-trtxt.$O:
brltty-trtxt.$O: $(SRC_DIR)/brltty-trtxt.c
brltty-trtxt.$O: $(BLD_TOP)config.h
brltty-trtxt.$O: $(BLD_TOP)forbuild.h
brltty-trtxt.$O: $(SRC_TOP)prologue.h
brltty-trtxt.$O: $(SRC_DIR)/pid.h
brltty-trtxt.$O: $(SRC_DIR)/program.h
brltty-trtxt.$O: $(SRC_DIR)/options.h
brltty-trtxt.$O: $(SRC_DIR)/log.h
brltty-trtxt.$O: $(SRC_DIR)/file.h
brltty-trtxt.$O: $(SRC_DIR)/unicode.h
brltty-trtxt.$O: $(SRC_DIR)/charset.h
brltty-trtxt.$O: $(SRC_DIR)/lock.h
brltty-trtxt.$O: $(SRC_DIR)/brldots.h
brltty-trtxt.$O: $(SRC_DIR)/ttb.h

# Dependencies for brltty-ttb.$O:
brltty-ttb.$O: $(SRC_DIR)/brltty-ttb.c
brltty-ttb.$O: $(BLD_TOP)config.h
brltty-ttb.$O: $(BLD_TOP)forbuild.h
brltty-ttb.$O: $(SRC_TOP)prologue.h
brltty-ttb.$O: $(SRC_DIR)/pid.h
brltty-ttb.$O: $(SRC_DIR)/program.h
brltty-ttb.$O: $(SRC_DIR)/options.h
brltty-ttb.$O: $(SRC_DIR)/log.h
brltty-ttb.$O: $(SRC_DIR)/file.h
brltty-ttb.$O: $(SRC_DIR)/brldots.h
brltty-ttb.$O: $(SRC_DIR)/charset.h
brltty-ttb.$O: $(SRC_DIR)/lock.h
brltty-ttb.$O: $(SRC_DIR)/ttb.h
brltty-ttb.$O: $(SRC_DIR)/bitmask.h
brltty-ttb.$O: $(SRC_DIR)/ttb_internal.h
brltty-ttb.$O: $(SRC_DIR)/unicode.h
brltty-ttb.$O: $(SRC_DIR)/datafile.h
brltty-ttb.$O: $(SRC_DIR)/queue.h
brltty-ttb.$O: $(SRC_DIR)/ttb_compile.h
brltty-ttb.$O: brlapi.h
brltty-ttb.$O: brlapi_constants.h
brltty-ttb.$O: $(SRC_DIR)/brlapi_keycodes.h

# Dependencies for brltty.$O:
brltty.$O: $(SRC_DIR)/brltty.c
brltty.$O: $(BLD_TOP)config.h
brltty.$O: $(BLD_TOP)forbuild.h
brltty.$O: $(SRC_TOP)prologue.h
brltty.$O: $(SRC_DIR)/embed.h
brltty.$O: $(SRC_DIR)/pid.h
brltty.$O: $(SRC_DIR)/program.h
brltty.$O: $(SRC_DIR)/log.h
brltty.$O: $(SRC_DIR)/parse.h
brltty.$O: $(SRC_DIR)/message.h
brltty.$O: $(SRC_DIR)/tunedefs.h
brltty.$O: $(SRC_DIR)/tunes.h
brltty.$O: $(SRC_DIR)/ttb.h
brltty.$O: $(SRC_DIR)/atb.h
brltty.$O: $(SRC_DIR)/ctb.h
brltty.$O: $(SRC_DIR)/ctbdefs.h
brltty.$O: $(SRC_DIR)/routing.h
brltty.$O: $(SRC_DIR)/clipboard.h
brltty.$O: $(SRC_DIR)/brl.h
brltty.$O: $(SRC_DIR)/brldefs.h
brltty.$O: $(SRC_DIR)/driver.h
brltty.$O: $(SRC_DIR)/io_generic.h
brltty.$O: $(SRC_DIR)/ktbdefs.h
brltty.$O: $(SRC_DIR)/serialdefs.h
brltty.$O: $(SRC_DIR)/touch.h
brltty.$O: $(SRC_DIR)/usbdefs.h
brltty.$O: brlapi_constants.h
brltty.$O: $(SRC_DIR)/brlapi_keycodes.h
brltty.$O: $(SRC_DIR)/cmd.h
brltty.$O: $(SRC_DIR)/timing.h
brltty.$O: $(SRC_DIR)/charset.h
brltty.$O: $(SRC_DIR)/lock.h
brltty.$O: $(SRC_DIR)/unicode.h
brltty.$O: $(SRC_DIR)/scancodes.h
brltty.$O: $(SRC_DIR)/scr.h
brltty.$O: $(SRC_DIR)/statdefs.h
brltty.$O: $(SRC_DIR)/status.h
brltty.$O: $(SRC_DIR)/ses.h
brltty.$O: $(SRC_DIR)/brltty.h
brltty.$O: $(SRC_DIR)/ktb.h
brltty.$O: $(SRC_DIR)/menu.h
brltty.$O: $(SRC_DIR)/prefs.h
brltty.$O: $(SRC_DIR)/spk.h
brltty.$O: $(SRC_DIR)/spkdefs.h
brltty.$O: $(SRC_DIR)/defaults.h

# Dependencies for brltty_jni.$O:
brltty_jni.$O: $(SRC_DIR)/brltty_jni.c
brltty_jni.$O: $(BLD_TOP)config.h
brltty_jni.$O: $(BLD_TOP)forbuild.h
brltty_jni.$O: $(SRC_TOP)prologue.h
brltty_jni.$O: $(SRC_DIR)/embed.h
brltty_jni.$O: $(SRC_DIR)/pid.h
brltty_jni.$O: $(SRC_DIR)/program.h

# Dependencies for charset.$O:
charset.$O: $(SRC_DIR)/charset.c
charset.$O: $(BLD_TOP)config.h
charset.$O: $(BLD_TOP)forbuild.h
charset.$O: $(SRC_TOP)prologue.h
charset.$O: $(SRC_DIR)/log.h
charset.$O: $(SRC_DIR)/charset.h
charset.$O: $(SRC_DIR)/charset_internal.h
charset.$O: $(SRC_DIR)/lock.h
charset.$O: $(SRC_DIR)/unicode.h

# Dependencies for charset_grub.$O:
charset_grub.$O: $(SRC_DIR)/charset_grub.c
charset_grub.$O: $(BLD_TOP)config.h
charset_grub.$O: $(BLD_TOP)forbuild.h
charset_grub.$O: $(SRC_TOP)prologue.h
charset_grub.$O: $(SRC_DIR)/charset.h
charset_grub.$O: $(SRC_DIR)/charset_internal.h
charset_grub.$O: $(SRC_DIR)/lock.h

# Dependencies for charset_iconv.$O:
charset_iconv.$O: $(SRC_DIR)/charset_iconv.c
charset_iconv.$O: $(BLD_TOP)config.h
charset_iconv.$O: $(BLD_TOP)forbuild.h
charset_iconv.$O: $(SRC_TOP)prologue.h
charset_iconv.$O: $(SRC_DIR)/log.h
charset_iconv.$O: $(SRC_DIR)/charset.h
charset_iconv.$O: $(SRC_DIR)/charset_internal.h
charset_iconv.$O: $(SRC_DIR)/lock.h

# Dependencies for charset_msdos.$O:
charset_msdos.$O: $(SRC_DIR)/charset_msdos.c
charset_msdos.$O: $(BLD_TOP)config.h
charset_msdos.$O: $(BLD_TOP)forbuild.h
charset_msdos.$O: $(SRC_TOP)prologue.h
charset_msdos.$O: $(SRC_DIR)/charset.h
charset_msdos.$O: $(SRC_DIR)/charset_internal.h
charset_msdos.$O: $(SRC_DIR)/lock.h
charset_msdos.$O: $(SRC_DIR)/unicode.h
charset_msdos.$O: $(SRC_DIR)/sys_msdos.h

# Dependencies for charset_none.$O:
charset_none.$O: $(SRC_DIR)/charset_none.c
charset_none.$O: $(BLD_TOP)config.h
charset_none.$O: $(BLD_TOP)forbuild.h
charset_none.$O: $(SRC_TOP)prologue.h
charset_none.$O: $(SRC_DIR)/charset.h
charset_none.$O: $(SRC_DIR)/charset_internal.h
charset_none.$O: $(SRC_DIR)/lock.h

# Dependencies for charset_windows.$O:
charset_windows.$O: $(SRC_DIR)/charset_windows.c
charset_windows.$O: $(BLD_TOP)config.h
charset_windows.$O: $(BLD_TOP)forbuild.h
charset_windows.$O: $(SRC_TOP)prologue.h
charset_windows.$O: $(SRC_DIR)/log.h
charset_windows.$O: $(SRC_DIR)/charset.h
charset_windows.$O: $(SRC_DIR)/charset_internal.h
charset_windows.$O: $(SRC_DIR)/lock.h

# Dependencies for clipboard.$O:
clipboard.$O: $(SRC_DIR)/clipboard.c
clipboard.$O: $(BLD_TOP)config.h
clipboard.$O: $(BLD_TOP)forbuild.h
clipboard.$O: $(SRC_TOP)prologue.h
clipboard.$O: $(SRC_DIR)/log.h
clipboard.$O: $(SRC_DIR)/driver.h
clipboard.$O: $(SRC_DIR)/ktbdefs.h
clipboard.$O: $(SRC_DIR)/scr.h
clipboard.$O: $(SRC_DIR)/tunedefs.h
clipboard.$O: $(SRC_DIR)/tunes.h
clipboard.$O: $(SRC_DIR)/clipboard.h

# Dependencies for cmd.$O:
cmd.$O: $(SRC_DIR)/cmd.c
cmd.$O: $(BLD_TOP)config.h
cmd.$O: $(BLD_TOP)forbuild.h
cmd.$O: $(SRC_TOP)prologue.h
cmd.$O: $(SRC_DIR)/log.h
cmd.$O: $(SRC_DIR)/timing.h
cmd.$O: $(SRC_DIR)/brldefs.h
cmd.$O: brlapi_constants.h
cmd.$O: $(SRC_DIR)/brlapi_keycodes.h
cmd.$O: $(SRC_DIR)/cmd.h
cmd.$O: $(SRC_DIR)/ttb.h
cmd.$O: $(SRC_DIR)/charset.h
cmd.$O: $(SRC_DIR)/lock.h
cmd.$O: $(SRC_DIR)/queue.h
cmd.$O: cmds.auto.h

# Dependencies for config.$O:
config.$O: $(SRC_DIR)/config.c
config.$O: $(BLD_TOP)config.h
config.$O: $(BLD_TOP)forbuild.h
config.$O: $(SRC_TOP)prologue.h
config.$O: brlapi_constants.h
config.$O: $(SRC_DIR)/brlapi_keycodes.h
config.$O: $(SRC_DIR)/cmd.h
config.$O: $(SRC_DIR)/timing.h
config.$O: $(SRC_DIR)/brl.h
config.$O: $(SRC_DIR)/brldefs.h
config.$O: $(SRC_DIR)/driver.h
config.$O: $(SRC_DIR)/io_generic.h
config.$O: $(SRC_DIR)/ktbdefs.h
config.$O: $(SRC_DIR)/serialdefs.h
config.$O: $(SRC_DIR)/usbdefs.h
config.$O: $(SRC_DIR)/spk.h
config.$O: $(SRC_DIR)/spkdefs.h
config.$O: $(SRC_DIR)/scr.h
config.$O: $(SRC_DIR)/statdefs.h
config.$O: $(SRC_DIR)/status.h
config.$O: $(SRC_DIR)/datafile.h
config.$O: $(SRC_DIR)/queue.h
config.$O: $(SRC_DIR)/ttb.h
config.$O: $(SRC_DIR)/atb.h
config.$O: $(SRC_DIR)/ctb.h
config.$O: $(SRC_DIR)/ctbdefs.h
config.$O: $(SRC_DIR)/ktb.h
config.$O: $(SRC_DIR)/ktb_keyboard.h
config.$O: $(SRC_DIR)/kbd.h
config.$O: $(SRC_DIR)/tunedefs.h
config.$O: $(SRC_DIR)/tunes.h
config.$O: $(SRC_DIR)/message.h
config.$O: $(SRC_DIR)/log.h
config.$O: $(SRC_DIR)/file.h
config.$O: $(SRC_DIR)/parse.h
config.$O: $(SRC_DIR)/system.h
config.$O: $(SRC_DIR)/async.h
config.$O: $(SRC_DIR)/pid.h
config.$O: $(SRC_DIR)/program.h
config.$O: $(SRC_DIR)/options.h
config.$O: $(SRC_DIR)/brltty.h
config.$O: $(SRC_DIR)/menu.h
config.$O: $(SRC_DIR)/prefs.h
config.$O: $(SRC_DIR)/ses.h
config.$O: $(SRC_DIR)/charset.h
config.$O: $(SRC_DIR)/lock.h
config.$O: $(SRC_DIR)/io_serial.h
config.$O: $(SRC_DIR)/io_usb.h
config.$O: $(SRC_DIR)/io_bluetooth.h
config.$O: $(SRC_DIR)/sys_windows.h
config.$O: $(SRC_DIR)/sys_msdos.h

# Dependencies for ctb_compile.$O:
ctb_compile.$O: $(SRC_DIR)/ctb_compile.c
ctb_compile.$O: $(BLD_TOP)config.h
ctb_compile.$O: $(BLD_TOP)forbuild.h
ctb_compile.$O: $(SRC_TOP)prologue.h
ctb_compile.$O: $(SRC_DIR)/log.h
ctb_compile.$O: $(SRC_DIR)/file.h
ctb_compile.$O: $(SRC_DIR)/ctb.h
ctb_compile.$O: $(SRC_DIR)/ctbdefs.h
ctb_compile.$O: $(SRC_DIR)/ctb_internal.h
ctb_compile.$O: $(SRC_DIR)/datafile.h
ctb_compile.$O: $(SRC_DIR)/queue.h
ctb_compile.$O: $(SRC_DIR)/dataarea.h
ctb_compile.$O: $(SRC_DIR)/brldots.h
ctb_compile.$O: $(SRC_DIR)/hostcmd.h

# Dependencies for ctb_translate.$O:
ctb_translate.$O: $(SRC_DIR)/ctb_translate.c
ctb_translate.$O: $(BLD_TOP)config.h
ctb_translate.$O: $(BLD_TOP)forbuild.h
ctb_translate.$O: $(SRC_TOP)prologue.h
ctb_translate.$O: $(SRC_DIR)/ctb.h
ctb_translate.$O: $(SRC_DIR)/ctbdefs.h
ctb_translate.$O: $(SRC_DIR)/ctb_internal.h
ctb_translate.$O: $(SRC_DIR)/ttb.h
ctb_translate.$O: $(SRC_DIR)/prefs.h
ctb_translate.$O: $(SRC_DIR)/unicode.h
ctb_translate.$O: $(SRC_DIR)/charset.h
ctb_translate.$O: $(SRC_DIR)/lock.h
ctb_translate.$O: $(SRC_DIR)/ascii.h
ctb_translate.$O: $(SRC_DIR)/brldots.h
ctb_translate.$O: $(SRC_DIR)/log.h
ctb_translate.$O: $(SRC_DIR)/file.h
ctb_translate.$O: $(SRC_DIR)/parse.h

# Dependencies for dataarea.$O:
dataarea.$O: $(SRC_DIR)/dataarea.c
dataarea.$O: $(BLD_TOP)config.h
dataarea.$O: $(BLD_TOP)forbuild.h
dataarea.$O: $(SRC_TOP)prologue.h
dataarea.$O: $(SRC_DIR)/log.h
dataarea.$O: $(SRC_DIR)/dataarea.h

# Dependencies for datafile.$O:
datafile.$O: $(SRC_DIR)/datafile.c
datafile.$O: $(BLD_TOP)config.h
datafile.$O: $(BLD_TOP)forbuild.h
datafile.$O: $(SRC_TOP)prologue.h
datafile.$O: $(SRC_DIR)/log.h
datafile.$O: $(SRC_DIR)/file.h
datafile.$O: $(SRC_DIR)/queue.h
datafile.$O: $(SRC_DIR)/datafile.h
datafile.$O: $(SRC_DIR)/charset.h
datafile.$O: $(SRC_DIR)/lock.h
datafile.$O: $(SRC_DIR)/unicode.h
datafile.$O: $(SRC_DIR)/brldots.h

# Dependencies for device.$O:
device.$O: $(SRC_DIR)/device.c
device.$O: $(BLD_TOP)config.h
device.$O: $(BLD_TOP)forbuild.h
device.$O: $(SRC_TOP)prologue.h
device.$O: $(SRC_DIR)/device.h
device.$O: $(SRC_DIR)/log.h
device.$O: $(SRC_DIR)/file.h

# Dependencies for driver.$O:
driver.$O: $(SRC_DIR)/driver.c
driver.$O: $(BLD_TOP)config.h
driver.$O: $(BLD_TOP)forbuild.h
driver.$O: $(SRC_TOP)prologue.h
driver.$O: $(SRC_DIR)/log.h
driver.$O: $(SRC_DIR)/driver.h

# Dependencies for drivers.$O:
drivers.$O: $(SRC_DIR)/drivers.c
drivers.$O: $(BLD_TOP)config.h
drivers.$O: $(BLD_TOP)forbuild.h
drivers.$O: $(SRC_TOP)prologue.h
drivers.$O: $(SRC_DIR)/log.h
drivers.$O: $(SRC_DIR)/file.h
drivers.$O: $(SRC_DIR)/system.h
drivers.$O: $(SRC_DIR)/driver.h
drivers.$O: $(SRC_DIR)/drivers.h

# Dependencies for file.$O:
file.$O: $(SRC_DIR)/file.c
file.$O: $(BLD_TOP)config.h
file.$O: $(BLD_TOP)forbuild.h
file.$O: $(SRC_TOP)prologue.h
file.$O: $(SRC_DIR)/file.h
file.$O: $(SRC_DIR)/log.h
file.$O: $(SRC_DIR)/parse.h
file.$O: $(SRC_DIR)/timing.h

# Dependencies for fm.$O:
fm.$O: $(SRC_DIR)/fm.c
fm.$O: $(BLD_TOP)config.h
fm.$O: $(BLD_TOP)forbuild.h
fm.$O: $(SRC_TOP)prologue.h
fm.$O: $(SRC_DIR)/prefs.h
fm.$O: $(SRC_DIR)/log.h
fm.$O: $(SRC_DIR)/timing.h
fm.$O: $(SRC_DIR)/notes.h
fm.$O: $(SRC_DIR)/adlib.h

# Dependencies for hidkeys.$O:
hidkeys.$O: $(SRC_DIR)/hidkeys.c
hidkeys.$O: $(BLD_TOP)config.h
hidkeys.$O: $(BLD_TOP)forbuild.h
hidkeys.$O: $(SRC_TOP)prologue.h
hidkeys.$O: $(SRC_DIR)/hidkeys.h
hidkeys.$O: $(SRC_DIR)/bitmask.h
hidkeys.$O: $(SRC_DIR)/brldefs.h
hidkeys.$O: $(SRC_DIR)/brl.h
hidkeys.$O: $(SRC_DIR)/driver.h
hidkeys.$O: $(SRC_DIR)/io_generic.h
hidkeys.$O: $(SRC_DIR)/ktbdefs.h
hidkeys.$O: $(SRC_DIR)/serialdefs.h
hidkeys.$O: $(SRC_DIR)/usbdefs.h

# Dependencies for hostcmd.$O:
hostcmd.$O: $(SRC_DIR)/hostcmd.c
hostcmd.$O: $(BLD_TOP)config.h
hostcmd.$O: $(BLD_TOP)forbuild.h
hostcmd.$O: $(SRC_TOP)prologue.h
hostcmd.$O: $(SRC_DIR)/log.h
hostcmd.$O: $(SRC_DIR)/hostcmd.h
hostcmd.$O: $(SRC_DIR)/hostcmd_none.h
hostcmd.$O: $(SRC_DIR)/hostcmd_unix.h
hostcmd.$O: $(SRC_DIR)/hostcmd_internal.h

# Dependencies for hostcmd_none.$O:
hostcmd_none.$O: $(SRC_DIR)/hostcmd_none.c
hostcmd_none.$O: $(BLD_TOP)config.h
hostcmd_none.$O: $(BLD_TOP)forbuild.h
hostcmd_none.$O: $(SRC_TOP)prologue.h
hostcmd_none.$O: $(SRC_DIR)/hostcmd_none.h
hostcmd_none.$O: $(SRC_DIR)/hostcmd_internal.h

# Dependencies for hostcmd_unix.$O:
hostcmd_unix.$O: $(SRC_DIR)/hostcmd_unix.c
hostcmd_unix.$O: $(BLD_TOP)config.h
hostcmd_unix.$O: $(BLD_TOP)forbuild.h
hostcmd_unix.$O: $(SRC_TOP)prologue.h
hostcmd_unix.$O: $(SRC_DIR)/log.h
hostcmd_unix.$O: $(SRC_DIR)/hostcmd_unix.h
hostcmd_unix.$O: $(SRC_DIR)/hostcmd_internal.h

# Dependencies for io_generic.$O:
io_generic.$O: $(SRC_DIR)/io_generic.c
io_generic.$O: $(BLD_TOP)config.h
io_generic.$O: $(BLD_TOP)forbuild.h
io_generic.$O: $(SRC_TOP)prologue.h
io_generic.$O: $(SRC_DIR)/log.h
io_generic.$O: $(SRC_DIR)/timing.h
io_generic.$O: $(SRC_DIR)/io_generic.h
io_generic.$O: $(SRC_DIR)/serialdefs.h
io_generic.$O: $(SRC_DIR)/usbdefs.h
io_generic.$O: $(SRC_DIR)/io_serial.h
io_generic.$O: $(SRC_DIR)/io_usb.h
io_generic.$O: $(SRC_DIR)/io_bluetooth.h

# Dependencies for io_misc.$O:
io_misc.$O: $(SRC_DIR)/io_misc.c
io_misc.$O: $(BLD_TOP)config.h
io_misc.$O: $(BLD_TOP)forbuild.h
io_misc.$O: $(SRC_TOP)prologue.h
io_misc.$O: $(SRC_DIR)/io_misc.h
io_misc.$O: $(SRC_DIR)/log.h
io_misc.$O: $(SRC_DIR)/timing.h
io_misc.$O: $(SRC_DIR)/sys_msdos.h

# Dependencies for kbd.$O:
kbd.$O: $(SRC_DIR)/kbd.c
kbd.$O: $(BLD_TOP)config.h
kbd.$O: $(BLD_TOP)forbuild.h
kbd.$O: $(SRC_TOP)prologue.h
kbd.$O: $(SRC_DIR)/log.h
kbd.$O: $(SRC_DIR)/parse.h
kbd.$O: $(SRC_DIR)/kbd.h
kbd.$O: $(SRC_DIR)/ktbdefs.h

# Dependencies for kbd_linux.$O:
kbd_linux.$O: $(SRC_DIR)/kbd_linux.c
kbd_linux.$O: $(BLD_TOP)config.h
kbd_linux.$O: $(BLD_TOP)forbuild.h
kbd_linux.$O: $(SRC_TOP)prologue.h
kbd_linux.$O: $(SRC_DIR)/log.h
kbd_linux.$O: $(SRC_DIR)/kbd.h
kbd_linux.$O: $(SRC_DIR)/ktbdefs.h
kbd_linux.$O: $(SRC_DIR)/ktb_keyboard.h
kbd_linux.$O: $(SRC_DIR)/sys_linux.h
kbd_linux.$O: $(SRC_DIR)/bitmask.h
kbd_linux.$O: $(SRC_DIR)/async.h
kbd_linux.$O: $(SRC_DIR)/timing.h

# Dependencies for kbd_none.$O:
kbd_none.$O: $(SRC_DIR)/kbd_none.c
kbd_none.$O: $(BLD_TOP)config.h
kbd_none.$O: $(BLD_TOP)forbuild.h
kbd_none.$O: $(SRC_TOP)prologue.h
kbd_none.$O: $(SRC_DIR)/kbd.h
kbd_none.$O: $(SRC_DIR)/ktbdefs.h

# Dependencies for ktb_compile.$O:
ktb_compile.$O: $(SRC_DIR)/ktb_compile.c
ktb_compile.$O: $(BLD_TOP)config.h
ktb_compile.$O: $(BLD_TOP)forbuild.h
ktb_compile.$O: $(SRC_TOP)prologue.h
ktb_compile.$O: $(SRC_DIR)/log.h
ktb_compile.$O: $(SRC_DIR)/file.h
ktb_compile.$O: $(SRC_DIR)/datafile.h
ktb_compile.$O: $(SRC_DIR)/queue.h
ktb_compile.$O: brlapi_constants.h
ktb_compile.$O: $(SRC_DIR)/brlapi_keycodes.h
ktb_compile.$O: $(SRC_DIR)/cmd.h
ktb_compile.$O: $(SRC_DIR)/timing.h
ktb_compile.$O: $(SRC_DIR)/brldefs.h
ktb_compile.$O: $(SRC_DIR)/ktb.h
ktb_compile.$O: $(SRC_DIR)/ktbdefs.h
ktb_compile.$O: $(SRC_DIR)/ktb_internal.h

# Dependencies for ktb_keyboard.$O:
ktb_keyboard.$O: $(SRC_DIR)/ktb_keyboard.c
ktb_keyboard.$O: $(BLD_TOP)config.h
ktb_keyboard.$O: $(BLD_TOP)forbuild.h
ktb_keyboard.$O: $(SRC_TOP)prologue.h
ktb_keyboard.$O: $(SRC_DIR)/ktb_keyboard.h
ktb_keyboard.$O: $(SRC_DIR)/ktbdefs.h

# Dependencies for ktb_list.$O:
ktb_list.$O: $(SRC_DIR)/ktb_list.c
ktb_list.$O: $(BLD_TOP)config.h
ktb_list.$O: $(BLD_TOP)forbuild.h
ktb_list.$O: $(SRC_TOP)prologue.h
ktb_list.$O: $(SRC_DIR)/log.h
ktb_list.$O: $(SRC_DIR)/charset.h
ktb_list.$O: $(SRC_DIR)/lock.h
ktb_list.$O: brlapi_constants.h
ktb_list.$O: $(SRC_DIR)/brlapi_keycodes.h
ktb_list.$O: $(SRC_DIR)/cmd.h
ktb_list.$O: $(SRC_DIR)/timing.h
ktb_list.$O: $(SRC_DIR)/ktb.h
ktb_list.$O: $(SRC_DIR)/ktbdefs.h
ktb_list.$O: $(SRC_DIR)/ktb_internal.h
ktb_list.$O: $(SRC_DIR)/brldefs.h
ktb_list.$O: $(SRC_DIR)/ktb_inspect.h

# Dependencies for ktb_translate.$O:
ktb_translate.$O: $(SRC_DIR)/ktb_translate.c
ktb_translate.$O: $(BLD_TOP)config.h
ktb_translate.$O: $(BLD_TOP)forbuild.h
ktb_translate.$O: $(SRC_TOP)prologue.h
ktb_translate.$O: $(SRC_DIR)/log.h
ktb_translate.$O: $(SRC_DIR)/ktb.h
ktb_translate.$O: $(SRC_DIR)/ktbdefs.h
ktb_translate.$O: $(SRC_DIR)/ktb_internal.h
ktb_translate.$O: $(SRC_DIR)/brldefs.h
ktb_translate.$O: $(SRC_DIR)/ktb_inspect.h
ktb_translate.$O: $(SRC_DIR)/brl.h
ktb_translate.$O: $(SRC_DIR)/driver.h
ktb_translate.$O: $(SRC_DIR)/io_generic.h
ktb_translate.$O: $(SRC_DIR)/serialdefs.h
ktb_translate.$O: $(SRC_DIR)/usbdefs.h

# Dependencies for ktbtest.$O:
ktbtest.$O: $(SRC_DIR)/ktbtest.c
ktbtest.$O: $(BLD_TOP)config.h
ktbtest.$O: $(BLD_TOP)forbuild.h
ktbtest.$O: $(SRC_TOP)prologue.h
ktbtest.$O: $(SRC_DIR)/pid.h
ktbtest.$O: $(SRC_DIR)/program.h
ktbtest.$O: $(SRC_DIR)/options.h
ktbtest.$O: $(SRC_DIR)/log.h
ktbtest.$O: $(SRC_DIR)/file.h
ktbtest.$O: $(SRC_DIR)/parse.h
ktbtest.$O: $(SRC_DIR)/system.h
ktbtest.$O: $(SRC_DIR)/ktb.h
ktbtest.$O: $(SRC_DIR)/ktbdefs.h
ktbtest.$O: $(SRC_DIR)/ktb_keyboard.h
ktbtest.$O: $(SRC_DIR)/brl.h
ktbtest.$O: $(SRC_DIR)/brldefs.h
ktbtest.$O: $(SRC_DIR)/driver.h
ktbtest.$O: $(SRC_DIR)/io_generic.h
ktbtest.$O: $(SRC_DIR)/serialdefs.h
ktbtest.$O: $(SRC_DIR)/usbdefs.h
ktbtest.$O: brlapi_constants.h
ktbtest.$O: $(SRC_DIR)/brlapi_keycodes.h
ktbtest.$O: $(SRC_DIR)/brltty.h
ktbtest.$O: $(SRC_DIR)/cmd.h
ktbtest.$O: $(SRC_DIR)/ctb.h
ktbtest.$O: $(SRC_DIR)/ctbdefs.h
ktbtest.$O: $(SRC_DIR)/menu.h
ktbtest.$O: $(SRC_DIR)/prefs.h
ktbtest.$O: $(SRC_DIR)/scr.h
ktbtest.$O: $(SRC_DIR)/ses.h
ktbtest.$O: $(SRC_DIR)/spk.h
ktbtest.$O: $(SRC_DIR)/spkdefs.h
ktbtest.$O: $(SRC_DIR)/timing.h
ktbtest.$O: $(SRC_DIR)/message.h

# Dependencies for lock.$O:
lock.$O: $(SRC_DIR)/lock.c
lock.$O: $(BLD_TOP)config.h
lock.$O: $(BLD_TOP)forbuild.h
lock.$O: $(SRC_TOP)prologue.h
lock.$O: $(SRC_DIR)/timing.h
lock.$O: $(SRC_DIR)/win_pthread.h
lock.$O: $(SRC_DIR)/lock.h

# Dependencies for log.$O:
log.$O: $(SRC_DIR)/log.c
log.$O: $(BLD_TOP)config.h
log.$O: $(BLD_TOP)forbuild.h
log.$O: $(SRC_TOP)prologue.h
log.$O: $(SRC_DIR)/log.h
log.$O: $(SRC_DIR)/timing.h

# Dependencies for main.$O:
main.$O: $(SRC_DIR)/main.c
main.$O: $(BLD_TOP)config.h
main.$O: $(BLD_TOP)forbuild.h
main.$O: $(SRC_TOP)prologue.h
main.$O: $(SRC_DIR)/embed.h
main.$O: $(SRC_DIR)/pid.h
main.$O: $(SRC_DIR)/program.h
main.$O: $(SRC_DIR)/brl.h
main.$O: brlapi_constants.h
main.$O: $(SRC_DIR)/brlapi_keycodes.h
main.$O: $(SRC_DIR)/brldefs.h
main.$O: $(SRC_DIR)/brltty.h
main.$O: $(SRC_DIR)/cmd.h
main.$O: $(SRC_DIR)/ctb.h
main.$O: $(SRC_DIR)/ctbdefs.h
main.$O: $(SRC_DIR)/driver.h
main.$O: $(SRC_DIR)/io_generic.h
main.$O: $(SRC_DIR)/ktb.h
main.$O: $(SRC_DIR)/ktbdefs.h
main.$O: $(SRC_DIR)/menu.h
main.$O: $(SRC_DIR)/prefs.h
main.$O: $(SRC_DIR)/scr.h
main.$O: $(SRC_DIR)/serialdefs.h
main.$O: $(SRC_DIR)/ses.h
main.$O: $(SRC_DIR)/spk.h
main.$O: $(SRC_DIR)/spkdefs.h
main.$O: $(SRC_DIR)/timing.h
main.$O: $(SRC_DIR)/usbdefs.h
main.$O: $(SRC_DIR)/log.h

# Dependencies for menu.$O:
menu.$O: $(SRC_DIR)/menu.c
menu.$O: $(BLD_TOP)config.h
menu.$O: $(BLD_TOP)forbuild.h
menu.$O: $(SRC_TOP)prologue.h
menu.$O: $(SRC_DIR)/log.h
menu.$O: $(SRC_DIR)/file.h
menu.$O: $(SRC_DIR)/menu.h
menu.$O: $(SRC_DIR)/prefs.h
menu.$O: $(SRC_DIR)/parse.h

# Dependencies for menu_prefs.$O:
menu_prefs.$O: $(SRC_DIR)/menu_prefs.c
menu_prefs.$O: $(BLD_TOP)config.h
menu_prefs.$O: $(BLD_TOP)forbuild.h
menu_prefs.$O: $(SRC_TOP)prologue.h
menu_prefs.$O: $(SRC_DIR)/log.h
menu_prefs.$O: $(SRC_DIR)/menu.h
menu_prefs.$O: $(SRC_DIR)/prefs.h
menu_prefs.$O: $(SRC_DIR)/statdefs.h
menu_prefs.$O: $(SRC_DIR)/brl.h
menu_prefs.$O: brlapi_constants.h
menu_prefs.$O: $(SRC_DIR)/brlapi_keycodes.h
menu_prefs.$O: $(SRC_DIR)/brldefs.h
menu_prefs.$O: $(SRC_DIR)/brltty.h
menu_prefs.$O: $(SRC_DIR)/cmd.h
menu_prefs.$O: $(SRC_DIR)/ctb.h
menu_prefs.$O: $(SRC_DIR)/ctbdefs.h
menu_prefs.$O: $(SRC_DIR)/driver.h
menu_prefs.$O: $(SRC_DIR)/io_generic.h
menu_prefs.$O: $(SRC_DIR)/ktb.h
menu_prefs.$O: $(SRC_DIR)/ktbdefs.h
menu_prefs.$O: $(SRC_DIR)/pid.h
menu_prefs.$O: $(SRC_DIR)/program.h
menu_prefs.$O: $(SRC_DIR)/scr.h
menu_prefs.$O: $(SRC_DIR)/serialdefs.h
menu_prefs.$O: $(SRC_DIR)/ses.h
menu_prefs.$O: $(SRC_DIR)/spk.h
menu_prefs.$O: $(SRC_DIR)/spkdefs.h
menu_prefs.$O: $(SRC_DIR)/timing.h
menu_prefs.$O: $(SRC_DIR)/usbdefs.h
menu_prefs.$O: $(SRC_DIR)/ttb.h
menu_prefs.$O: $(SRC_DIR)/atb.h
menu_prefs.$O: $(SRC_DIR)/tunedefs.h
menu_prefs.$O: $(SRC_DIR)/tunes.h

# Dependencies for midi.$O:
midi.$O: $(SRC_DIR)/midi.c
midi.$O: $(BLD_TOP)config.h
midi.$O: $(BLD_TOP)forbuild.h
midi.$O: $(SRC_TOP)prologue.h
midi.$O: $(SRC_DIR)/brl.h
midi.$O: brlapi_constants.h
midi.$O: $(SRC_DIR)/brlapi_keycodes.h
midi.$O: $(SRC_DIR)/brldefs.h
midi.$O: $(SRC_DIR)/brltty.h
midi.$O: $(SRC_DIR)/cmd.h
midi.$O: $(SRC_DIR)/ctb.h
midi.$O: $(SRC_DIR)/ctbdefs.h
midi.$O: $(SRC_DIR)/driver.h
midi.$O: $(SRC_DIR)/io_generic.h
midi.$O: $(SRC_DIR)/ktb.h
midi.$O: $(SRC_DIR)/ktbdefs.h
midi.$O: $(SRC_DIR)/menu.h
midi.$O: $(SRC_DIR)/pid.h
midi.$O: $(SRC_DIR)/prefs.h
midi.$O: $(SRC_DIR)/program.h
midi.$O: $(SRC_DIR)/scr.h
midi.$O: $(SRC_DIR)/serialdefs.h
midi.$O: $(SRC_DIR)/ses.h
midi.$O: $(SRC_DIR)/spk.h
midi.$O: $(SRC_DIR)/spkdefs.h
midi.$O: $(SRC_DIR)/timing.h
midi.$O: $(SRC_DIR)/usbdefs.h
midi.$O: $(SRC_DIR)/log.h
midi.$O: $(SRC_DIR)/system.h
midi.$O: $(SRC_DIR)/notes.h

# Dependencies for mount.$O:
mount.$O: $(SRC_DIR)/mount.c
mount.$O: $(BLD_TOP)config.h
mount.$O: $(BLD_TOP)forbuild.h
mount.$O: $(SRC_TOP)prologue.h
mount.$O: $(SRC_DIR)/log.h
mount.$O: $(SRC_DIR)/system.h
mount.$O: $(SRC_DIR)/async.h
mount.$O: $(SRC_DIR)/timing.h
mount.$O: $(SRC_DIR)/mount.h
mount.$O: $(SRC_DIR)/mount_none.h
mount.$O: $(SRC_DIR)/mount_mntent.h
mount.$O: $(SRC_DIR)/mount_mnttab.h
mount.$O: $(SRC_DIR)/mount_internal.h

# Dependencies for mount_mntent.$O:
mount_mntent.$O: $(SRC_DIR)/mount_mntent.c
mount_mntent.$O: $(BLD_TOP)config.h
mount_mntent.$O: $(BLD_TOP)forbuild.h
mount_mntent.$O: $(SRC_TOP)prologue.h
mount_mntent.$O: $(SRC_DIR)/log.h
mount_mntent.$O: $(SRC_DIR)/mount_mntent.h
mount_mntent.$O: $(SRC_DIR)/mount_internal.h

# Dependencies for mount_mnttab.$O:
mount_mnttab.$O: $(SRC_DIR)/mount_mnttab.c
mount_mnttab.$O: $(BLD_TOP)config.h
mount_mnttab.$O: $(BLD_TOP)forbuild.h
mount_mnttab.$O: $(SRC_TOP)prologue.h
mount_mnttab.$O: $(SRC_DIR)/log.h
mount_mnttab.$O: $(SRC_DIR)/mount_mnttab.h
mount_mnttab.$O: $(SRC_DIR)/mount_internal.h

# Dependencies for mount_none.$O:
mount_none.$O: $(SRC_DIR)/mount_none.c
mount_none.$O: $(BLD_TOP)config.h
mount_none.$O: $(BLD_TOP)forbuild.h
mount_none.$O: $(SRC_TOP)prologue.h
mount_none.$O: $(SRC_DIR)/log.h
mount_none.$O: $(SRC_DIR)/mount_none.h
mount_none.$O: $(SRC_DIR)/mount_internal.h

# Dependencies for notes.$O:
notes.$O: $(SRC_DIR)/notes.c
notes.$O: $(BLD_TOP)config.h
notes.$O: $(BLD_TOP)forbuild.h
notes.$O: $(SRC_TOP)prologue.h
notes.$O: $(SRC_DIR)/log.h
notes.$O: $(SRC_DIR)/notes.h

# Dependencies for options.$O:
options.$O: $(SRC_DIR)/options.c
options.$O: $(BLD_TOP)config.h
options.$O: $(BLD_TOP)forbuild.h
options.$O: $(SRC_TOP)prologue.h
options.$O: $(SRC_DIR)/pid.h
options.$O: $(SRC_DIR)/program.h
options.$O: $(SRC_DIR)/options.h
options.$O: $(SRC_DIR)/log.h
options.$O: $(SRC_DIR)/file.h
options.$O: $(SRC_DIR)/parse.h
options.$O: $(SRC_DIR)/system.h

# Dependencies for parse.$O:
parse.$O: $(SRC_DIR)/parse.c
parse.$O: $(BLD_TOP)config.h
parse.$O: $(BLD_TOP)forbuild.h
parse.$O: $(SRC_TOP)prologue.h
parse.$O: $(SRC_DIR)/parse.h
parse.$O: $(SRC_DIR)/log.h

# Dependencies for pcm.$O:
pcm.$O: $(SRC_DIR)/pcm.c
pcm.$O: $(BLD_TOP)config.h
pcm.$O: $(BLD_TOP)forbuild.h
pcm.$O: $(SRC_TOP)prologue.h
pcm.$O: $(SRC_DIR)/brl.h
pcm.$O: brlapi_constants.h
pcm.$O: $(SRC_DIR)/brlapi_keycodes.h
pcm.$O: $(SRC_DIR)/brldefs.h
pcm.$O: $(SRC_DIR)/brltty.h
pcm.$O: $(SRC_DIR)/cmd.h
pcm.$O: $(SRC_DIR)/ctb.h
pcm.$O: $(SRC_DIR)/ctbdefs.h
pcm.$O: $(SRC_DIR)/driver.h
pcm.$O: $(SRC_DIR)/io_generic.h
pcm.$O: $(SRC_DIR)/ktb.h
pcm.$O: $(SRC_DIR)/ktbdefs.h
pcm.$O: $(SRC_DIR)/menu.h
pcm.$O: $(SRC_DIR)/pid.h
pcm.$O: $(SRC_DIR)/prefs.h
pcm.$O: $(SRC_DIR)/program.h
pcm.$O: $(SRC_DIR)/scr.h
pcm.$O: $(SRC_DIR)/serialdefs.h
pcm.$O: $(SRC_DIR)/ses.h
pcm.$O: $(SRC_DIR)/spk.h
pcm.$O: $(SRC_DIR)/spkdefs.h
pcm.$O: $(SRC_DIR)/timing.h
pcm.$O: $(SRC_DIR)/usbdefs.h
pcm.$O: $(SRC_DIR)/log.h
pcm.$O: $(SRC_DIR)/system.h
pcm.$O: $(SRC_DIR)/notes.h

# Dependencies for pid.$O:
pid.$O: $(SRC_DIR)/pid.c
pid.$O: $(BLD_TOP)config.h
pid.$O: $(BLD_TOP)forbuild.h
pid.$O: $(SRC_TOP)prologue.h
pid.$O: $(SRC_DIR)/pid.h

# Dependencies for prefs.$O:
prefs.$O: $(SRC_DIR)/prefs.c
prefs.$O: $(BLD_TOP)config.h
prefs.$O: $(BLD_TOP)forbuild.h
prefs.$O: $(SRC_TOP)prologue.h
prefs.$O: $(SRC_DIR)/prefs.h
prefs.$O: $(SRC_DIR)/prefs_internal.h
prefs.$O: $(SRC_DIR)/statdefs.h
prefs.$O: $(SRC_DIR)/brldefs.h
prefs.$O: $(SRC_DIR)/ctbdefs.h
prefs.$O: $(SRC_DIR)/defaults.h
prefs.$O: $(SRC_DIR)/spkdefs.h
prefs.$O: $(SRC_DIR)/tunedefs.h
prefs.$O: $(SRC_DIR)/log.h
prefs.$O: $(SRC_DIR)/file.h
prefs.$O: $(SRC_DIR)/parse.h

# Dependencies for prefs_table.$O:
prefs_table.$O: $(SRC_DIR)/prefs_table.c
prefs_table.$O: $(BLD_TOP)config.h
prefs_table.$O: $(BLD_TOP)forbuild.h
prefs_table.$O: $(SRC_TOP)prologue.h
prefs_table.$O: $(SRC_DIR)/prefs.h
prefs_table.$O: $(SRC_DIR)/prefs_internal.h
prefs_table.$O: $(SRC_DIR)/statdefs.h
prefs_table.$O: $(SRC_DIR)/brldefs.h
prefs_table.$O: $(SRC_DIR)/ctbdefs.h
prefs_table.$O: $(SRC_DIR)/defaults.h
prefs_table.$O: $(SRC_DIR)/spkdefs.h
prefs_table.$O: $(SRC_DIR)/tunedefs.h

# Dependencies for program.$O:
program.$O: $(SRC_DIR)/program.c
program.$O: $(BLD_TOP)config.h
program.$O: $(BLD_TOP)forbuild.h
program.$O: $(SRC_TOP)prologue.h
program.$O: $(SRC_DIR)/pid.h
program.$O: $(SRC_DIR)/program.h
program.$O: $(SRC_DIR)/log.h
program.$O: $(SRC_DIR)/file.h
program.$O: $(SRC_DIR)/parse.h
program.$O: $(SRC_DIR)/system.h
program.$O: $(SRC_DIR)/sys_windows.h

# Dependencies for queue.$O:
queue.$O: $(SRC_DIR)/queue.c
queue.$O: $(BLD_TOP)config.h
queue.$O: $(BLD_TOP)forbuild.h
queue.$O: $(SRC_TOP)prologue.h
queue.$O: $(SRC_DIR)/log.h
queue.$O: $(SRC_DIR)/queue.h

# Dependencies for routing.$O:
routing.$O: $(SRC_DIR)/routing.c
routing.$O: $(BLD_TOP)config.h
routing.$O: $(BLD_TOP)forbuild.h
routing.$O: $(SRC_TOP)prologue.h
routing.$O: $(SRC_DIR)/log.h
routing.$O: $(SRC_DIR)/pid.h
routing.$O: $(SRC_DIR)/program.h
routing.$O: $(SRC_DIR)/timing.h
routing.$O: $(SRC_DIR)/driver.h
routing.$O: $(SRC_DIR)/ktbdefs.h
routing.$O: $(SRC_DIR)/scr.h
routing.$O: $(SRC_DIR)/routing.h

# Dependencies for scancodes.$O:
scancodes.$O: $(SRC_DIR)/scancodes.c
scancodes.$O: $(BLD_TOP)config.h
scancodes.$O: $(BLD_TOP)forbuild.h
scancodes.$O: $(SRC_TOP)prologue.h
scancodes.$O: $(SRC_DIR)/scancodes.h
scancodes.$O: $(SRC_DIR)/brldefs.h

# Dependencies for scr.$O:
scr.$O: $(SRC_DIR)/scr.c
scr.$O: $(BLD_TOP)config.h
scr.$O: $(BLD_TOP)forbuild.h
scr.$O: $(SRC_TOP)prologue.h
scr.$O: $(SRC_DIR)/log.h
scr.$O: $(SRC_DIR)/message.h
scr.$O: $(SRC_DIR)/system.h
scr.$O: $(SRC_DIR)/driver.h
scr.$O: $(SRC_DIR)/drivers.h
scr.$O: $(SRC_DIR)/menu.h
scr.$O: $(SRC_DIR)/menu_prefs.h
scr.$O: $(SRC_DIR)/ktbdefs.h
scr.$O: $(SRC_DIR)/scr.h
scr.$O: $(SRC_DIR)/scr_base.h
scr.$O: $(SRC_DIR)/scr_help.h
scr.$O: $(SRC_DIR)/scr_menu.h
scr.$O: $(SRC_DIR)/scr_frozen.h
scr.$O: $(SRC_DIR)/scr_main.h
scr.$O: $(SRC_DIR)/scr_real.h
scr.$O: scr.auto.h
scr.$O: $(SRC_DIR)/scr_driver.h

# Dependencies for scr_base.$O:
scr_base.$O: $(SRC_DIR)/scr_base.c
scr_base.$O: $(BLD_TOP)config.h
scr_base.$O: $(BLD_TOP)forbuild.h
scr_base.$O: $(SRC_TOP)prologue.h
scr_base.$O: $(SRC_DIR)/driver.h
scr_base.$O: $(SRC_DIR)/ktbdefs.h
scr_base.$O: $(SRC_DIR)/scr.h
scr_base.$O: $(SRC_DIR)/scr_base.h

# Dependencies for scr_frozen.$O:
scr_frozen.$O: $(SRC_DIR)/scr_frozen.c
scr_frozen.$O: $(BLD_TOP)config.h
scr_frozen.$O: $(BLD_TOP)forbuild.h
scr_frozen.$O: $(SRC_TOP)prologue.h
scr_frozen.$O: $(SRC_DIR)/log.h
scr_frozen.$O: $(SRC_DIR)/driver.h
scr_frozen.$O: $(SRC_DIR)/ktbdefs.h
scr_frozen.$O: $(SRC_DIR)/scr.h
scr_frozen.$O: $(SRC_DIR)/scr_base.h
scr_frozen.$O: $(SRC_DIR)/scr_frozen.h

# Dependencies for scr_help.$O:
scr_help.$O: $(SRC_DIR)/scr_help.c
scr_help.$O: $(BLD_TOP)config.h
scr_help.$O: $(BLD_TOP)forbuild.h
scr_help.$O: $(SRC_TOP)prologue.h
scr_help.$O: $(SRC_DIR)/log.h
scr_help.$O: $(SRC_DIR)/driver.h
scr_help.$O: $(SRC_DIR)/ktbdefs.h
scr_help.$O: $(SRC_DIR)/scr.h
scr_help.$O: $(SRC_DIR)/scr_base.h
scr_help.$O: $(SRC_DIR)/scr_help.h

# Dependencies for scr_main.$O:
scr_main.$O: $(SRC_DIR)/scr_main.c
scr_main.$O: $(BLD_TOP)config.h
scr_main.$O: $(BLD_TOP)forbuild.h
scr_main.$O: $(SRC_TOP)prologue.h
scr_main.$O: $(SRC_DIR)/driver.h
scr_main.$O: $(SRC_DIR)/ktbdefs.h
scr_main.$O: $(SRC_DIR)/scr.h
scr_main.$O: $(SRC_DIR)/scr_base.h
scr_main.$O: $(SRC_DIR)/scr_main.h

# Dependencies for scr_menu.$O:
scr_menu.$O: $(SRC_DIR)/scr_menu.c
scr_menu.$O: $(BLD_TOP)config.h
scr_menu.$O: $(BLD_TOP)forbuild.h
scr_menu.$O: $(SRC_TOP)prologue.h
scr_menu.$O: $(SRC_DIR)/brl.h
scr_menu.$O: brlapi_constants.h
scr_menu.$O: $(SRC_DIR)/brlapi_keycodes.h
scr_menu.$O: $(SRC_DIR)/brldefs.h
scr_menu.$O: $(SRC_DIR)/brltty.h
scr_menu.$O: $(SRC_DIR)/cmd.h
scr_menu.$O: $(SRC_DIR)/ctb.h
scr_menu.$O: $(SRC_DIR)/ctbdefs.h
scr_menu.$O: $(SRC_DIR)/driver.h
scr_menu.$O: $(SRC_DIR)/io_generic.h
scr_menu.$O: $(SRC_DIR)/ktb.h
scr_menu.$O: $(SRC_DIR)/ktbdefs.h
scr_menu.$O: $(SRC_DIR)/menu.h
scr_menu.$O: $(SRC_DIR)/pid.h
scr_menu.$O: $(SRC_DIR)/prefs.h
scr_menu.$O: $(SRC_DIR)/program.h
scr_menu.$O: $(SRC_DIR)/scr.h
scr_menu.$O: $(SRC_DIR)/serialdefs.h
scr_menu.$O: $(SRC_DIR)/ses.h
scr_menu.$O: $(SRC_DIR)/spk.h
scr_menu.$O: $(SRC_DIR)/spkdefs.h
scr_menu.$O: $(SRC_DIR)/timing.h
scr_menu.$O: $(SRC_DIR)/usbdefs.h
scr_menu.$O: $(SRC_DIR)/tunedefs.h
scr_menu.$O: $(SRC_DIR)/tunes.h
scr_menu.$O: $(SRC_DIR)/charset.h
scr_menu.$O: $(SRC_DIR)/lock.h
scr_menu.$O: $(SRC_DIR)/scr_base.h
scr_menu.$O: $(SRC_DIR)/scr_menu.h

# Dependencies for scr_real.$O:
scr_real.$O: $(SRC_DIR)/scr_real.c
scr_real.$O: $(BLD_TOP)config.h
scr_real.$O: $(BLD_TOP)forbuild.h
scr_real.$O: $(SRC_TOP)prologue.h
scr_real.$O: $(SRC_DIR)/log.h
scr_real.$O: $(SRC_DIR)/device.h
scr_real.$O: $(SRC_DIR)/async.h
scr_real.$O: $(SRC_DIR)/timing.h
scr_real.$O: $(SRC_DIR)/driver.h
scr_real.$O: $(SRC_DIR)/ktbdefs.h
scr_real.$O: $(SRC_DIR)/scr.h
scr_real.$O: $(SRC_DIR)/scr_base.h
scr_real.$O: $(SRC_DIR)/scr_main.h
scr_real.$O: $(SRC_DIR)/scr_real.h
scr_real.$O: $(SRC_DIR)/routing.h

# Dependencies for scrtest.$O:
scrtest.$O: $(SRC_DIR)/scrtest.c
scrtest.$O: $(BLD_TOP)config.h
scrtest.$O: $(BLD_TOP)forbuild.h
scrtest.$O: $(SRC_TOP)prologue.h
scrtest.$O: $(SRC_DIR)/pid.h
scrtest.$O: $(SRC_DIR)/program.h
scrtest.$O: $(SRC_DIR)/options.h
scrtest.$O: $(SRC_DIR)/log.h
scrtest.$O: $(SRC_DIR)/parse.h
scrtest.$O: $(SRC_DIR)/driver.h
scrtest.$O: $(SRC_DIR)/ktbdefs.h
scrtest.$O: $(SRC_DIR)/scr.h

# Dependencies for serial.$O:
serial.$O: $(SRC_DIR)/serial.c
serial.$O: $(BLD_TOP)config.h
serial.$O: $(BLD_TOP)forbuild.h
serial.$O: $(SRC_TOP)prologue.h
serial.$O: $(SRC_DIR)/log.h
serial.$O: $(SRC_DIR)/parse.h
serial.$O: $(SRC_DIR)/device.h
serial.$O: $(SRC_DIR)/timing.h
serial.$O: $(SRC_DIR)/serial_none.h
serial.$O: $(SRC_DIR)/serial_grub.h
serial.$O: $(SRC_DIR)/serial_uart.h
serial.$O: $(SRC_DIR)/serial_msdos.h
serial.$O: $(SRC_DIR)/serial_termios.h
serial.$O: $(SRC_DIR)/serial_windows.h
serial.$O: $(SRC_DIR)/io_serial.h
serial.$O: $(SRC_DIR)/serial_internal.h
serial.$O: $(SRC_DIR)/serialdefs.h
serial.$O: $(SRC_DIR)/win_pthread.h

# Dependencies for serial_grub.$O:
serial_grub.$O: $(SRC_DIR)/serial_grub.c
serial_grub.$O: $(BLD_TOP)config.h
serial_grub.$O: $(BLD_TOP)forbuild.h
serial_grub.$O: $(SRC_TOP)prologue.h
serial_grub.$O: $(SRC_DIR)/log.h
serial_grub.$O: $(SRC_DIR)/timing.h
serial_grub.$O: $(SRC_DIR)/serial_grub.h
serial_grub.$O: $(SRC_DIR)/serial_uart.h
serial_grub.$O: $(SRC_DIR)/io_serial.h
serial_grub.$O: $(SRC_DIR)/serial_internal.h
serial_grub.$O: $(SRC_DIR)/serialdefs.h
serial_grub.$O: $(SRC_DIR)/win_pthread.h

# Dependencies for serial_msdos.$O:
serial_msdos.$O: $(SRC_DIR)/serial_msdos.c
serial_msdos.$O: $(BLD_TOP)config.h
serial_msdos.$O: $(BLD_TOP)forbuild.h
serial_msdos.$O: $(SRC_TOP)prologue.h
serial_msdos.$O: $(SRC_DIR)/log.h
serial_msdos.$O: $(SRC_DIR)/io_misc.h
serial_msdos.$O: $(SRC_DIR)/system.h
serial_msdos.$O: $(SRC_DIR)/serial_msdos.h
serial_msdos.$O: $(SRC_DIR)/serial_uart.h
serial_msdos.$O: $(SRC_DIR)/io_serial.h
serial_msdos.$O: $(SRC_DIR)/serial_internal.h
serial_msdos.$O: $(SRC_DIR)/serialdefs.h
serial_msdos.$O: $(SRC_DIR)/timing.h
serial_msdos.$O: $(SRC_DIR)/win_pthread.h

# Dependencies for serial_none.$O:
serial_none.$O: $(SRC_DIR)/serial_none.c
serial_none.$O: $(BLD_TOP)config.h
serial_none.$O: $(BLD_TOP)forbuild.h
serial_none.$O: $(SRC_TOP)prologue.h
serial_none.$O: $(SRC_DIR)/serial_none.h
serial_none.$O: $(SRC_DIR)/io_serial.h
serial_none.$O: $(SRC_DIR)/serial_internal.h
serial_none.$O: $(SRC_DIR)/serialdefs.h
serial_none.$O: $(SRC_DIR)/timing.h
serial_none.$O: $(SRC_DIR)/win_pthread.h

# Dependencies for serial_termios.$O:
serial_termios.$O: $(SRC_DIR)/serial_termios.c
serial_termios.$O: $(BLD_TOP)config.h
serial_termios.$O: $(BLD_TOP)forbuild.h
serial_termios.$O: $(SRC_TOP)prologue.h
serial_termios.$O: $(SRC_DIR)/log.h
serial_termios.$O: $(SRC_DIR)/io_misc.h
serial_termios.$O: $(SRC_DIR)/serial_termios.h
serial_termios.$O: $(SRC_DIR)/io_serial.h
serial_termios.$O: $(SRC_DIR)/serial_internal.h
serial_termios.$O: $(SRC_DIR)/serialdefs.h
serial_termios.$O: $(SRC_DIR)/timing.h
serial_termios.$O: $(SRC_DIR)/win_pthread.h

# Dependencies for serial_windows.$O:
serial_windows.$O: $(SRC_DIR)/serial_windows.c
serial_windows.$O: $(BLD_TOP)config.h
serial_windows.$O: $(BLD_TOP)forbuild.h
serial_windows.$O: $(SRC_TOP)prologue.h
serial_windows.$O: $(SRC_DIR)/log.h
serial_windows.$O: $(SRC_DIR)/ascii.h
serial_windows.$O: $(SRC_DIR)/serial_windows.h
serial_windows.$O: $(SRC_DIR)/io_serial.h
serial_windows.$O: $(SRC_DIR)/serial_internal.h
serial_windows.$O: $(SRC_DIR)/serialdefs.h
serial_windows.$O: $(SRC_DIR)/timing.h
serial_windows.$O: $(SRC_DIR)/win_pthread.h

# Dependencies for ses.$O:
ses.$O: $(SRC_DIR)/ses.c
ses.$O: $(BLD_TOP)config.h
ses.$O: $(BLD_TOP)forbuild.h
ses.$O: $(SRC_TOP)prologue.h
ses.$O: $(SRC_DIR)/log.h
ses.$O: $(SRC_DIR)/ses.h
ses.$O: $(SRC_DIR)/brldefs.h
ses.$O: $(SRC_DIR)/ctbdefs.h
ses.$O: $(SRC_DIR)/defaults.h
ses.$O: $(SRC_DIR)/spkdefs.h
ses.$O: $(SRC_DIR)/tunedefs.h

# Dependencies for spk.$O:
spk.$O: $(SRC_DIR)/spk.c
spk.$O: $(BLD_TOP)config.h
spk.$O: $(BLD_TOP)forbuild.h
spk.$O: $(SRC_TOP)prologue.h
spk.$O: $(SRC_DIR)/log.h
spk.$O: $(SRC_DIR)/pid.h
spk.$O: $(SRC_DIR)/program.h
spk.$O: $(SRC_DIR)/file.h
spk.$O: $(SRC_DIR)/parse.h
spk.$O: $(SRC_DIR)/prefs.h
spk.$O: $(SRC_DIR)/charset.h
spk.$O: $(SRC_DIR)/lock.h
spk.$O: $(SRC_DIR)/driver.h
spk.$O: $(SRC_DIR)/drivers.h
spk.$O: $(SRC_DIR)/spk.h
spk.$O: $(SRC_DIR)/spkdefs.h
spk.$O: spk.auto.h
spk.$O: $(SRC_DIR)/spk_driver.h

# Dependencies for spktest.$O:
spktest.$O: $(SRC_DIR)/spktest.c
spktest.$O: $(BLD_TOP)config.h
spktest.$O: $(BLD_TOP)forbuild.h
spktest.$O: $(SRC_TOP)prologue.h
spktest.$O: $(SRC_DIR)/pid.h
spktest.$O: $(SRC_DIR)/program.h
spktest.$O: $(SRC_DIR)/options.h
spktest.$O: $(SRC_DIR)/driver.h
spktest.$O: $(SRC_DIR)/spk.h
spktest.$O: $(SRC_DIR)/spkdefs.h
spktest.$O: $(SRC_DIR)/log.h
spktest.$O: $(SRC_DIR)/file.h
spktest.$O: $(SRC_DIR)/parse.h

# Dependencies for status.$O:
status.$O: $(SRC_DIR)/status.c
status.$O: $(BLD_TOP)config.h
status.$O: $(BLD_TOP)forbuild.h
status.$O: $(SRC_TOP)prologue.h
status.$O: $(SRC_DIR)/statdefs.h
status.$O: $(SRC_DIR)/status.h
status.$O: $(SRC_DIR)/brldefs.h
status.$O: $(SRC_DIR)/driver.h
status.$O: $(SRC_DIR)/ktbdefs.h
status.$O: $(SRC_DIR)/scr.h
status.$O: $(SRC_DIR)/brl.h
status.$O: brlapi_constants.h
status.$O: $(SRC_DIR)/brlapi_keycodes.h
status.$O: $(SRC_DIR)/brltty.h
status.$O: $(SRC_DIR)/cmd.h
status.$O: $(SRC_DIR)/ctb.h
status.$O: $(SRC_DIR)/ctbdefs.h
status.$O: $(SRC_DIR)/io_generic.h
status.$O: $(SRC_DIR)/ktb.h
status.$O: $(SRC_DIR)/menu.h
status.$O: $(SRC_DIR)/pid.h
status.$O: $(SRC_DIR)/prefs.h
status.$O: $(SRC_DIR)/program.h
status.$O: $(SRC_DIR)/serialdefs.h
status.$O: $(SRC_DIR)/ses.h
status.$O: $(SRC_DIR)/spk.h
status.$O: $(SRC_DIR)/spkdefs.h
status.$O: $(SRC_DIR)/timing.h
status.$O: $(SRC_DIR)/usbdefs.h
status.$O: $(SRC_DIR)/ttb.h

# Dependencies for sys_darwin.$O:
sys_darwin.$O: $(SRC_DIR)/sys_darwin.c
sys_darwin.$O: $(BLD_TOP)config.h
sys_darwin.$O: $(BLD_TOP)forbuild.h
sys_darwin.$O: $(SRC_TOP)prologue.h
sys_darwin.$O: $(SRC_DIR)/system.h
sys_darwin.$O: $(SRC_DIR)/sys_prog_none.h
sys_darwin.$O: $(SRC_DIR)/sys_boot_none.h
sys_darwin.$O: $(SRC_DIR)/log.h
sys_darwin.$O: $(SRC_DIR)/sys_exec_unix.h
sys_darwin.$O: $(SRC_DIR)/sys_mount_none.h
sys_darwin.$O: $(SRC_DIR)/sys_shlib_dyld.h
sys_darwin.$O: $(SRC_DIR)/sys_beep_none.h
sys_darwin.$O: $(SRC_DIR)/sys_pcm_none.h
sys_darwin.$O: $(SRC_DIR)/sys_midi_darwin.h
sys_darwin.$O: $(SRC_DIR)/timing.h
sys_darwin.$O: $(SRC_DIR)/sys_ports_none.h

# Dependencies for sys_freebsd.$O:
sys_freebsd.$O: $(SRC_DIR)/sys_freebsd.c
sys_freebsd.$O: $(BLD_TOP)config.h
sys_freebsd.$O: $(BLD_TOP)forbuild.h
sys_freebsd.$O: $(SRC_TOP)prologue.h
sys_freebsd.$O: $(SRC_DIR)/system.h
sys_freebsd.$O: $(SRC_DIR)/sys_prog_none.h
sys_freebsd.$O: $(SRC_DIR)/sys_boot_none.h
sys_freebsd.$O: $(SRC_DIR)/log.h
sys_freebsd.$O: $(SRC_DIR)/sys_exec_unix.h
sys_freebsd.$O: $(SRC_DIR)/sys_mount_none.h
sys_freebsd.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_freebsd.$O: $(SRC_DIR)/sys_beep_spkr.h
sys_freebsd.$O: $(SRC_DIR)/io_misc.h
sys_freebsd.$O: $(SRC_DIR)/sys_pcm_oss.h
sys_freebsd.$O: $(SRC_DIR)/sys_midi_none.h
sys_freebsd.$O: $(SRC_DIR)/sys_ports_none.h

# Dependencies for sys_grub.$O:
sys_grub.$O: $(SRC_DIR)/sys_grub.c
sys_grub.$O: $(BLD_TOP)config.h
sys_grub.$O: $(BLD_TOP)forbuild.h
sys_grub.$O: $(SRC_TOP)prologue.h
sys_grub.$O: $(SRC_DIR)/system.h
sys_grub.$O: $(SRC_DIR)/sys_prog_none.h
sys_grub.$O: $(SRC_DIR)/sys_boot_none.h
sys_grub.$O: $(SRC_DIR)/sys_exec_none.h
sys_grub.$O: $(SRC_DIR)/sys_mount_none.h
sys_grub.$O: $(SRC_DIR)/sys_shlib_grub.h
sys_grub.$O: $(SRC_DIR)/sys_beep_none.h
sys_grub.$O: $(SRC_DIR)/log.h
sys_grub.$O: $(SRC_DIR)/sys_pcm_none.h
sys_grub.$O: $(SRC_DIR)/sys_midi_none.h
sys_grub.$O: $(SRC_DIR)/sys_ports_grub.h

# Dependencies for sys_hpux.$O:
sys_hpux.$O: $(SRC_DIR)/sys_hpux.c
sys_hpux.$O: $(BLD_TOP)config.h
sys_hpux.$O: $(BLD_TOP)forbuild.h
sys_hpux.$O: $(SRC_TOP)prologue.h
sys_hpux.$O: $(SRC_DIR)/log.h
sys_hpux.$O: $(SRC_DIR)/system.h
sys_hpux.$O: $(SRC_DIR)/sys_prog_none.h
sys_hpux.$O: $(SRC_DIR)/sys_boot_none.h
sys_hpux.$O: $(SRC_DIR)/sys_exec_unix.h
sys_hpux.$O: $(SRC_DIR)/sys_mount_none.h
sys_hpux.$O: $(SRC_DIR)/sys_beep_none.h
sys_hpux.$O: $(SRC_DIR)/sys_midi_none.h
sys_hpux.$O: $(SRC_DIR)/sys_ports_none.h

# Dependencies for sys_hurd.$O:
sys_hurd.$O: $(SRC_DIR)/sys_hurd.c
sys_hurd.$O: $(BLD_TOP)config.h
sys_hurd.$O: $(BLD_TOP)forbuild.h
sys_hurd.$O: $(SRC_TOP)prologue.h
sys_hurd.$O: $(SRC_DIR)/system.h
sys_hurd.$O: $(SRC_DIR)/sys_prog_none.h
sys_hurd.$O: $(SRC_DIR)/sys_boot_none.h
sys_hurd.$O: $(SRC_DIR)/log.h
sys_hurd.$O: $(SRC_DIR)/sys_exec_unix.h
sys_hurd.$O: $(SRC_DIR)/sys_mount_none.h
sys_hurd.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_hurd.$O: $(SRC_DIR)/sys_beep_none.h
sys_hurd.$O: $(SRC_DIR)/sys_pcm_none.h
sys_hurd.$O: $(SRC_DIR)/sys_midi_none.h
sys_hurd.$O: $(SRC_DIR)/sys_ports_glibc.h

# Dependencies for sys_kfreebsd.$O:
sys_kfreebsd.$O: $(SRC_DIR)/sys_kfreebsd.c
sys_kfreebsd.$O: $(BLD_TOP)config.h
sys_kfreebsd.$O: $(BLD_TOP)forbuild.h
sys_kfreebsd.$O: $(SRC_TOP)prologue.h
sys_kfreebsd.$O: $(SRC_DIR)/system.h
sys_kfreebsd.$O: $(SRC_DIR)/sys_prog_none.h
sys_kfreebsd.$O: $(SRC_DIR)/sys_boot_none.h
sys_kfreebsd.$O: $(SRC_DIR)/log.h
sys_kfreebsd.$O: $(SRC_DIR)/sys_exec_unix.h
sys_kfreebsd.$O: $(SRC_DIR)/sys_mount_none.h
sys_kfreebsd.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_kfreebsd.$O: $(SRC_DIR)/sys_beep_spkr.h
sys_kfreebsd.$O: $(SRC_DIR)/io_misc.h
sys_kfreebsd.$O: $(SRC_DIR)/sys_pcm_oss.h
sys_kfreebsd.$O: $(SRC_DIR)/sys_midi_none.h
sys_kfreebsd.$O: $(SRC_DIR)/sys_ports_kfreebsd.h

# Dependencies for sys_linux.$O:
sys_linux.$O: $(SRC_DIR)/sys_linux.c
sys_linux.$O: $(BLD_TOP)config.h
sys_linux.$O: $(BLD_TOP)forbuild.h
sys_linux.$O: $(SRC_TOP)prologue.h
sys_linux.$O: $(SRC_DIR)/log.h
sys_linux.$O: $(SRC_DIR)/file.h
sys_linux.$O: $(SRC_DIR)/device.h
sys_linux.$O: $(SRC_DIR)/timing.h
sys_linux.$O: $(SRC_DIR)/system.h
sys_linux.$O: $(SRC_DIR)/sys_linux.h
sys_linux.$O: $(SRC_DIR)/bitmask.h
sys_linux.$O: $(SRC_DIR)/sys_exec_unix.h
sys_linux.$O: $(SRC_DIR)/sys_mount_linux.h
sys_linux.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_linux.$O: $(SRC_DIR)/sys_beep_linux.h
sys_linux.$O: $(SRC_DIR)/sys_beep_none.h
sys_linux.$O: $(SRC_DIR)/sys_pcm_alsa.h
sys_linux.$O: $(SRC_DIR)/io_misc.h
sys_linux.$O: $(SRC_DIR)/sys_pcm_oss.h
sys_linux.$O: $(SRC_DIR)/sys_pcm_none.h
sys_linux.$O: $(SRC_DIR)/sys_midi_oss.h
sys_linux.$O: $(SRC_DIR)/parse.h
sys_linux.$O: $(SRC_DIR)/sys_midi_alsa.h
sys_linux.$O: $(SRC_DIR)/sys_midi_none.h
sys_linux.$O: $(SRC_DIR)/sys_ports_glibc.h

# Dependencies for sys_msdos.$O:
sys_msdos.$O: $(SRC_DIR)/sys_msdos.c
sys_msdos.$O: $(BLD_TOP)config.h
sys_msdos.$O: $(BLD_TOP)forbuild.h
sys_msdos.$O: $(SRC_TOP)prologue.h
sys_msdos.$O: $(SRC_DIR)/log.h
sys_msdos.$O: $(SRC_DIR)/system.h
sys_msdos.$O: $(SRC_DIR)/sys_prog_none.h
sys_msdos.$O: $(SRC_DIR)/sys_boot_none.h
sys_msdos.$O: $(SRC_DIR)/sys_exec_none.h
sys_msdos.$O: $(SRC_DIR)/sys_mount_none.h
sys_msdos.$O: $(SRC_DIR)/sys_shlib_none.h
sys_msdos.$O: $(SRC_DIR)/sys_beep_msdos.h
sys_msdos.$O: $(SRC_DIR)/sys_pcm_none.h
sys_msdos.$O: $(SRC_DIR)/sys_midi_none.h
sys_msdos.$O: $(SRC_DIR)/sys_ports_always.h
sys_msdos.$O: $(SRC_DIR)/sys_ports_x86.h

# Dependencies for sys_netbsd.$O:
sys_netbsd.$O: $(SRC_DIR)/sys_netbsd.c
sys_netbsd.$O: $(BLD_TOP)config.h
sys_netbsd.$O: $(BLD_TOP)forbuild.h
sys_netbsd.$O: $(SRC_TOP)prologue.h
sys_netbsd.$O: $(SRC_DIR)/system.h
sys_netbsd.$O: $(SRC_DIR)/sys_prog_none.h
sys_netbsd.$O: $(SRC_DIR)/sys_boot_none.h
sys_netbsd.$O: $(SRC_DIR)/log.h
sys_netbsd.$O: $(SRC_DIR)/sys_exec_unix.h
sys_netbsd.$O: $(SRC_DIR)/sys_mount_none.h
sys_netbsd.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_netbsd.$O: $(SRC_DIR)/device.h
sys_netbsd.$O: $(SRC_DIR)/sys_beep_wskbd.h
sys_netbsd.$O: $(SRC_DIR)/io_misc.h
sys_netbsd.$O: $(SRC_DIR)/sys_pcm_audio.h
sys_netbsd.$O: $(SRC_DIR)/sys_midi_none.h
sys_netbsd.$O: $(SRC_DIR)/sys_ports_none.h

# Dependencies for sys_openbsd.$O:
sys_openbsd.$O: $(SRC_DIR)/sys_openbsd.c
sys_openbsd.$O: $(BLD_TOP)config.h
sys_openbsd.$O: $(BLD_TOP)forbuild.h
sys_openbsd.$O: $(SRC_TOP)prologue.h
sys_openbsd.$O: $(SRC_DIR)/system.h
sys_openbsd.$O: $(SRC_DIR)/sys_prog_none.h
sys_openbsd.$O: $(SRC_DIR)/sys_boot_none.h
sys_openbsd.$O: $(SRC_DIR)/log.h
sys_openbsd.$O: $(SRC_DIR)/sys_exec_unix.h
sys_openbsd.$O: $(SRC_DIR)/sys_mount_none.h
sys_openbsd.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_openbsd.$O: $(SRC_DIR)/device.h
sys_openbsd.$O: $(SRC_DIR)/sys_beep_wskbd.h
sys_openbsd.$O: $(SRC_DIR)/io_misc.h
sys_openbsd.$O: $(SRC_DIR)/sys_pcm_audio.h
sys_openbsd.$O: $(SRC_DIR)/sys_midi_none.h
sys_openbsd.$O: $(SRC_DIR)/sys_ports_none.h

# Dependencies for sys_osf.$O:
sys_osf.$O: $(SRC_DIR)/sys_osf.c
sys_osf.$O: $(BLD_TOP)config.h
sys_osf.$O: $(BLD_TOP)forbuild.h
sys_osf.$O: $(SRC_TOP)prologue.h
sys_osf.$O: $(SRC_DIR)/system.h
sys_osf.$O: $(SRC_DIR)/sys_prog_none.h
sys_osf.$O: $(SRC_DIR)/sys_boot_none.h
sys_osf.$O: $(SRC_DIR)/log.h
sys_osf.$O: $(SRC_DIR)/sys_exec_unix.h
sys_osf.$O: $(SRC_DIR)/sys_mount_none.h
sys_osf.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_osf.$O: $(SRC_DIR)/sys_beep_none.h
sys_osf.$O: $(SRC_DIR)/sys_pcm_none.h
sys_osf.$O: $(SRC_DIR)/sys_midi_none.h
sys_osf.$O: $(SRC_DIR)/sys_ports_none.h

# Dependencies for sys_qnx.$O:
sys_qnx.$O: $(SRC_DIR)/sys_qnx.c
sys_qnx.$O: $(BLD_TOP)config.h
sys_qnx.$O: $(BLD_TOP)forbuild.h
sys_qnx.$O: $(SRC_TOP)prologue.h
sys_qnx.$O: $(SRC_DIR)/system.h
sys_qnx.$O: $(SRC_DIR)/sys_prog_none.h
sys_qnx.$O: $(SRC_DIR)/sys_boot_none.h
sys_qnx.$O: $(SRC_DIR)/log.h
sys_qnx.$O: $(SRC_DIR)/sys_exec_unix.h
sys_qnx.$O: $(SRC_DIR)/sys_mount_none.h
sys_qnx.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_qnx.$O: $(SRC_DIR)/sys_beep_none.h
sys_qnx.$O: $(SRC_DIR)/io_misc.h
sys_qnx.$O: $(SRC_DIR)/sys_pcm_qsa.h
sys_qnx.$O: $(SRC_DIR)/sys_midi_none.h
sys_qnx.$O: $(SRC_DIR)/sys_ports_none.h

# Dependencies for sys_skeleton.$O:
sys_skeleton.$O: $(SRC_DIR)/sys_skeleton.c
sys_skeleton.$O: $(BLD_TOP)config.h
sys_skeleton.$O: $(BLD_TOP)forbuild.h
sys_skeleton.$O: $(SRC_TOP)prologue.h
sys_skeleton.$O: $(SRC_DIR)/system.h
sys_skeleton.$O: $(SRC_DIR)/sys_prog_none.h
sys_skeleton.$O: $(SRC_DIR)/sys_boot_none.h
sys_skeleton.$O: $(SRC_DIR)/sys_exec_none.h
sys_skeleton.$O: $(SRC_DIR)/sys_mount_none.h
sys_skeleton.$O: $(SRC_DIR)/sys_shlib_none.h
sys_skeleton.$O: $(SRC_DIR)/sys_beep_none.h
sys_skeleton.$O: $(SRC_DIR)/log.h
sys_skeleton.$O: $(SRC_DIR)/sys_pcm_none.h
sys_skeleton.$O: $(SRC_DIR)/sys_midi_none.h
sys_skeleton.$O: $(SRC_DIR)/sys_ports_none.h

# Dependencies for sys_solaris.$O:
sys_solaris.$O: $(SRC_DIR)/sys_solaris.c
sys_solaris.$O: $(BLD_TOP)config.h
sys_solaris.$O: $(BLD_TOP)forbuild.h
sys_solaris.$O: $(SRC_TOP)prologue.h
sys_solaris.$O: $(SRC_DIR)/log.h
sys_solaris.$O: $(SRC_DIR)/system.h
sys_solaris.$O: $(SRC_DIR)/sys_boot_none.h
sys_solaris.$O: $(SRC_DIR)/sys_exec_unix.h
sys_solaris.$O: $(SRC_DIR)/sys_mount_none.h
sys_solaris.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_solaris.$O: $(SRC_DIR)/sys_beep_none.h
sys_solaris.$O: $(SRC_DIR)/io_misc.h
sys_solaris.$O: $(SRC_DIR)/sys_pcm_audio.h
sys_solaris.$O: $(SRC_DIR)/sys_midi_none.h
sys_solaris.$O: $(SRC_DIR)/sys_ports_none.h

# Dependencies for sys_windows.$O:
sys_windows.$O: $(SRC_DIR)/sys_windows.c
sys_windows.$O: $(BLD_TOP)config.h
sys_windows.$O: $(BLD_TOP)forbuild.h
sys_windows.$O: $(SRC_TOP)prologue.h
sys_windows.$O: $(SRC_DIR)/log.h
sys_windows.$O: $(SRC_DIR)/timing.h
sys_windows.$O: $(SRC_DIR)/system.h
sys_windows.$O: $(SRC_DIR)/sys_windows.h
sys_windows.$O: $(SRC_DIR)/sys_prog_windows.h
sys_windows.$O: $(SRC_DIR)/sys_boot_none.h
sys_windows.$O: $(SRC_DIR)/sys_mount_none.h
sys_windows.$O: $(SRC_DIR)/sys_beep_none.h
sys_windows.$O: $(SRC_DIR)/sys_beep_windows.h
sys_windows.$O: $(SRC_DIR)/sys_ports_windows.h
sys_windows.$O: $(SRC_DIR)/sys_ports_x86.h
sys_windows.$O: $(SRC_DIR)/sys_exec_unix.h
sys_windows.$O: $(SRC_DIR)/sys_shlib_dlfcn.h
sys_windows.$O: $(SRC_DIR)/io_misc.h
sys_windows.$O: $(SRC_DIR)/sys_pcm_oss.h
sys_windows.$O: $(SRC_DIR)/sys_midi_oss.h
sys_windows.$O: $(SRC_DIR)/sys_exec_windows.h
sys_windows.$O: $(SRC_DIR)/sys_shlib_windows.h
sys_windows.$O: $(SRC_DIR)/parse.h
sys_windows.$O: $(SRC_DIR)/sys_pcm_windows.h
sys_windows.$O: $(SRC_DIR)/sys_midi_windows.h
sys_windows.$O: $(SRC_DIR)/win_errno.h

# Dependencies for tbl2hex.$O:
tbl2hex.$O: $(SRC_DIR)/tbl2hex.c
tbl2hex.$O: $(BLD_TOP)config.h
tbl2hex.$O: $(BLD_TOP)forbuild.h
tbl2hex.$O: $(SRC_TOP)prologue.h
tbl2hex.$O: $(SRC_DIR)/options.h
tbl2hex.$O: $(SRC_DIR)/pid.h
tbl2hex.$O: $(SRC_DIR)/program.h
tbl2hex.$O: $(SRC_DIR)/log.h
tbl2hex.$O: $(SRC_DIR)/file.h
tbl2hex.$O: $(SRC_DIR)/ttb.h
tbl2hex.$O: $(SRC_DIR)/bitmask.h
tbl2hex.$O: $(SRC_DIR)/ttb_internal.h
tbl2hex.$O: $(SRC_DIR)/unicode.h
tbl2hex.$O: $(SRC_DIR)/atb.h
tbl2hex.$O: $(SRC_DIR)/atb_internal.h
tbl2hex.$O: $(SRC_DIR)/ctb.h
tbl2hex.$O: $(SRC_DIR)/ctbdefs.h
tbl2hex.$O: $(SRC_DIR)/ctb_internal.h

# Dependencies for timing.$O:
timing.$O: $(SRC_DIR)/timing.c
timing.$O: $(BLD_TOP)config.h
timing.$O: $(BLD_TOP)forbuild.h
timing.$O: $(SRC_TOP)prologue.h
timing.$O: $(SRC_DIR)/log.h
timing.$O: $(SRC_DIR)/timing.h
timing.$O: $(SRC_DIR)/sys_msdos.h

# Dependencies for touch.$O:
touch.$O: $(SRC_DIR)/touch.c
touch.$O: $(BLD_TOP)config.h
touch.$O: $(BLD_TOP)forbuild.h
touch.$O: $(SRC_TOP)prologue.h
touch.$O: $(SRC_DIR)/log.h
touch.$O: $(SRC_DIR)/brl.h
touch.$O: $(SRC_DIR)/brldefs.h
touch.$O: $(SRC_DIR)/driver.h
touch.$O: $(SRC_DIR)/io_generic.h
touch.$O: $(SRC_DIR)/ktbdefs.h
touch.$O: $(SRC_DIR)/serialdefs.h
touch.$O: $(SRC_DIR)/touch.h
touch.$O: $(SRC_DIR)/usbdefs.h
touch.$O: brlapi_constants.h
touch.$O: $(SRC_DIR)/brlapi_keycodes.h
touch.$O: $(SRC_DIR)/brltty.h
touch.$O: $(SRC_DIR)/cmd.h
touch.$O: $(SRC_DIR)/ctb.h
touch.$O: $(SRC_DIR)/ctbdefs.h
touch.$O: $(SRC_DIR)/ktb.h
touch.$O: $(SRC_DIR)/menu.h
touch.$O: $(SRC_DIR)/pid.h
touch.$O: $(SRC_DIR)/prefs.h
touch.$O: $(SRC_DIR)/program.h
touch.$O: $(SRC_DIR)/scr.h
touch.$O: $(SRC_DIR)/ses.h
touch.$O: $(SRC_DIR)/spk.h
touch.$O: $(SRC_DIR)/spkdefs.h
touch.$O: $(SRC_DIR)/timing.h

# Dependencies for ttb_compile.$O:
ttb_compile.$O: $(SRC_DIR)/ttb_compile.c
ttb_compile.$O: $(BLD_TOP)config.h
ttb_compile.$O: $(BLD_TOP)forbuild.h
ttb_compile.$O: $(SRC_TOP)prologue.h
ttb_compile.$O: $(SRC_DIR)/log.h
ttb_compile.$O: $(SRC_DIR)/file.h
ttb_compile.$O: $(SRC_DIR)/datafile.h
ttb_compile.$O: $(SRC_DIR)/queue.h
ttb_compile.$O: $(SRC_DIR)/dataarea.h
ttb_compile.$O: $(SRC_DIR)/charset.h
ttb_compile.$O: $(SRC_DIR)/lock.h
ttb_compile.$O: $(SRC_DIR)/ttb.h
ttb_compile.$O: $(SRC_DIR)/bitmask.h
ttb_compile.$O: $(SRC_DIR)/ttb_internal.h
ttb_compile.$O: $(SRC_DIR)/unicode.h
ttb_compile.$O: $(SRC_DIR)/ttb_compile.h
ttb_compile.$O: $(SRC_DIR)/sys_windows.h

# Dependencies for ttb_gnome.$O:
ttb_gnome.$O: $(SRC_DIR)/ttb_gnome.c
ttb_gnome.$O: $(BLD_TOP)config.h
ttb_gnome.$O: $(BLD_TOP)forbuild.h
ttb_gnome.$O: $(SRC_TOP)prologue.h
ttb_gnome.$O: $(SRC_DIR)/ttb.h
ttb_gnome.$O: $(SRC_DIR)/bitmask.h
ttb_gnome.$O: $(SRC_DIR)/ttb_internal.h
ttb_gnome.$O: $(SRC_DIR)/unicode.h
ttb_gnome.$O: $(SRC_DIR)/datafile.h
ttb_gnome.$O: $(SRC_DIR)/queue.h
ttb_gnome.$O: $(SRC_DIR)/ttb_compile.h

# Dependencies for ttb_louis.$O:
ttb_louis.$O: $(SRC_DIR)/ttb_louis.c
ttb_louis.$O: $(BLD_TOP)config.h
ttb_louis.$O: $(BLD_TOP)forbuild.h
ttb_louis.$O: $(SRC_TOP)prologue.h
ttb_louis.$O: $(SRC_DIR)/ttb.h
ttb_louis.$O: $(SRC_DIR)/bitmask.h
ttb_louis.$O: $(SRC_DIR)/ttb_internal.h
ttb_louis.$O: $(SRC_DIR)/unicode.h
ttb_louis.$O: $(SRC_DIR)/datafile.h
ttb_louis.$O: $(SRC_DIR)/queue.h
ttb_louis.$O: $(SRC_DIR)/ttb_compile.h

# Dependencies for ttb_native.$O:
ttb_native.$O: $(SRC_DIR)/ttb_native.c
ttb_native.$O: $(BLD_TOP)config.h
ttb_native.$O: $(BLD_TOP)forbuild.h
ttb_native.$O: $(SRC_TOP)prologue.h
ttb_native.$O: $(SRC_DIR)/file.h
ttb_native.$O: $(SRC_DIR)/ttb.h
ttb_native.$O: $(SRC_DIR)/bitmask.h
ttb_native.$O: $(SRC_DIR)/ttb_internal.h
ttb_native.$O: $(SRC_DIR)/unicode.h
ttb_native.$O: $(SRC_DIR)/datafile.h
ttb_native.$O: $(SRC_DIR)/queue.h
ttb_native.$O: $(SRC_DIR)/ttb_compile.h

# Dependencies for ttb_translate.$O:
ttb_translate.$O: $(SRC_DIR)/ttb_translate.c
ttb_translate.$O: $(BLD_TOP)config.h
ttb_translate.$O: $(BLD_TOP)forbuild.h
ttb_translate.$O: $(SRC_TOP)prologue.h
ttb_translate.$O: $(SRC_DIR)/log.h
ttb_translate.$O: $(SRC_DIR)/file.h
ttb_translate.$O: $(SRC_DIR)/charset.h
ttb_translate.$O: $(SRC_DIR)/lock.h
ttb_translate.$O: $(SRC_DIR)/ttb.h
ttb_translate.$O: $(SRC_DIR)/bitmask.h
ttb_translate.$O: $(SRC_DIR)/ttb_internal.h
ttb_translate.$O: $(SRC_DIR)/unicode.h
ttb_translate.$O: $(SRC_DIR)/brldots.h
ttb_translate.$O: text.auto.h

# Dependencies for tunes.$O:
tunes.$O: $(SRC_DIR)/tunes.c
tunes.$O: $(BLD_TOP)config.h
tunes.$O: $(BLD_TOP)forbuild.h
tunes.$O: $(SRC_TOP)prologue.h
tunes.$O: $(SRC_DIR)/log.h
tunes.$O: $(SRC_DIR)/system.h
tunes.$O: $(SRC_DIR)/message.h
tunes.$O: $(SRC_DIR)/brl.h
tunes.$O: $(SRC_DIR)/brldefs.h
tunes.$O: $(SRC_DIR)/driver.h
tunes.$O: $(SRC_DIR)/io_generic.h
tunes.$O: $(SRC_DIR)/ktbdefs.h
tunes.$O: $(SRC_DIR)/serialdefs.h
tunes.$O: $(SRC_DIR)/usbdefs.h
tunes.$O: brlapi_constants.h
tunes.$O: $(SRC_DIR)/brlapi_keycodes.h
tunes.$O: $(SRC_DIR)/brltty.h
tunes.$O: $(SRC_DIR)/cmd.h
tunes.$O: $(SRC_DIR)/ctb.h
tunes.$O: $(SRC_DIR)/ctbdefs.h
tunes.$O: $(SRC_DIR)/ktb.h
tunes.$O: $(SRC_DIR)/menu.h
tunes.$O: $(SRC_DIR)/pid.h
tunes.$O: $(SRC_DIR)/prefs.h
tunes.$O: $(SRC_DIR)/program.h
tunes.$O: $(SRC_DIR)/scr.h
tunes.$O: $(SRC_DIR)/ses.h
tunes.$O: $(SRC_DIR)/spk.h
tunes.$O: $(SRC_DIR)/spkdefs.h
tunes.$O: $(SRC_DIR)/timing.h
tunes.$O: $(SRC_DIR)/tunedefs.h
tunes.$O: $(SRC_DIR)/tunes.h
tunes.$O: $(SRC_DIR)/notes.h

# Dependencies for tunetest.$O:
tunetest.$O: $(SRC_DIR)/tunetest.c
tunetest.$O: $(BLD_TOP)config.h
tunetest.$O: $(BLD_TOP)forbuild.h
tunetest.$O: $(SRC_TOP)prologue.h
tunetest.$O: $(SRC_DIR)/options.h
tunetest.$O: $(SRC_DIR)/pid.h
tunetest.$O: $(SRC_DIR)/program.h
tunetest.$O: $(SRC_DIR)/tunedefs.h
tunetest.$O: $(SRC_DIR)/tunes.h
tunetest.$O: $(SRC_DIR)/log.h
tunetest.$O: $(SRC_DIR)/parse.h
tunetest.$O: $(SRC_DIR)/brldefs.h
tunetest.$O: $(SRC_DIR)/ctbdefs.h
tunetest.$O: $(SRC_DIR)/defaults.h
tunetest.$O: $(SRC_DIR)/spkdefs.h
tunetest.$O: $(SRC_DIR)/prefs.h
tunetest.$O: $(SRC_DIR)/message.h
tunetest.$O: $(SRC_DIR)/brl.h
tunetest.$O: $(SRC_DIR)/driver.h
tunetest.$O: $(SRC_DIR)/io_generic.h
tunetest.$O: $(SRC_DIR)/ktbdefs.h
tunetest.$O: $(SRC_DIR)/serialdefs.h
tunetest.$O: $(SRC_DIR)/usbdefs.h

# Dependencies for unicode.$O:
unicode.$O: $(SRC_DIR)/unicode.c
unicode.$O: $(BLD_TOP)config.h
unicode.$O: $(BLD_TOP)forbuild.h
unicode.$O: $(SRC_TOP)prologue.h
unicode.$O: $(SRC_DIR)/unicode.h
unicode.$O: $(SRC_DIR)/ascii.h

# Dependencies for usb.$O:
usb.$O: $(SRC_DIR)/usb.c
usb.$O: $(BLD_TOP)config.h
usb.$O: $(BLD_TOP)forbuild.h
usb.$O: $(SRC_TOP)prologue.h
usb.$O: $(SRC_DIR)/log.h
usb.$O: $(SRC_DIR)/device.h
usb.$O: $(SRC_DIR)/timing.h
usb.$O: $(SRC_DIR)/io_usb.h
usb.$O: $(SRC_DIR)/serialdefs.h
usb.$O: $(SRC_DIR)/usbdefs.h
usb.$O: $(SRC_DIR)/bitfield.h
usb.$O: $(SRC_DIR)/queue.h
usb.$O: $(SRC_DIR)/usb_internal.h

# Dependencies for usb_darwin.$O:
usb_darwin.$O: $(SRC_DIR)/usb_darwin.c
usb_darwin.$O: $(BLD_TOP)config.h
usb_darwin.$O: $(BLD_TOP)forbuild.h
usb_darwin.$O: $(SRC_TOP)prologue.h
usb_darwin.$O: $(SRC_DIR)/log.h
usb_darwin.$O: $(SRC_DIR)/io_usb.h
usb_darwin.$O: $(SRC_DIR)/serialdefs.h
usb_darwin.$O: $(SRC_DIR)/usbdefs.h
usb_darwin.$O: $(SRC_DIR)/bitfield.h
usb_darwin.$O: $(SRC_DIR)/queue.h
usb_darwin.$O: $(SRC_DIR)/usb_internal.h

# Dependencies for usb_freebsd.$O:
usb_freebsd.$O: $(SRC_DIR)/usb_freebsd.c
usb_freebsd.$O: $(BLD_TOP)config.h
usb_freebsd.$O: $(BLD_TOP)forbuild.h
usb_freebsd.$O: $(SRC_TOP)prologue.h
usb_freebsd.$O: $(SRC_DIR)/io_usb.h
usb_freebsd.$O: $(SRC_DIR)/serialdefs.h
usb_freebsd.$O: $(SRC_DIR)/usbdefs.h
usb_freebsd.$O: $(SRC_DIR)/bitfield.h
usb_freebsd.$O: $(SRC_DIR)/queue.h
usb_freebsd.$O: $(SRC_DIR)/usb_internal.h
usb_freebsd.$O: $(SRC_DIR)/log.h
usb_freebsd.$O: $(SRC_DIR)/usb_bsd.h

# Dependencies for usb_grub.$O:
usb_grub.$O: $(SRC_DIR)/usb_grub.c
usb_grub.$O: $(BLD_TOP)config.h
usb_grub.$O: $(BLD_TOP)forbuild.h
usb_grub.$O: $(SRC_TOP)prologue.h
usb_grub.$O: $(SRC_DIR)/log.h
usb_grub.$O: $(SRC_DIR)/io_usb.h
usb_grub.$O: $(SRC_DIR)/serialdefs.h
usb_grub.$O: $(SRC_DIR)/usbdefs.h
usb_grub.$O: $(SRC_DIR)/bitfield.h
usb_grub.$O: $(SRC_DIR)/queue.h
usb_grub.$O: $(SRC_DIR)/usb_internal.h

# Dependencies for usb_hid.$O:
usb_hid.$O: $(SRC_DIR)/usb_hid.c
usb_hid.$O: $(BLD_TOP)config.h
usb_hid.$O: $(BLD_TOP)forbuild.h
usb_hid.$O: $(SRC_TOP)prologue.h
usb_hid.$O: $(SRC_DIR)/log.h
usb_hid.$O: $(SRC_DIR)/bitfield.h
usb_hid.$O: $(SRC_DIR)/io_usb.h
usb_hid.$O: $(SRC_DIR)/serialdefs.h
usb_hid.$O: $(SRC_DIR)/usbdefs.h

# Dependencies for usb_kfreebsd.$O:
usb_kfreebsd.$O: $(SRC_DIR)/usb_kfreebsd.c
usb_kfreebsd.$O: $(BLD_TOP)config.h
usb_kfreebsd.$O: $(BLD_TOP)forbuild.h
usb_kfreebsd.$O: $(SRC_TOP)prologue.h
usb_kfreebsd.$O: $(SRC_DIR)/io_usb.h
usb_kfreebsd.$O: $(SRC_DIR)/serialdefs.h
usb_kfreebsd.$O: $(SRC_DIR)/usbdefs.h
usb_kfreebsd.$O: $(SRC_DIR)/bitfield.h
usb_kfreebsd.$O: $(SRC_DIR)/queue.h
usb_kfreebsd.$O: $(SRC_DIR)/usb_internal.h
usb_kfreebsd.$O: $(SRC_DIR)/log.h
usb_kfreebsd.$O: $(SRC_DIR)/usb_bsd.h

# Dependencies for usb_libusb-1.0.$O:
usb_libusb-1.0.$O: $(SRC_DIR)/usb_libusb-1.0.c
usb_libusb-1.0.$O: $(BLD_TOP)config.h
usb_libusb-1.0.$O: $(BLD_TOP)forbuild.h
usb_libusb-1.0.$O: $(SRC_TOP)prologue.h
usb_libusb-1.0.$O: $(SRC_DIR)/log.h
usb_libusb-1.0.$O: $(SRC_DIR)/io_usb.h
usb_libusb-1.0.$O: $(SRC_DIR)/serialdefs.h
usb_libusb-1.0.$O: $(SRC_DIR)/usbdefs.h
usb_libusb-1.0.$O: $(SRC_DIR)/bitfield.h
usb_libusb-1.0.$O: $(SRC_DIR)/queue.h
usb_libusb-1.0.$O: $(SRC_DIR)/usb_internal.h

# Dependencies for usb_libusb.$O:
usb_libusb.$O: $(SRC_DIR)/usb_libusb.c
usb_libusb.$O: $(BLD_TOP)config.h
usb_libusb.$O: $(BLD_TOP)forbuild.h
usb_libusb.$O: $(SRC_TOP)prologue.h
usb_libusb.$O: $(SRC_DIR)/log.h
usb_libusb.$O: $(SRC_DIR)/io_usb.h
usb_libusb.$O: $(SRC_DIR)/serialdefs.h
usb_libusb.$O: $(SRC_DIR)/usbdefs.h
usb_libusb.$O: $(SRC_DIR)/bitfield.h
usb_libusb.$O: $(SRC_DIR)/queue.h
usb_libusb.$O: $(SRC_DIR)/usb_internal.h

# Dependencies for usb_linux.$O:
usb_linux.$O: $(SRC_DIR)/usb_linux.c
usb_linux.$O: $(BLD_TOP)config.h
usb_linux.$O: $(BLD_TOP)forbuild.h
usb_linux.$O: $(SRC_TOP)prologue.h
usb_linux.$O: $(SRC_DIR)/log.h
usb_linux.$O: $(SRC_DIR)/file.h
usb_linux.$O: $(SRC_DIR)/parse.h
usb_linux.$O: $(SRC_DIR)/timing.h
usb_linux.$O: $(SRC_DIR)/mount.h
usb_linux.$O: $(SRC_DIR)/io_usb.h
usb_linux.$O: $(SRC_DIR)/serialdefs.h
usb_linux.$O: $(SRC_DIR)/usbdefs.h
usb_linux.$O: $(SRC_DIR)/bitfield.h
usb_linux.$O: $(SRC_DIR)/queue.h
usb_linux.$O: $(SRC_DIR)/usb_internal.h

# Dependencies for usb_netbsd.$O:
usb_netbsd.$O: $(SRC_DIR)/usb_netbsd.c
usb_netbsd.$O: $(BLD_TOP)config.h
usb_netbsd.$O: $(BLD_TOP)forbuild.h
usb_netbsd.$O: $(SRC_TOP)prologue.h
usb_netbsd.$O: $(SRC_DIR)/io_usb.h
usb_netbsd.$O: $(SRC_DIR)/serialdefs.h
usb_netbsd.$O: $(SRC_DIR)/usbdefs.h
usb_netbsd.$O: $(SRC_DIR)/bitfield.h
usb_netbsd.$O: $(SRC_DIR)/queue.h
usb_netbsd.$O: $(SRC_DIR)/usb_internal.h
usb_netbsd.$O: $(SRC_DIR)/log.h
usb_netbsd.$O: $(SRC_DIR)/usb_bsd.h

# Dependencies for usb_none.$O:
usb_none.$O: $(SRC_DIR)/usb_none.c
usb_none.$O: $(BLD_TOP)config.h
usb_none.$O: $(BLD_TOP)forbuild.h
usb_none.$O: $(SRC_TOP)prologue.h
usb_none.$O: $(SRC_DIR)/log.h
usb_none.$O: $(SRC_DIR)/io_usb.h
usb_none.$O: $(SRC_DIR)/serialdefs.h
usb_none.$O: $(SRC_DIR)/usbdefs.h
usb_none.$O: $(SRC_DIR)/bitfield.h
usb_none.$O: $(SRC_DIR)/queue.h
usb_none.$O: $(SRC_DIR)/usb_internal.h

# Dependencies for usb_openbsd.$O:
usb_openbsd.$O: $(SRC_DIR)/usb_openbsd.c
usb_openbsd.$O: $(BLD_TOP)config.h
usb_openbsd.$O: $(BLD_TOP)forbuild.h
usb_openbsd.$O: $(SRC_TOP)prologue.h
usb_openbsd.$O: $(SRC_DIR)/io_usb.h
usb_openbsd.$O: $(SRC_DIR)/serialdefs.h
usb_openbsd.$O: $(SRC_DIR)/usbdefs.h
usb_openbsd.$O: $(SRC_DIR)/bitfield.h
usb_openbsd.$O: $(SRC_DIR)/queue.h
usb_openbsd.$O: $(SRC_DIR)/usb_internal.h
usb_openbsd.$O: $(SRC_DIR)/log.h
usb_openbsd.$O: $(SRC_DIR)/usb_bsd.h

# Dependencies for usb_serial.$O:
usb_serial.$O: $(SRC_DIR)/usb_serial.c
usb_serial.$O: $(BLD_TOP)config.h
usb_serial.$O: $(BLD_TOP)forbuild.h
usb_serial.$O: $(SRC_TOP)prologue.h
usb_serial.$O: $(SRC_DIR)/log.h
usb_serial.$O: $(SRC_DIR)/io_usb.h
usb_serial.$O: $(SRC_DIR)/serialdefs.h
usb_serial.$O: $(SRC_DIR)/usbdefs.h
usb_serial.$O: $(SRC_DIR)/bitfield.h
usb_serial.$O: $(SRC_DIR)/queue.h
usb_serial.$O: $(SRC_DIR)/usb_internal.h

# Dependencies for usb_solaris.$O:
usb_solaris.$O: $(SRC_DIR)/usb_solaris.c
usb_solaris.$O: $(BLD_TOP)config.h
usb_solaris.$O: $(BLD_TOP)forbuild.h
usb_solaris.$O: $(SRC_TOP)prologue.h
usb_solaris.$O: $(SRC_DIR)/log.h
usb_solaris.$O: $(SRC_DIR)/io_usb.h
usb_solaris.$O: $(SRC_DIR)/serialdefs.h
usb_solaris.$O: $(SRC_DIR)/usbdefs.h
usb_solaris.$O: $(SRC_DIR)/bitfield.h
usb_solaris.$O: $(SRC_DIR)/queue.h
usb_solaris.$O: $(SRC_DIR)/usb_internal.h

# Dependencies for xbrlapi.$O:
xbrlapi.$O: $(SRC_DIR)/xbrlapi.c
xbrlapi.$O: $(BLD_TOP)config.h
xbrlapi.$O: $(BLD_TOP)forbuild.h
xbrlapi.$O: $(SRC_TOP)prologue.h
xbrlapi.$O: brlapi.h
xbrlapi.$O: brlapi_constants.h
xbrlapi.$O: $(SRC_DIR)/brlapi_keycodes.h
xbrlapi.$O: $(SRC_DIR)/options.h
xbrlapi.$O: $(SRC_DIR)/pid.h
xbrlapi.$O: $(SRC_DIR)/program.h

