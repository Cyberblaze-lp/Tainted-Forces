#!/bin/bash

HOOKS_DIR=".githooks"

git config core.hooksPath "$HOOKS_DIR"
git config merge.ignorelist-driver.driver "sh $(git rev-parse --show-toplevel)/.githooks/merge-driver.sh %A %O %B %P"
chmod +x "$HOOKS_DIR/pre-commit" "$HOOKS_DIR/post-merge" "$HOOKS_DIR/post-rewrite" "$HOOKS_DIR/merge-driver.sh"