#!/bin/bash

tar -cf - $2 | pv -s $(du -sb $2 | awk '{print $1}') | xz -6 --threads=0 > ${1}.tar.xz
