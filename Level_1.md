Devices should conect using a hub capable(chain capable) level 1 such as usb or bluetooth.  File transfer is explicitly not described in this protocol.  Devices supporting file transfer should offer themselves as a mountable volume. This is to allow host computers not suporting UOBP to at least transfer files with the device.

File transfer capabilities do however provide support for UOBP specific operations. Thus there is to be a folder on all UOBP devices, supporting mountable volumes, called

UOBP

this folder shall have the sub-directory

TEXT

 - which is a directory can contain a set of UTF-8 text files for "take away reading".  Each file shall be named "YYYY-MM-DD-Number-Name", where more recent files have higher numbers. Example: "2012-09-20-23-News" could be loaded onto the device by a news agregator.

SETTINGS

 - a file listing the persistent settings of the braille device.  Why save these settings like this?
 
 Standard file format makes for:
 
  better settings backup
  settings transfer between devices(though this file is device type specific due to the non-device independent nature of the non-absolute units(such as hardnes))
  easier debugging
 
 What is bad about this method? "Dumb" devices, like the arduino, cannot use this method to store persistant settings.  We thus have to provide an alternate method for these devices.

 - file format is "CAPABILITY_NAME:NODE_ID:SETTING_NAME=VALUE,SETTING_NAME=VALUE;#coment \n" where whitespace(other than newlines following the # coment symbol are ignored)

One last file which must exist is a

KEY

file.  This file contains just the UUID of the current volume expressed in ASCII hexidecimal of the form xxxxxxxx-xxxx-Nxxx-Mxxx-xxxxxxxxxxxx with no other punctuation.  This is how the driver tells the difference between a special magic UOBP folder and a folder that just happens to be named UOBP.  If the UOBP folder contains a KEY with a value identicall to the UUID of the volume(funny name for partion) which contains it, then the driver can safely assume that it is interfacing with a file transfer capable UOBP device.
