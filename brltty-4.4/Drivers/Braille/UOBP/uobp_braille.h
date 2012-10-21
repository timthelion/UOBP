/*
 * BRLTTY - A background process providing access to the console screen (when in
 *          text mode) for a blind person using a refreshable braille display.
 *
 * Copyright (C) 2012 by Timothy Hobbs and
 * Copyright (C) 1995-2011 by The BRLTTY Developers.
 *
 * BRLTTY and the FCHAD software comes with ABSOLUTELY NO WARRANTY.
 *
 * This is free software, placed under the terms of the
 * GNU General Public License, as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any
 * later version. Please see the file LICENSE-GPL for details.
 *
 * Web Page: http://mielke.cc/brltty/ and  http://brmlab.cz/user/timthelion
 *
 * This software is maintained by Timothy Hobbs <timothyhobbs@seznam.cz>.
 */

#include "uobp_general.h"
#include "brl_driver.h"

//////////////////////////////////////////////////
//BRLTTY FUNCTIONS////////////////////////////////
//////////////////////////////////////////////////
static int
brl_construct (BrailleDisplay *brl,
               char **parameters,
               const char *device);

static void
brl_destruct (BrailleDisplay *brl);

static int
brl_writeWindow (BrailleDisplay *brl,
                 const wchar_t *text);

#ifdef BRL_HAVE_KEY_CODES
static int
brl_readKey (BrailleDisplay *brl);

static int
brl_keyToCommand (BrailleDisplay *brl,
                  KeyTableCommandContext context,
                  int key);
#endif /* BRL_HAVE_KEY_CODES */

static int getKeyCode();

static int
brl_readCommand (BrailleDisplay *brl, KeyTableCommandContext context);
