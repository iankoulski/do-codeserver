#!/bin/bash

# Container startup script
echo "Container-Root/startup.sh executed"

/usr/bin/entrypoint.sh --bind-addr 0.0.0.0:8080 .

#while true; do date; sleep 10; done

