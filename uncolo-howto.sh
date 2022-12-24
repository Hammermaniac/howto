#!/bin/bash

cat /dev/null > ~/personal/howto/howtos.bak

while IFS= read -r line
  do
	echo -n "$line" >> ~/personal/howto/howtos.bak
	echo '' >> ~/personal/howto/howtos.bak
done < ~/.common-configs/howto.main

sed -i 's,\x1B\[[0-9;]*[a-zA-Z],,g' ~/personal/howto/howtos.bak
#sed -i '1,9d' ~/personal/howto/howtos.bak
