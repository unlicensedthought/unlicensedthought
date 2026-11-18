#!/usr/bin/env bash
# trunkq runs this for every land: the profile README must exist and be non-empty.
set -euo pipefail
cd "$(dirname "$0")/.."
test -s README.md || { echo "verify: FAIL README.md missing or empty" >&2; exit 1; }
head -1 README.md | grep -Eq "^#{1,3} " || { echo "verify: FAIL README.md has no heading on line 1" >&2; exit 1; }
echo "verify: OK"
