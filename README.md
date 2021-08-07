
IPXNET
======

Standalone IPX-over-UDP server, to be used with DOSBOX for multiplayer
games (i.e. Warcraft, Master of Orion II, etc.).

The  code was  yanked out  of DOSBOX  by the  original author,  Michał
"MasterM" Siejak.


Original copyright
==================

"Copyright (C) 2002-2009  The DOSBox Team"
"Copyright (C) 2009-2010  Michał "MasterM" Siejak"

The old (unmaintained?) github repo for this can be found here:
https://github.com/intangir/ipxnet


Fixes as of 2021.08.07
======================

* Changed CC  from g++ to c++  to allow for building  on systems using
  clang (gcc-based machines usually have c++ pointing to g++ anyway).
* Added  -lSDL to  LDFLAGS  to avoid  linkage  errors about  undefined
  functions.
* Glue   added  to   avoid  busy-waiting   on  the   server  socket...
  SDLNet_UDP_Recv()  calls select()  with  a timeout  of  0, which  is
  wasteful.
* Log file defaults to /var/log/ipxnet now.


Plans for the future
====================

* Code to  decode IPX packets send  by Master of Orion  II to generate
  live-stats on games in progress.


Disclaimer
==========

I do not  use git or github  normally (in fact, I  wouldn't touch them
with a  ten-foot pole if some  folks didn't make me),  so don't expect
regular updates.


--kjx 21.08.07
