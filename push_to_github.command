#!/bin/bash
# Commit any changes to govfeeds-assets and push to origin/main.
set -e
cd "$(dirname "$0")"
echo "Repo: $(pwd)"
echo

# clean any stale lockfiles
rm -f .git/index.lock .git/HEAD.lock 2>/dev/null

# stage everything that changed
git add -A
echo "Status:"
git status --short
echo

# commit only if there's something staged
if ! git diff --cached --quiet; then
  git commit -m "Update Memorial Day infographic"
else
  echo "(nothing to commit)"
fi

echo
echo "Pushing to origin/main..."
git push origin main
echo
echo "Public URL:"
echo "  https://raw.githubusercontent.com/publicsquareanalyticsllc/govfeeds-assets/main/memorial_day_infographic.png"
echo
echo "(You can close this Terminal window.)"
