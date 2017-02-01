echo "Finding all print(...) ..."
grep -REioHn "\sprint\(.*$" --include *.m --include *.h --include *.swift "${SRCROOT}/$1" | grep -v Carthage/Checkouts | awk -F: '{printf "%s:%i: warning: print(...) statment\n",$1,$2}'
