#!/bin/bash
CURRENT_VERSION=$1
NEW_VERSION=$2
find . \( ! -regex '.*/\..*' \) -type f | LC_ALL=C xargs sed -i '' 's;'"${CURRENT_VERSION}"';'"${NEW_VERSION}"';g'