
# XCode writes the project file in an unsorted fashion on any change to the project. This can make mergese extremely difficult. Sorting the project file's contents removes a large amount of merge issues. 


echo "Sorting project files which have been changed ..."

script_name="External/SOCK/pysock/sock.py"

# Process:
#    1. Find all changed and stages files
#    2. Filter for project files
#    3. Ignore the carthage check out directory
#    4. Pipe through xargs and sort the files contents

git diff --name-only --cached | grep project\.pbxproj$ | grep -v Carthage/Checkouts | xargs python $script_name

echo "Done."
