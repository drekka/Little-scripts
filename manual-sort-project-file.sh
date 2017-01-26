
# Use this script to manually sort your project files.

echo "sorting the project files ..."

script_name="External/SOCK/pysock/sock.py"

find . -name *.pbxproj \! -path */Carthage/* -exec python $script_name {} \;
