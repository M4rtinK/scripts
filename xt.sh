#!/bin/bash

tar -cf - $2 | pv -s $(du -sb $2 | cut -f1) | xz -9 --threads=0 > ${1}.tar.xz
