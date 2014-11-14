#!/bin/bash
cat /proc/$1/environ | tr '\000' '\n' | grep -oP "(?<=\wPWD=).*"
