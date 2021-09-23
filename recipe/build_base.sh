#!/bin/bash

rm -rf lib/iris/tests/results lib/iris/tests/*.npz

${PYTHON} -m pip install --no-deps --ignore-installed .
