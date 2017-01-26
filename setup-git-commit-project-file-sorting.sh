
# Run this script after adding the files from this project. It adds project file sorting as agit hook so that all modified projects files are sorted before git commits the changes.


echo "Adding project file sorting to Git hooks"
if [ ! -d ".git/hooks" ]; then
  mkdir -p .git/hooks
fi
rm -fr .git/hooks/pre-commit
ln -s ../../sort-project-files.sh .git/hooks/pre-commit
chmod 555 .git/hooks/pre-commit
echo "Done"
