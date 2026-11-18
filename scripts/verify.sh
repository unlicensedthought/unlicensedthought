#!/usr/bin/env bash
# trunkq runs this for every land: the profile README must exist and open with a heading.
# Contract: the last stdout line is `VERIFY {json}`.
set -uo pipefail
cd "$(dirname "$0")/.."
if [ ! -s README.md ]; then
  echo "verify: FAIL README.md missing or empty" >&2
  echo 'VERIFY {"verdict":"fail","failed":"readme-present"}'; exit 1
fi
if ! head -1 README.md | grep -Eq '^#{1,3} '; then
  echo "verify: FAIL README.md has no heading on line 1" >&2
  echo 'VERIFY {"verdict":"fail","failed":"readme-heading"}'; exit 1
fi
echo 'VERIFY {"verdict":"pass","gates":2}'
