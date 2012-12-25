hx-berkelium-test
=================

1. Download the pre-compiled libberkelium from: https://github.com/sirikata/berkelium/downloads
2. Compile the ndll - link the libberkelium.dylib to it (see the hx-berkelium project [https://github.com/waneck/hx-berkelium], from Cauê)
3. Compile using NME (nme test mac)
4. Copy the whole lib folder from the pre-compiled lib packaged you downloaded at step #1 and symlink it to:

/Users/fullofcaffeine/workspace/code/hxproject/Export/mac/cpp/bin/BerkeliumNMETest.app/Contents

TODO Figure out a way to automate step #4, or use a statically compiled ndll, as Cauê suggested

