#!/bin/sh
#
# Copyright 2025 Frode Severin Hatlevik, frodeseverin@gmail.com
# Licenced under GNU GPL v3 or later

# Small script to automate fetch from git upstream, rebase, force push and build.

git fetch upstream
git rebase upstream/dev
git push --force
cargo build --release --features pulseaudio-backend
