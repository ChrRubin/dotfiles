#!/usr/bin/env bash

pw-loopback -m '[FL FR]' --capture-props='media.class=Audio/Sink node.description=loop0' &
pw-loopback -m '[FL FR]' --capture-props='media.class=Audio/Sink node.description=loop1' &
