TTY_DEFAULT = -1
DISPLAY_DEFAULT = -1
CURSOR_LEAVE = -1
CURSOR_OFF = 0
rangeType_all = 0
rangeType_type = 1
rangeType_command = 2
rangeType_key = 3
rangeType_code = 4
ERROR_SUCCESS = 0
ERROR_NOMEM = 1
ERROR_TTYBUSY = 2
ERROR_DEVICEBUSY = 3
ERROR_UNKNOWN_INSTRUCTION = 4
ERROR_ILLEGAL_INSTRUCTION = 5
ERROR_INVALID_PARAMETER = 6
ERROR_INVALID_PACKET = 7
ERROR_CONNREFUSED = 8
ERROR_OPNOTSUPP = 9
ERROR_GAIERR = 10
ERROR_LIBCERR = 11
ERROR_UNKNOWNTTY = 12
ERROR_PROTOCOL_VERSION = 13
ERROR_EOF = 14
ERROR_EMPTYKEY = 15
ERROR_DRIVERERROR = 16
ERROR_AUTHENTICATION = 17
KEY_MAX = c_brlapi.BRLAPI_KEY_MAX
KEY_FLAGS_MASK = c_brlapi.BRLAPI_KEY_FLAGS_MASK
KEY_FLAGS_SHIFT = 32
KEY_TYPE_MASK = c_brlapi.BRLAPI_KEY_TYPE_MASK
KEY_TYPE_SHIFT = 29
KEY_TYPE_CMD = 0x0000000020000000
KEY_TYPE_SYM = 0x0000000000000000
KEY_CODE_MASK = c_brlapi.BRLAPI_KEY_CODE_MASK
KEY_CODE_SHIFT = 0
KEY_CMD_BLK_MASK = c_brlapi.BRLAPI_KEY_CMD_BLK_MASK
KEY_CMD_BLK_SHIFT = 16
KEY_CMD_ARG_MASK = c_brlapi.BRLAPI_KEY_CMD_ARG_MASK
KEY_CMD_ARG_SHIFT = 0
KEY_SYM_BACKSPACE = 0x0000ff08
KEY_SYM_TAB = 0x0000ff09
KEY_SYM_LINEFEED = 0x0000ff0d
KEY_SYM_ESCAPE = 0x0000ff1b
KEY_SYM_HOME = 0x0000ff50
KEY_SYM_LEFT = 0x0000ff51
KEY_SYM_UP = 0x0000ff52
KEY_SYM_RIGHT = 0x0000ff53
KEY_SYM_DOWN = 0x0000ff54
KEY_SYM_PAGE_UP = 0x0000ff55
KEY_SYM_PAGE_DOWN = 0x0000ff56
KEY_SYM_END = 0x0000ff57
KEY_SYM_INSERT = 0x0000ff63
## the F1 key
KEY_SYM_F1 = (0x0000ffbe + 0)
## the F2 key
KEY_SYM_F2 = (0x0000ffbe + 1)
## the F3 key
KEY_SYM_F3 = (0x0000ffbe + 2)
## the F4 key
KEY_SYM_F4 = (0x0000ffbe + 3)
## the F5 key
KEY_SYM_F5 = (0x0000ffbe + 4)
## the F6 key
KEY_SYM_F6 = (0x0000ffbe + 5)
## the F7 key
KEY_SYM_F7 = (0x0000ffbe + 6)
## the F8 key
KEY_SYM_F8 = (0x0000ffbe + 7)
## the F9 key
KEY_SYM_F9 = (0x0000ffbe + 8)
## the F10 key
KEY_SYM_F10 = (0x0000ffbe + 9)
## the F11 key
KEY_SYM_F11 = (0x0000ffbe + 10)
## the F12 key
KEY_SYM_F12 = (0x0000ffbe + 11)
## the F13 key
KEY_SYM_F13 = (0x0000ffbe + 12)
## the F14 key
KEY_SYM_F14 = (0x0000ffbe + 13)
## the F15 key
KEY_SYM_F15 = (0x0000ffbe + 14)
## the F16 key
KEY_SYM_F16 = (0x0000ffbe + 15)
## the F17 key
KEY_SYM_F17 = (0x0000ffbe + 16)
## the F18 key
KEY_SYM_F18 = (0x0000ffbe + 17)
## the F19 key
KEY_SYM_F19 = (0x0000ffbe + 18)
## the F20 key
KEY_SYM_F20 = (0x0000ffbe + 19)
## the F21 key
KEY_SYM_F21 = (0x0000ffbe + 20)
## the F22 key
KEY_SYM_F22 = (0x0000ffbe + 21)
## the F23 key
KEY_SYM_F23 = (0x0000ffbe + 22)
## the F24 key
KEY_SYM_F24 = (0x0000ffbe + 23)
## the F25 key
KEY_SYM_F25 = (0x0000ffbe + 24)
## the F26 key
KEY_SYM_F26 = (0x0000ffbe + 25)
## the F27 key
KEY_SYM_F27 = (0x0000ffbe + 26)
## the F28 key
KEY_SYM_F28 = (0x0000ffbe + 27)
## the F29 key
KEY_SYM_F29 = (0x0000ffbe + 28)
## the F30 key
KEY_SYM_F30 = (0x0000ffbe + 29)
## the F31 key
KEY_SYM_F31 = (0x0000ffbe + 30)
## the F32 key
KEY_SYM_F32 = (0x0000ffbe + 31)
## the F33 key
KEY_SYM_F33 = (0x0000ffbe + 32)
## the F34 key
KEY_SYM_F34 = (0x0000ffbe + 33)
## the F35 key
KEY_SYM_F35 = (0x0000ffbe + 34)
KEY_SYM_DELETE = 0x0000ffff
KEY_SYM_UNICODE = 0x01000000
## do nothing
KEY_CMD_NOOP = 0
## go up one line
KEY_CMD_LNUP = 1
## go down one line
KEY_CMD_LNDN = 2
## go up several lines
KEY_CMD_WINUP = 3
## go down several lines
KEY_CMD_WINDN = 4
## go up to nearest line with different content
KEY_CMD_PRDIFLN = 5
## go down to nearest line with different content
KEY_CMD_NXDIFLN = 6
## go up to nearest line with different highlighting
KEY_CMD_ATTRUP = 7
## go down to nearest line with different highlighting
KEY_CMD_ATTRDN = 8
## go to top line
KEY_CMD_TOP = 9
## go to bottom line
KEY_CMD_BOT = 10
## go to beginning of top line
KEY_CMD_TOP_LEFT = 11
## go to beginning of bottom line
KEY_CMD_BOT_LEFT = 12
## go up to last line of previous paragraph
KEY_CMD_PRPGRPH = 13
## go down to first line of next paragraph
KEY_CMD_NXPGRPH = 14
## go up to previous command prompt
KEY_CMD_PRPROMPT = 15
## go down to next command prompt
KEY_CMD_NXPROMPT = 16
## search backward for clipboard text
KEY_CMD_PRSEARCH = 17
## search forward for clipboard text
KEY_CMD_NXSEARCH = 18
## go left one character
KEY_CMD_CHRLT = 19
## go right one character
KEY_CMD_CHRRT = 20
## go left half a window
KEY_CMD_HWINLT = 21
## go right half a window
KEY_CMD_HWINRT = 22
## go left one window
KEY_CMD_FWINLT = 23
## go right one window
KEY_CMD_FWINRT = 24
## go left to nearest non-blank window
KEY_CMD_FWINLTSKIP = 25
## go right to nearest non-blank window
KEY_CMD_FWINRTSKIP = 26
## go to beginning of line
KEY_CMD_LNBEG = 27
## go to end of line
KEY_CMD_LNEND = 28
## go to cursor
KEY_CMD_HOME = 29
## go back after cursor tracking
KEY_CMD_BACK = 30
## go to cursor or go back after cursor tracking
KEY_CMD_RETURN = 31
## freeze/unfreeze screen image
KEY_CMD_FREEZE = 32
## set display mode attributes/text
KEY_CMD_DISPMD = 33
## set text style 6-dot/8-dot
KEY_CMD_SIXDOTS = 34
## set sliding window on/off
KEY_CMD_SLIDEWIN = 35
## set skipping of lines with identical content on/off
KEY_CMD_SKPIDLNS = 36
## set skipping of blank windows on/off
KEY_CMD_SKPBLNKWINS = 37
## set cursor visibility on/off
KEY_CMD_CSRVIS = 38
## set hidden cursor on/off
KEY_CMD_CSRHIDE = 39
## set cursor tracking on/off
KEY_CMD_CSRTRK = 40
## set cursor style block/underline
KEY_CMD_CSRSIZE = 41
## set cursor blinking on/off
KEY_CMD_CSRBLINK = 42
## set attribute underlining on/off
KEY_CMD_ATTRVIS = 43
## set attribute blinking on/off
KEY_CMD_ATTRBLINK = 44
## set capital letter blinking on/off
KEY_CMD_CAPBLINK = 45
## set alert tunes on/off
KEY_CMD_TUNES = 46
## set autorepeat on/off
KEY_CMD_AUTOREPEAT = 47
## set autospeak on/off
KEY_CMD_AUTOSPEAK = 48
## enter/leave help display
KEY_CMD_HELP = 49
## enter/leave status display
KEY_CMD_INFO = 50
## enter/leave command learn mode
KEY_CMD_LEARN = 51
## enter/leave preferences menu
KEY_CMD_PREFMENU = 52
## save preferences to disk
KEY_CMD_PREFSAVE = 53
## restore preferences from disk
KEY_CMD_PREFLOAD = 54
## go to first item
KEY_CMD_MENU_FIRST_ITEM = 55
## go to last item
KEY_CMD_MENU_LAST_ITEM = 56
## go to previous item
KEY_CMD_MENU_PREV_ITEM = 57
## go to next item
KEY_CMD_MENU_NEXT_ITEM = 58
## select previous choice
KEY_CMD_MENU_PREV_SETTING = 59
## select next choice
KEY_CMD_MENU_NEXT_SETTING = 60
## stop speaking
KEY_CMD_MUTE = 61
## go to current speech position
KEY_CMD_SPKHOME = 62
## speak current line
KEY_CMD_SAY_LINE = 63
## speak from top of screen through current line
KEY_CMD_SAY_ABOVE = 64
## speak from current line through bottom of screen
KEY_CMD_SAY_BELOW = 65
## decrease speech rate
KEY_CMD_SAY_SLOWER = 66
## increase speech rate
KEY_CMD_SAY_FASTER = 67
## decrease speech volume
KEY_CMD_SAY_SOFTER = 68
## increase speech volume
KEY_CMD_SAY_LOUDER = 69
## switch to previous virtual terminal
KEY_CMD_SWITCHVT_PREV = 70
## switch to next virtual terminal
KEY_CMD_SWITCHVT_NEXT = 71
## bring cursor to line
KEY_CMD_CSRJMP_VERT = 72
## insert clipboard text at cursor
KEY_CMD_PASTE = 73
## restart braille driver
KEY_CMD_RESTARTBRL = 74
## restart speech driver
KEY_CMD_RESTARTSPEECH = 75
## braille display temporarily unavailable
KEY_CMD_OFFLINE = 76
## add shift modifier to next typed character or emulated key
KEY_CMD_SHIFT = 77
## add upper modifier to next typed character or emulated key
KEY_CMD_UPPER = 78
## add control modifier to next typed character or emulated key
KEY_CMD_CONTROL = 79
## add meta modifier to next typed character or emulated key
KEY_CMD_META = 80
## show the current date and time
KEY_CMD_TIME = 81
## go to previous menu level
KEY_CMD_MENU_PREV_LEVEL = 82
## set autospeak selected line on/off
KEY_CMD_ASPK_SEL_LINE = 83
## set autospeak selected character on/off
KEY_CMD_ASPK_SEL_CHAR = 84
## set autospeak inserted characters on/off
KEY_CMD_ASPK_INS_CHARS = 85
## set autospeak deleted characters on/off
KEY_CMD_ASPK_DEL_CHARS = 86
## set autospeak replaced characters on/off
KEY_CMD_ASPK_REP_CHARS = 87
## set autospeak completed words on/off
KEY_CMD_ASPK_CMP_WORDS = 88
## speak current character
KEY_CMD_SPEAK_CURR_CHAR = 89
## go to and speak previous character
KEY_CMD_SPEAK_PREV_CHAR = 90
## go to and speak next character
KEY_CMD_SPEAK_NEXT_CHAR = 91
## speak current word
KEY_CMD_SPEAK_CURR_WORD = 92
## go to and speak previous word
KEY_CMD_SPEAK_PREV_WORD = 93
## go to and speak next word
KEY_CMD_SPEAK_NEXT_WORD = 94
## speak current line
KEY_CMD_SPEAK_CURR_LINE = 95
## go to and speak previous line
KEY_CMD_SPEAK_PREV_LINE = 96
## go to and speak next line
KEY_CMD_SPEAK_NEXT_LINE = 97
## go to and speak first non-blank character on line
KEY_CMD_SPEAK_FRST_CHAR = 98
## go to and speak last non-blank character on line
KEY_CMD_SPEAK_LAST_CHAR = 99
## go to and speak first non-blank line on screen
KEY_CMD_SPEAK_FRST_LINE = 100
## go to and speak last non-blank line on screen
KEY_CMD_SPEAK_LAST_LINE = 101
## describe current character
KEY_CMD_DESC_CURR_CHAR = 102
## spell current word
KEY_CMD_SPELL_CURR_WORD = 103
## bring cursor to speech location
KEY_CMD_ROUTE_CURR_LOCN = 104
## speak speech location
KEY_CMD_SPEAK_CURR_LOCN = 105
## set speech location visibility on/off
KEY_CMD_SHOW_CURR_LOCN = 106
## enable feature
KEY_FLG_TOGGLE_ON = 0x0100
## disable feature
KEY_FLG_TOGGLE_OFF = 0x0200
## mask for all toggle flags
KEY_FLG_TOGGLE_MASK = (KEY_FLG_TOGGLE_ON | KEY_FLG_TOGGLE_OFF)
## bring cursor into window after function
KEY_FLG_MOTION_ROUTE = 0x0400
## execute command on key press
KEY_FLG_REPEAT_INITIAL = 0x8000
## wait before repeating
KEY_FLG_REPEAT_DELAY = 0x4000
## mask for all repeat flags
KEY_FLG_REPEAT_MASK = (KEY_FLG_REPEAT_INITIAL | KEY_FLG_REPEAT_DELAY)
## bring cursor to character
KEY_CMD_ROUTE = 0x010000
## start new clipboard at character
KEY_CMD_CLIP_NEW = 0x020000
## deprecated definition of CLIP_NEW - start new clipboard at character
KEY_CMD_CUTBEGIN = 0x020000
## append to clipboard from character
KEY_CMD_CLIP_ADD = 0x030000
## deprecated definition of CLIP_ADD - append to clipboard from character
KEY_CMD_CUTAPPEND = 0x030000
## rectangular copy to character
KEY_CMD_COPY_RECT = 0x040000
## deprecated definition of COPY_RECT - rectangular copy to character
KEY_CMD_CUTRECT = 0x040000
## linear copy to character
KEY_CMD_COPY_LINE = 0x050000
## deprecated definition of COPY_LINE - linear copy to character
KEY_CMD_CUTLINE = 0x050000
## switch to virtual terminal
KEY_CMD_SWITCHVT = 0x060000
## go up to nearest line with less indent than character
KEY_CMD_PRINDENT = 0x070000
## go down to nearest line with less indent than character
KEY_CMD_NXINDENT = 0x080000
## describe character
KEY_CMD_DESCCHAR = 0x090000
## place left end of window at character
KEY_CMD_SETLEFT = 0x0a0000
## remember current window position
KEY_CMD_SETMARK = 0x0b0000
## go to remembered window position
KEY_CMD_GOTOMARK = 0x0c0000
## go to selected line
KEY_CMD_GOTOLINE = 0x0d0000
## scale arg=0X00-0XFF to screen height
KEY_FLG_LINE_SCALED = 0x0100
## go to beginning of line
KEY_FLG_LINE_TOLEFT = 0x0200
## go up to nearest line with different character
KEY_CMD_PRDIFCHAR = 0x0e0000
## go down to nearest line with different character
KEY_CMD_NXDIFCHAR = 0x0f0000
## copy characters to clipboard
KEY_CMD_CLIP_COPY = 0x100000
## deprecated definition of CLIP_COPY - copy characters to clipboard
KEY_CMD_COPYCHARS = 0x100000
## append characters to clipboard
KEY_CMD_CLIP_APPEND = 0x110000
## deprecated definition of CLIP_APPEND - append characters to clipboard
KEY_CMD_APNDCHARS = 0x110000
## put random password into clipboard
KEY_CMD_PWGEN = 0x120000
## type braille character
KEY_CMD_PASSDOTS = 0x220000
## shift key pressed
KEY_FLG_SHIFT = 0x01
## convert to uppercase
KEY_FLG_UPPER = 0x02
## control key pressed
KEY_FLG_CONTROL = 0x04
## meta key pressed
KEY_FLG_META = 0x08
## upper-left dot of standard braille cell
DOT1 = 0001
## middle-left dot of standard braille cell
DOT2 = 0002
## lower-left dot of standard braille cell
DOT3 = 0004
## upper-right dot of standard braille cell
DOT4 = 0010
## middle-right dot of standard braille cell
DOT5 = 0020
## lower-right dot of standard braille cell
DOT6 = 0040
## lower-left dot of computer braille cell
DOT7 = 0100
## lower-right dot of computer braille cell
DOT8 = 0200
## space key pressed
DOTC = 0400
## AT (set 2) keyboard scan code
KEY_CMD_PASSAT = 0x230000
## XT (set 1) keyboard scan code
KEY_CMD_PASSXT = 0x240000
## PS/2 (set 3) keyboard scan code
KEY_CMD_PASSPS2 = 0x250000
## it is a release scan code
KEY_FLG_KBD_RELEASE = 0x0100
## it is an emulation 0 scan code
KEY_FLG_KBD_EMUL0 = 0x0200
## it is an emulation 1 scan code
KEY_FLG_KBD_EMUL1 = 0x0400
## switch to command context
KEY_CMD_CONTEXT = 0x260000
