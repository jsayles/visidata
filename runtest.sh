#!/usr/bin/env bash

# Usage $0

for i in tests/*.vd ; do
    PYTHONPATH=. bin/vd --confirm-overwrite=False --play $i -- --output=${i%.vd}.tsv
done

git diff tests/