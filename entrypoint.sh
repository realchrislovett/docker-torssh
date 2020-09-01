#!/bin/sh

/usr/bin/tor --runasdaemon 1

exec torsocks ssh $@
