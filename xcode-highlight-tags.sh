echo "Finding all TODO: and FIXME: tags ..."
SUB_PATH=${SUB_PATH:-}
grep -REioHn "(todo:|fixme:|wtf:).*$" --include *.m --include *.h --include *.swift "$PWD$SUB_PATH" | grep -v /Carthage | grep -v /Pods | awk -F: '{printf "%s:%i: warning: %s:%s\n",$1,$2,$3,$4}'
