#!/bin/bash
# Copyright 2025 The Jule Programming Language.
# Use of this source code is governed by a BSD 3-Clause
# license that can be found in the LICENSE file.

if [ -f ./src/main.jule ]; then
  julec --opt-deadcode -o juledoc ./src
else
  echo "error: working directory is not root directory"
  exit
fi

if [ $? -eq 0 ]; then
  echo "Compilation successful!"
else
  echo "-----------------------------------------------------------------------"
  echo "An unexpected error occurred while compiling JuleDoc. Check errors above."
fi
