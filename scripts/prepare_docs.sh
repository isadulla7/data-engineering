#!/usr/bin/env bash
# Sayt uchun manba papkasini yig'adi: bosh sahifa (mundarija), darslar va .sql fayllar.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf .site_src
mkdir -p .site_src
cp -r sayt/. .site_src/
cp ROADMAP.md .site_src/
# GitHub'dagi README saytda "Qanday o'qish" sahifasi bo'ladi
cp README.md .site_src/qanday-oqish.md
for d in [0-9][0-9]-*/; do
  cp -r "$d" .site_src/
done
