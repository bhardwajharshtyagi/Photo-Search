#!/bin/bash
set -e
cd /Volumes/tycho/photo_searching
cat part_a.html > index.html
cat part_b.html >> index.html
cat part_c.html >> index.html
cat part_d.html >> index.html
cat part_e.html >> index.html
cat part_f.html >> index.html
echo BUILD_OK; wc -c index.html
