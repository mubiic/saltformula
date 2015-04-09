./getupstream.sh
set -x
git checkout develop
git rebase -Xours upstream && \
git checkout master
git rebase -Xtheirs develop &&
set +x
echo "git push --all --force origin -u  to push all changes to remote"
