# CW_PROG_CXX_FINGER_PRINTS m4 macro -- this file is part of cwautomacros.
# Copyright (C) 2006 Carlo Wood <carlo@alinoe.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.
#
# As a special exception, the author gives unlimited permission to copy,
# distribute and modify the configure scripts that are the output of
# by a tool like autoconf when using these macros as input.  You need
# not follow the terms of the GNU General Public License when using or
# distributing such scripts, even though portions of the text of this
# file appears in them. The GNU General Public License (GPL) does govern
# all other use of the material that constitutes the cwautomacros project.

# CW_PROG_CXX_FINGER_PRINTS
#
# Extract finger prints of C++ compiler and preprocessor and C compiler which is used for linking.
AC_DEFUN([CW_PROG_CXX_FINGER_PRINTS],
[AC_REQUIRE([AC_PROG_CXX])
AC_REQUIRE([AC_PROG_CXXCPP])
AC_REQUIRE([AC_PROG_CC])
cw_prog_cxx_finger_print="`$CXX -v 2>&1 | grep version | head -n 1`"
cw_prog_cxxcpp_finger_print="`echo | $CXXCPP -v 2>&1 | grep version | head -n 1`"
cw_prog_cc_finger_print="`$CC -v 2>&1 | grep version | head -n 1`"
])
