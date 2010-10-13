#!/bin/bash

helpme() {
  echo -e "Error: ${0} usage:\n\n${0} <STRING>\n"
  exit 1
}

delay() {
  if [[ ${1} == ' ' ]]
  then
    sleep 0.2
  else
    sleep 0.08
  fi
}

typeize() {
  MyString="$@"
  echo -n "size=${#MyString} "
  i=0
  while (( i < ${#MyString} ))
  do
     char=${MyString:${i}:1}
     echo -n "<$char>"
     (( i += 1 ))
  done
  echo
  i=0
  while (( i < ${#MyString} ))
  do
     char=${MyString:${i}:1}
     echo -n "$char"
     delay "$char"
     (( i += 1 ))
  done
  delay ' '
  delay ' '
  echo
}

if [[ ${#@} -gt 0 ]]
then
  typeize $@
else
  helpme
fi
