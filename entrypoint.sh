#!/bin/bash
for f in /opt/sdk/environment-setup-*; do . "$f"; done
exec "$@"