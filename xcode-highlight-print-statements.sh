echo "Finding all print(...) ..."
grep -REioHn "\sprint\(.*$" --include *.m --include *.h --include *.swift "$PWD" | grep -v /Carthage | grep -v /Pods | awk -F: '{printf "%s:%i: warning: print(...) statment\n",$1,$2}'
