#!/usr/bin/env bash
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$here/../.." && pwd)"
workspace="$root/contracts"
target_dir="${CARGO_TARGET_DIR:-$workspace/target}"
mkdir -p "$here/wasm"
cd "$workspace"
cargo +1.95.0 build --locked --release --target wasm32v1-none --package wowmax-stellar-router
cp "$target_dir/wasm32v1-none/release/wowmax_stellar_router.wasm" "$here/wasm/wowmax_stellar_router.wasm"
