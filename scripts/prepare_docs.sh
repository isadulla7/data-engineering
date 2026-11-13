#!/usr/bin/env bash
# Sayt uchun manba papkasini yig'adi: markdown darslar va .sql fayllar.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf .site_src
mkdir -p .site_src
cp README.md ROADMAP.md .site_src/
for d in [0-9][0-9]-*/; do
  cp -r "$d" .site_src/
done
