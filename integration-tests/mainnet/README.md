# Current router against captured mainnet pools

Three offline regression tests run the current router WASM against real
Soroswap, Phoenix and Aquarius contracts captured from mainnet.

## Run

Install Rust 1.95.0 with the wasm32v1-none target, then run from the repository root:

```sh
rustup toolchain install 1.95.0 --profile minimal --target wasm32v1-none
./integration-tests/mainnet/check.sh
# After dependencies have been downloaded:
./integration-tests/mainnet/check.sh --offline
```

The script builds the current checkout's contracts and replays committed captures.
No Stellar CLI, wallet, public-network deployment or RPC is needed for replay.
The isolated test workspace installs Kanatoko 29.1.0 from crates.io; it does
not change the contracts' SDK dependencies. WASM outputs are ignored, rebuilt in
CI and never used as a substitute for the current source.

## Coverage

- A split across the three venues pays exactly their own pool quotes; one
  stroop above the aggregate quote rejects, and the inclusive minimum succeeds.
- The equivalent pooled merge pays the same quoted total with deadline zero
  and leaves no input/intermediate/output token balances at the aggregator.
- deadline == now is rejected by a Soroswap leg (503), while the current
  aggregator accepts it for Phoenix and Aquarius. A venue-independent caller
  should pass a future Unix timestamp or the supported zero sentinel.

This preserves the deployed contract's behavior and bytecode-equivalence guard.
It documents the boundary discrepancy in #1; it does not change expiry policy
or claim that the discrepancy causes loss of funds.

## Local setup and captures

The fixtures pin Protocol 29 ledger state and contract code. The aggregator
CBMPYAEOGQUJ3LVMFXPN3X4GVNPPEI6FVG6YC7HYBYSN26KODOLUSNPF retains its captured
address/storage; only its executable is locally replaced with the freshly
built router. External pool/router code and state are not replaced. The source
baseline was 2cdb2bfcd15e62fc68f55d72b7851902bad5aa99 when captures were produced.

Authorization and the trader's funding/trustline are explicit local test setup.
No live swap, wallet or deployment is involved. These are Host behavior checks,
not fee/transaction-admission evidence.

A missing capture fails offline. Explicit read-only refresh is available by
calling cargo test after building with KANATOKO_CAPTURE_RPC set to a compatible
Protocol 29 endpoint. check.sh clears that variable.
