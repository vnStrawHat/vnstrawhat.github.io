echo "Deploying updates to GitHub..."
hugo
git add -A
git commit -m "Updating site"
git push origin hugo-src
git subtree push --prefix=public https://github.com/vnStrawHat/vnstrawhat.github.io.git master
echo "Done"