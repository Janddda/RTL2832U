#!/bin/bash
#
# This file is protected by Copyright. Please refer to the COPYRIGHT file
# distributed with this source distribution.
#
# This file is part of RTL2832U Device.
#
# RTL2832U Device is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation, either version 3 of the License, or (at your
# option) any later version.
#
# RTL2832U Device is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see http://www.gnu.org/licenses/.
#

# Create the Makefile if necessary
if [ ! -e Makefile ]; then
  ./reconf
  ./configure
fi

if [ $# == 1 ]; then
    if [ $1 == 'clean' ]; then
        make distclean
    else
        make -j $*
    fi
else
    make -j $*
fi
