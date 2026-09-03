# External integrations

The WOWMAX aggregation stack on Stellar is built to be consumed by other
projects. Integration happens through the public API (Swagger:
https://api-gateway.wowmax.exchange/docs), the TypeScript SDK
(`@wowmax/sdk` on npm), or the MCP tool surface for AI agents. No API key is
required to start, and every endpoint is non-custodial by construction: the
API returns unsigned transactions, and keys, signing and broadcast stay with
the integrator's users. The full path is documented in the
[developer integration guide](INTEGRATION.md).

## Toscale — live in production

**What it is.** [Toscale](https://toscale.io) is a crypto market-data
platform: rankings, charts, a news aggregator and a trading terminal.

**What is integrated.** The WOWMAX router powers the swap widget on Toscale's
market pages, with both tabs served by our API — **Swap** for on-chain trades
and **Cross-chain** for transfers between networks. Stellar is available as a
network in the widget: a user on a coin page can quote and execute
XLM → USDC on Stellar without leaving the page, with slippage tolerance
exposed in the UI.

**What it demonstrates.** This is the aggregation API doing the job it was
designed for — a third-party product embedding Stellar routing as a feature,
without running any routing infrastructure of its own and without taking
custody of user funds. Everything Toscale needed is public: the quote and
swap endpoints, the token identifier conventions, and the unsigned-transaction
flow described in the integration guide.

**Executing on mainnet.** A swap placed from the Toscale widget on
2026-09-03 — XLM → USDC on Stellar, routed by WOWMAX and settled as a classic
path payment. The wallet showed a guaranteed floor of 0.1754773 USDC and
the swap settled above it, at 0.1763592 USDC:

| Route | In | Out (with the enforced floor) | Transaction |
|---|---|---|---|
| XLM → USDC | 1 XLM | 0.1763592 USDC (floor 0.1754773) | [`95cbe81aa440…`](https://stellar.expert/explorer/public/tx/95cbe81aa4407e1352ac85d7c037f793c55e70fc3963e8fd7f2f18f19b5029e7) |

The wallet confirmation for that transaction names `toscale.io` as the
requesting site, and the transaction carries the trustline creation and the
path payment the WOWMAX endpoint built — the integrator's user signs it with
their own wallet, exactly as the integration guide describes. Non-custodial
end to end: WOWMAX produced the payload, Toscale presented it, the user
signed it.

## Aurora Intents (NEAR) — evaluating

**What it is.** [Aurora](https://aurora.dev) operates the Aurora Intents
gateway to NEAR Intents. WOWMAX already consumes that gateway as an upstream
provider: our cross-chain ranking reaches NEAR Intents solvers through it.

**What is happening.** Aurora is currently evaluating the WOWMAX Stellar
router from the other direction — as a routing source in their price-routing
comparison tool (https://price-routing-tool.vercel.app/), which quotes several
routers side by side to compare execution quality.

**Why it is worth recording.** The relationship runs both ways: we route
through Aurora for cross-chain legs, and Aurora measures our Stellar routing
against alternatives. Benchmarking by a party with no incentive to flatter us
is the most useful kind of feedback an aggregator can get, and it is how a
routing API earns adoption — by being measured, not by being announced.

## Integrating your own project

Start with the [15-minute quickstart](INTEGRATION.md): a first live quote
takes about three minutes, and the full cycle — quote, unsigned transaction,
signature, status — is covered end to end. The
[routing logic](ROUTING.md) page documents the two behaviours every integrator
should handle: the `rate_updated` guard (we refuse to build a transaction when
the live price has slipped more than 0.5% below the quote — surface it and let
the user confirm) and the per-route reasons returned alongside every ranking,
which turn "why is this bridge missing" into a readable answer.

If you ship an integration, or get stuck on the way, open an issue in this
repository — real external questions are how this documentation improves.
