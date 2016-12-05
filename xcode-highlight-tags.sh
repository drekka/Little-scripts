echo "Finding all TODO: and FIXME: tags ..."
grep -REioHn "(todo:|fixme:).*$" --include *.m --include *.h --include *.swift "${SRCROOT}/$1" | awk -F: '{printf "%s:%i: warning: %s:%s\n",$1,$2,$3,$4}'
