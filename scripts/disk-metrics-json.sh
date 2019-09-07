#!/bin/bash
df -h $1  / | gawk '
/Filesystem/ {next}
{ printf "%s{\"name\": \"%s\", \"usage\": \"%s\", \"mount_point\": \"%s\"}",
        separator, $1, $5, $6
    separator = ", "
}'