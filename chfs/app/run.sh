#!/bin/sh
if [ -n "$TIMEOUT" ]; then
	sed -i "1a\session.timeout==$TIMEOUT" /config/chfs.ini
fi
/app/chfs --file=/config/chfs.ini
