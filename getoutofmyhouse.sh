#!/bin/bash

cat /usr/share/dict/words |grep -i $1|gshuf | while read p ; do   echo $p; say -v Ralph $p ; done
