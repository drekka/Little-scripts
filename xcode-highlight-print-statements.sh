echo "Finding all print(...) ..."
grep -REioHn "\sprint\(.*$" --include *.m --include *.h --include *.swift . | grep -v Carthage/Checkouts | grep -V \./Pods | awk -F: '{printf "%s:%i: warning: print(...) statment\n",$1,$2}'
