#!/bin/bash
cd /code || exit 1;
autoreconf -fvi
bash configure
make
make install DESTDIR=/code/buildroot
make check LD_LIBRARY_PATH=$libdir