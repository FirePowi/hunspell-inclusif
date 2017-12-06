#!/bin/sh

cd dictionaries
ERRORS=$(hunspell -d fr-inclusif -l < ../test/words.txt)
if [ "$ERRORS" == "" ]
then
	echo "Success !"
else
	echo "Failure:"
	echo "$ERRORS"
fi
