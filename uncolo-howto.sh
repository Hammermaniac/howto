#!/bin/bash

cat /dev/null > ~/personal/howto/howtos.bak

while IFS= read -r line
  do
	echo -e "$line" >> ~/personal/howto/howtos.bak
done < ~/personal/howto/howtos

sed -i 's,\x1B\[[0-9;]*[a-zA-Z],,g' ~/personal/howto/howtos.bak
sed -i '1,9d' ~/personal/howto/howtos.bak
