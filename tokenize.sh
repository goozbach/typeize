#!/bin/bash


MyString="abcde fghijk l"
echo "size= ${#MyString}"
i=0
while (( i < ${#MyString} ))
do
   #char=$(expr substr "$MyString" $i 1)
   char=${MyString:${i}:1}
   echo "<$char>"
   (( i += 1 ))
done

