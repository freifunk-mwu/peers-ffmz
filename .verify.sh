#!/bin/sh -e

for f in *; do
	if [ "$f" = *.md ]; then
		continue
	fi
	echo "checking $f..."
	fastd --verify-config --config-peer $f
done
