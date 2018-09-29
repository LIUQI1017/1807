#!/bin/bash
expect << EOF
spawn ftp 192.168.4.100
expect Name {send "tom\n"}
expect Password {send "111\n"}
expect > {send "get test.txt\n"}
expect > {send "quiut\n"}
EOF
