#!/bin/bash
if
rm /etc/local.d/iqraffinity.start; then
echo -e "\n \e[38;5;154m──OK──REMOVED──\e[0m\n"
else
echo -e "\n \e[38;5;154m──NOT──REMOVED──\e[0m\n"
fi