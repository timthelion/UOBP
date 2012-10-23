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

#include "prologue.h"
#include "brl.h"
#include "io_generic.h"
#include "log.h"

#include <stdlib.h>
#include <string.h>

/*Remove this line in production code.*/
#define LOG_EVERYTHING 1

#define BRLTTY
#include "types.h"
#include "level2.h"

#ifndef CAPABILITIES_H
 #include "capabilities.h"
#endif

#ifndef CAPABILITY_NODES_H
 #include "capabilityNodes.h"
#endif

#ifndef FRAME_EVENT_HANDLERS_H
 #include "frameEventHandlers.h"
#endif

#ifndef SERIAL_H
 #include "serial.h"
#endif

#ifndef FCHAD_CELL_H
 #include "Capabilities/FCHAD_CELL.h"
#endif

#ifndef FCHAD_SENSORS_H
 #include "Capabilities/FCHAD_SENSORS.h"
#endif
