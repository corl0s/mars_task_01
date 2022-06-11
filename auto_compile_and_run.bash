#!/bin/bash
cd programs
for filename in *;
do
    echo "$filename"
done
echo "Enter the index of the program to be run"
read choice
cc $choice
gnome-terminal -x ./a.out #provided gnome-terminal was installed - sudo apt intall gnome-terminal
cd mars_task_01