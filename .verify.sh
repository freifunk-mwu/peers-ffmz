#!/bin/sh -e

find . -type f -not -path '*/\.*' -not -name '*.md' | while read f; do
	if [ "$f" = *.md ]; then
		continue
	fi
	echo "checking $f..."
	fastd --verify-config --config-peer $f
done
