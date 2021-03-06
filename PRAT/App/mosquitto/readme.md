Eclipse Mosquitto
=================

Mosquitto is an open source implementation of a server for version 5.0, 3.1.1,
and 3.1 of the MQTT protocol. It also includes a C and C++ client library, and
the `mosquitto_pub` and `mosquitto_sub` utilities for publishing and
subscribing.

## Mac OSX Stuff
``` bash
$cmake -DOPENSSL_ROOT_DIR=/usr/local/Cellar/openssl/<VERSION_NUM> -DOPENSSL_LIBRARIES=/usr/local/Cellar/openssl/<VERSION_NUM>/lib .
```

## Links

See the following links for more information on MQTT:

- Community page: <http://mqtt.org/>
- MQTT v3.1.1 standard: <https://docs.oasis-open.org/mqtt/mqtt/v3.1.1/mqtt-v3.1.1.html>
- MQTT v5.0 standard: <https://docs.oasis-open.org/mqtt/mqtt/v5.0/mqtt-v5.0.html>

Mosquitto project information is available at the following locations:

- Main homepage: <https://mosquitto.org/>
- Find existing bugs or submit a new bug: <https://github.com/eclipse/mosquitto/issues>
- Source code repository: <https://github.com/eclipse/mosquitto>

There is also a public test server available at <https://test.mosquitto.org/>

## Installing

See <https://mosquitto.org/download/> for details on installing binaries for
various platforms.

## Using KLEE Against Mosquitto

``` bash
$klee -emit-all-errors -only-output-states-covering-new -link-llvm-lib=../lib/libmosquitto.so.1 -link-llvm-lib=net.bc -link-llvm-lib=sys_tree.bc --libc=uclibc --posix-runtime --solver-backend=z3 mosquitto.bc --sym-args 0 4 4 --sym-files 2 10 --sym-stdin 10 --sym-stdout --max-memory 4000 --max-fail 1 --max-time=60
```

### Replaying KLEE Tests
Once we have generated the tests symbolically, run them against the binary with coverage instrumentation.

``` bash
$klee-replay ./mosquitto ../klee_tests/test000001.ktest
```

## Quick start

If you have installed a binary package the broker should have been started
automatically. If not, it can be started with a basic configuration:

    mosquitto

Then use `mosquitto_sub` to subscribe to a topic:

    mosquitto_sub -t 'test/topic' -v

And to publish a message:

    mosquitto_pub -t 'test/topic' -m 'hello world'

## Documentation

Documentation for the broker, clients and client library API can be found in
the man pages, which are available online at <https://mosquitto.org/man/>. There
are also pages with an introduction to the features of MQTT, the
`mosquitto_passwd` utility for dealing with username/passwords, and a
description of the configuration file options available for the broker.

Detailed client library API documentation can be found at <https://mosquitto.org/api/>

## Building from source

To build from source the recommended route for end users is to download the
archive from <https://mosquitto.org/download/>.

On Windows and Mac, use `cmake` to build. On other platforms, just run `make`
to build. For Windows, see also `readme-windows.txt`.

If you are building from the git repository then the documentation will not
already be built. Use `make binary` to skip building the man pages, or install
`docbook-xsl` on Debian/Ubuntu systems.

### Build Dependencies

* c-ares (libc-ares-dev on Debian based systems) - only when compiled with `make WITH_SRV=yes`
* libwebsockets (libwebsockets-dev) - enable with `make WITH_WEBSOCKETS=yes`
* openssl (libssl-dev on Debian based systems) - disable with `make WITH_TLS=no`
* xsltproc (xsltproc and docbook-xsl on Debian based systems) - only needed when building from git sources - disable with `make WITH_DOCS=no`
* uthash / utlist - bundled versions of these headers are provided, disable their use with `make WITH_BUNDLED_DEPS=no`

Equivalent options for enabling/disabling features are available when using the CMake build.


## Credits

Mosquitto was written by Roger Light <roger@atchoo.org>

Master: [![Travis Build Status (master)](https://travis-ci.org/eclipse/mosquitto.svg?branch=master)](https://travis-ci.org/eclipse/mosquitto)
Develop: [![Travis Build Status (develop)](https://travis-ci.org/eclipse/mosquitto.svg?branch=develop)](https://travis-ci.org/eclipse/mosquitto)
Fixes: [![Travis Build Status (fixes)](https://travis-ci.org/eclipse/mosquitto.svg?branch=fixes)](https://travis-ci.org/eclipse/mosquitto)
