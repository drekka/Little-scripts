# Updates carthgate dependencies. Carthage options cab be passed as arguments.
echo "Using: carth update --no-use-binaries --cache-builds --platform iOS $@"
carthage update --no-use-binaries --cache-builds --platform iOS $@