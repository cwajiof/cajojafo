#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b5927fda-a4f2-4b9e-b775-3be366cf6cbe"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

