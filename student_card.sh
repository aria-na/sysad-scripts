#!/bin/bash
#student_card.sh - practice storing and reading vars

name="Ariana Siddayao"
course="BSIT"
year=4
room="LR 103"

echo "STUDENT : $name"
echo "COURSE  : $course"
echo "YEAR    : $year"
echo "LAB ROOM: $room"
echo "Record  : ${course}_${year}.txt"
