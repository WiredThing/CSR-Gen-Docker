#!/bin/bash

/bin/echo -e $PRIVATE_KEY > /tmp/private.key



/usr/bin/openssl req -new -newkey rsa:2048 -nodes -key /tmp/private.key -subj "/C=${CSR_COUNTRY}/O=${CSR_ORGANISATION}/OU=${CSR_ORGANISATIONAL_UNIT}/ST=${CSR_STATE}/L=${CSR_CITY}"