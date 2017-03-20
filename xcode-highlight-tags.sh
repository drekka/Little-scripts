echo "Finding all TODO: and FIXME: tags ..."
grep -REioHn "(todo:|fixme:).*$" --include *.m --include *.h --include *.swift . | grep -v \./Carthage/Checkouts | grep -v \./Pods | awk -F: '{printf "%s:%i: warning: %s:%s\n",$1,$2,$3,$4}'
