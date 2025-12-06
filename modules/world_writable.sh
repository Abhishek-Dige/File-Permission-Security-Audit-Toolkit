#!/bin/bash
DIR="${1:-.}"
find "$DIR" -type f -perm -0002

