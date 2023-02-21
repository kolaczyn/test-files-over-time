#!/bin/sh

rm tests.log
git checkout main
git pull
echo "commit_date\ttest_files\tcommit_hash" > tests.log

while git checkout HEAD~1
  do
  test_files=$(find src -print | egrep '*.spec.*'  | wc -l)
  commit_date=$(git show -s --date=format:'%Y-%m-%d 00:00:00' --format=%cd)
  commit_hash=$(git rev-parse HEAD)

  echo "$commit_date\t$test_files\t$commit_hash" >> tests.log
done

git checkout main
