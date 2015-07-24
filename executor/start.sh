#!/bin/sh

# something like "Created Executor id: 2 token: 78993cb5f65dd12032168098730efb1d10b2ba84236b1acb"
while ! curl -s http://central:8701/; do
  sleep 1
done
CREATION=$(/usr/local/bin/sl-meshadm -C http://central/ exec-create)
# strip the longest prefix matching "* " (which is "... token: "), leaving just the token
TOKEN=${CREATION##* }
# exec so we're up and running
exec /usr/local/bin/sl-executor -C http://$TOKEN@central/
