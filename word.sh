#!/bin/bash

# accent=$(cat accents | gshuf | head -n1)
cat /usr/share/dict/words |grep -i q |gshuf | while read p ; do accent=$(cat accents | gshuf | head -n1); echo $p; say -v $accent $p ; done
