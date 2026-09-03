# Mainnet Transaction Evidence

Deliverable 7 asks for the aggregator live on mainnet with at least twenty
swaps and five cross-chain transfers documented. This page carries all of it:
the September swap series against the current executor, the cross-chain
transfers, and the original June transactions that first exercised the
contract end to end.

## 1. Swap series — 20 mainnet swaps

Executed 2026-09-03 03:47:42 – 2026-09-03 04:41:54 UTC through the public
WOWMAX gateway (`api-gateway.wowmax.exchange`) against the deployed executor
`CBMPYAEOGQUJ3LVMFXPN3X4GVNPPEI6FVG6YC7HYBYSN26KODOLUSNPF`. Six independent
sender accounts, 16 routes settled as classic path payments and
4 through the Soroban executor contract — the router picks whichever
world quotes better, and both appear here because both won on real pairs.
Amounts are read from transaction effects, so multi-hop routes report what
actually landed rather than an intermediate leg.

Every transaction below is independently verifiable on a public explorer.

| # | Sender | Route | In | Out | Execution | Date (UTC) | Transaction |
|---|---|---|---|---|---|---|---|
| 1 | `GBQ2…SATW` | EURC → XLM | 11.7549 EURC | 75.7576 XLM | Classic path payment | 2026-09-03 03:47:42 | [`fc8ee827bac2…`](https://stellar.expert/explorer/public/tx/fc8ee827bac2fb225da8156a16ee8710f9d3a1738f451df44e995e7fe6bf87bd) |
| 2 | `GBQ2…SATW` | USDC → XLM | 31.7313 USDC | 178.6237 XLM | Classic path payment | 2026-09-03 04:13:15 | [`d61c4fbac266…`](https://stellar.expert/explorer/public/tx/d61c4fbac266486e30d3cc316cf82bbd58bdfa0329bd498697a44ca92b2a1879) |
| 3 | `GCM4…QZMN` | XLM → USDC | 150 XLM | 26.5712 USDC | Classic path payment | 2026-09-03 04:17:37 | [`787f3ee5b6f6…`](https://stellar.expert/explorer/public/tx/787f3ee5b6f68350e9bb387a2fd6f12c1df0d897d913111a0376bdfd182c4de8) |
| 4 | `GCM4…QZMN` | USDC → XLM | 13.2856 USDC | 74.9286 XLM | Classic path payment | 2026-09-03 04:18:21 | [`d5cb5972c608…`](https://stellar.expert/explorer/public/tx/d5cb5972c608d83af736e351536d9650fa367d245958a64d354003f7c1c201bb) |
| 5 | `GCM4…QZMN` | XLM → EURC | 40 XLM | 6.1936 EURC | Soroban contract | 2026-09-03 04:18:49 | [`44520befa2b1…`](https://stellar.expert/explorer/public/tx/44520befa2b1411e522bdcdf6c4acd0bce576cf0aba6a1004643dbae673950d9) |
| 6 | `GCM4…QZMN` | AQUA → USDC | 20,947 AQUA | 7.0725 USDC | Soroban contract | 2026-09-03 04:21:37 | [`370d3afdaa2a…`](https://stellar.expert/explorer/public/tx/370d3afdaa2a4ae8e4b3a1b9b26e61d1484f8ffcfa711296925059727c979dfd) |
| 7 | `GCM4…QZMN` | AQUA → XLM | 19,900 AQUA | 37.8025 XLM | Soroban contract | 2026-09-03 04:22:11 | [`908231b048db…`](https://stellar.expert/explorer/public/tx/908231b048db8b8856610640402d5aeed91a64c45a9d7dc9ada316ef96f681f0) |
| 8 | `GCM4…QZMN` | USDC → XLM | 24.0568 USDC | 135.7582 XLM | Classic path payment | 2026-09-03 04:22:27 | [`7ef1887045ab…`](https://stellar.expert/explorer/public/tx/7ef1887045ab755770d70421a1263d050a739caad1b518537dd2bb8eb5098a70) |
| 9 | `GCSS…7IMD` | XLM → USDC | 120 XLM | 21.2499 USDC | Classic path payment | 2026-09-03 04:25:16 | [`e710abd9d914…`](https://stellar.expert/explorer/public/tx/e710abd9d914e8682f2d9bc629f38782e18aa68a14d732df333624206d1bac3b) |
| 10 | `GCSS…7IMD` | USDC → XLM | 20.1874 USDC | 113.9773 XLM | Classic path payment | 2026-09-03 04:25:45 | [`ec5a3eaa5b83…`](https://stellar.expert/explorer/public/tx/ec5a3eaa5b830e2cc5eb806788deee5927f8b00af86e0e893319e055b9a9b718) |
| 11 | `GBQO…OJ44` | XLM → AQUA | 277.4 XLM | 145,215.7257 AQUA | Classic path payment | 2026-09-03 04:27:17 | [`21939fb740b1…`](https://stellar.expert/explorer/public/tx/21939fb740b1651642cad4d10833c1525234a62c9b7b53fcdeca856a7bffe8f9) |
| 12 | `GBQO…OJ44` | AQUA → XLM | 1,437.4848 AQUA | 2.7264 XLM | Classic path payment | 2026-09-03 04:27:34 | [`751e363cf6b3…`](https://stellar.expert/explorer/public/tx/751e363cf6b3ddfa9267faa2d8ceca8a9e97b05eb9e16a5b01ea2434c2c613eb) |
| 13 | `GAIA…QTWC` | XLM → EURC | 279.3 XLM | 43.2359 EURC | Soroban contract | 2026-09-03 04:28:55 | [`6f8b85ee7f9f…`](https://stellar.expert/explorer/public/tx/6f8b85ee7f9fe3b1159b5dcf9239b6516b3933e6b8b307135e7282c4caad16a7) |
| 14 | `GC3I…77JB` | XLM → USDC | 274.0031 XLM | 48.4961 USDC | Classic path payment | 2026-09-03 04:31:00 | [`75a50feb0cb0…`](https://stellar.expert/explorer/public/tx/75a50feb0cb0d7d7eacd283567fe2da08097addc6f45bb07963aaf30bc8faf92) |
| 15 | `GC3I…77JB` | USDC → AQUA | 25.0046 USDC | 73,904.0796 AQUA | Classic path payment | 2026-09-03 04:31:27 | [`042698dcbd52…`](https://stellar.expert/explorer/public/tx/042698dcbd52988572c714446382da1c5c3a75123947b2d0e2f0ffdb30b342bd) |
| 16 | `GC3I…77JB` | USDC → XLM | 24.5046 USDC | 138.3171 XLM | Classic path payment | 2026-09-03 04:32:03 | [`1759705f3389…`](https://stellar.expert/explorer/public/tx/1759705f3389c65e43d8194dd4dea4af2cc1083bf816b30a5f79186a2fd596f0) |
| 17 | `GAIA…QTWC` | EURC → XLM | 0.8474 EURC | 5.466 XLM | Classic path payment | 2026-09-03 04:35:39 | [`2f22e84b26dc…`](https://stellar.expert/explorer/public/tx/2f22e84b26dc42bcfce36d6fe5123cf0e39969c76a3de13aeda6ddfd34b441c7) |
| 18 | `GC3I…77JB` | XLM → AQUA | 346.038 XLM | 181,382.5856 AQUA | Classic path payment | 2026-09-03 04:38:23 | [`5b66309f8c7d…`](https://stellar.expert/explorer/public/tx/5b66309f8c7d7b3c5c63cbe92982fe69b05849192649d88302e3d14557d906eb) |
| 19 | `GC3I…77JB` | AQUA → XLM | 182,678 AQUA | 346.7831 XLM | Classic path payment | 2026-09-03 04:38:40 | [`7dad273eb235…`](https://stellar.expert/explorer/public/tx/7dad273eb23524b2ee3a372cef619de249f72381c9c8ba7e1aadc0848fa21c86) |
| 20 | `GBQ2…SATW` | XLM → USDC | 452.1526 XLM | 79.9858 USDC | Classic path payment | 2026-09-03 04:41:54 | [`0ac27f12dc2d…`](https://stellar.expert/explorer/public/tx/0ac27f12dc2d7e95a622859819489f29b30a5ebf2fadb3c75e67642f920625cd) |

## 2. Cross-chain transfers

Fourteen transfers are documented across three bridge providers, in both
directions, and the deliverable asks for five.

**July series — 11 transfers, plus one documented refund.** Captured in the
benchmark report [`D5-REPORT.pdf`](../D5-REPORT.pdf), where every transfer has
its source and destination transactions linked on the corresponding evidence
slide, together with the delivery time measured from those two transactions:

| Provider | Transfers | Covered directions |
|---|---|---|
| Allbridge | 3 successful | includes 2 inbound Ethereum → Stellar |
| Squid (Coral RFQ over Axelar GMP) | 4 successful | inbound from Ethereum and BNB Chain, plus one refund case documented end to end |
| Near Intents | 4 successful | inbound from Ethereum and BNB Chain |

**September series — 3 transfers, executed through the production UI.** These
add the outbound direction and a second provider chosen by the user from the
ranking. For the outbound transfer the app offered Near (~34 s, 79.6743 USDT)
and Squid (~40 s, 79.3697 USDT, capacity ≤25k); Squid was selected:

| Direction | Route | Amount | Provider | Date (UTC) | Transaction |
|---|---|---|---|---|---|
| Inbound | USDT (Ethereum) → USDC (Stellar) | 31.7313 USDC received | Near Intents | 2026-09-03 03:51:09 | [`6e4c8a638edb…`](https://stellar.expert/explorer/public/tx/6e4c8a638edb6cb459b14bb8c346d42854e99e544e28ab7a0abee831af14adc0) |
| Inbound | BNB (BNB Chain) → XLM (Stellar) | 195.0749 XLM received | Near Intents | 2026-09-03 04:15:31 | [`0f1eec3d74d5…`](https://stellar.expert/explorer/public/tx/0f1eec3d74d595891205a804ec4f6a550723c0c95dffbc7a126a23ac0bb2ffdb) |
| Outbound | USDC (Stellar) → USDT (Ethereum) | 79.9858 USDC sent | Squid | 2026-09-03 05:05:13 | [`8e58bf3d9a1d…`](https://stellar.expert/explorer/public/tx/8e58bf3d9a1d575b613522a59f8e31fb381c756111245e6e4b37cff744345ade) · [Squid scan](https://scan.squidrouter.com/tx/8e58bf3d9a1d575b613522a59f8e31fb381c756111245e6e4b37cff744345ade) |

The Near Intents solver
(`GBX2CFNBNJOLHK3RQXG5RKUMM4WCZ3SRUFZBL6CT76J6CACW7AEZ3SHN`) delivers by
invoking a contract rather than by a plain payment, which is why the inbound
rows appear as `invoke_host_function` on the Stellar side.

## 3. June series — first executor deployment

All transactions executed on **Stellar mainnet** against the deployed
executor contract
`CALCLWVZT6CQDSJV4MP3LOLSGKMYJNOWO5IL4Y54OY2EGZ2TF6RAF7QC`
(2026-06-13). Each is independently verifiable on a public explorer; the
contract id in every transaction matches the contract source in this repo.

| # | Function | Route | In | Out | Date (UTC) | Transaction |
|---|---|---|---|---|---|---|
| 1 | `swap` (split) | XLM → USDC, Soroswap + Phoenix 50/50 | 4 XLM | 7.608517 USDC | 2026-06-13 12:25:17 | `ee3446412436b39dba202a21a225eb3c25d93900bfde3e784481011242a4bb21` |
| 2 | `swap_aqua` | USDC → AQUA (Aquarius) | 0.2 USDC | 527.1959329 AQUA | 2026-06-13 12:42:47 | `3240332ad78dfc873c0ac239041f5503768c7d2b68d8a7fa59a6831384e0914f` |
| 3 | `swap_phoenix` | XLM → USDC (Phoenix) | 2 XLM | 3.799793 USDC | 2026-06-13 12:42:59 | `16b71d2dfa0b346d2d78fe6be1c925c203799ed17de6c181a103616c7a98b810` |
| 4 | `swap_aqua_then_soroswap` | AQUA → USDC → XLM (Aquarius → Soroswap) | 100 AQUA | 0.1970751 XLM | 2026-06-13 12:43:11 | `ec699cba0888d475ef4dcd40c72a49a5894b49c8c0fb8b56c579b28e6882c526` |

Explorer links (stellar.expert):

1. https://stellar.expert/explorer/public/tx/ee3446412436b39dba202a21a225eb3c25d93900bfde3e784481011242a4bb21
2. https://stellar.expert/explorer/public/tx/3240332ad78dfc873c0ac239041f5503768c7d2b68d8a7fa59a6831384e0914f
3. https://stellar.expert/explorer/public/tx/16b71d2dfa0b346d2d78fe6be1c925c203799ed17de6c181a103616c7a98b810
4. https://stellar.expert/explorer/public/tx/ec699cba0888d475ef4dcd40c72a49a5894b49c8c0fb8b56c579b28e6882c526

## Cross-protocol transaction (tx #4) — event highlights

The route AQUA → USDC → XLM executes in one transaction:

- Aquarius leg: `trade` on pool `CA6GAFOJ…` converts the input AQUA to USDC,
  delivered to the executor contract.
- Soroswap leg: `SoroswapPair swap` on pair `CAM7DY53…` converts that USDC
  (read from the contract's actual balance) to native XLM, delivered to the
  executor.
- The executor forwards the final XLM to the user.

Two different protocols, two different pull-authorization patterns, one
atomic `InvokeHostFunction`.

## Executor cleanliness

After the swaps above, the executor's token balances are zero:

```
balance(XLM, contract)  = 0
balance(USDC, contract) = 0
balance(AQUA, contract) = 0
```

queried via each Stellar Asset Contract's `balance()`. No user funds are
retained by the executor between transactions.

## Split plan used in tx #1

The `swap` entry point received this `--plan` (a `Vec<Strand>`): two
strands, `parts` 1:1, one hop each — Soroswap (venue 0) and Phoenix
(venue 2), both XLM→USDC. Unused venue-specific fields carry placeholders.
See [`split-plan.json`](./split-plan.json).


## Pooled-merge executor (`swap_merge`) — live mainnet swap

A second contract,
`CAQPNW2M6G5SV3AWJKUCQPOZ5RKEUUFYGSASU4WRCIVSQRXRGHQ2HRYY`,
carries the same entry points plus `swap_merge`, a pooled fan-in executor.
Where the linear plan (`Vec<Strand>`) runs each leaf path independently —
duplicating any hop several branches share — `swap_merge` executes the route
as topologically-ordered **stages** and splits each token's *pooled* on-chain
balance once across its pools. The result is one swap per graph **edge**
(not per leaf path), which both realises the true fan-in optimum and keeps
heavy multi-branch routes inside the Soroban per-transaction instruction
budget.

| Function | Route | In | Out | Date (UTC) | Transaction |
|---|---|---|---|---|---|
| `swap_merge` | AQUA → yXLM (3 split branches converging on XLM, then a pooled XLM→yXLM split across Aquarius + Soroswap) | 1001.89 AQUA | 1.9889078 yXLM | 2026-06-13 16:38:53 | `822ff1c1ee1d5f27e9c635676c1798bd390ab72b279234a04e9a9eb36d60d9b4` |

Explorer: https://stellar.expert/explorer/public/tx/822ff1c1ee1d5f27e9c635676c1798bd390ab72b279234a04e9a9eb36d60d9b4

**Plan shape (4 stages, 7 edge-swaps):**

- Stage 1 — AQUA: split across three pools (two Aquarius legs + one to a
  shared intermediate), feeding XRP / USDC / XLM.
- Stages 2–3 — XRP, USDC: each converted to XLM (one pool each).
- Stage 4 — XLM: the contract reads its **pooled** XLM balance (the sum of
  every upstream branch) and splits it once across an Aquarius and a Soroswap
  pool into yXLM.

Because the shared XLM→yXLM hop runs **once** on the pooled total rather than
once per upstream branch, the same route that overflows the instruction
budget when linearised fits comfortably as stages. The realised output
(1.9889078 yXLM) is **~0.48% above** the classic SDEX path for the same input,
and the pooled fan-in matches the route the off-chain pathfinder selected.
