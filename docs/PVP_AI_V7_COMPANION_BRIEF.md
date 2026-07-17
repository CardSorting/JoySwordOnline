# JoySword NPC PvP Intelligence V7 Companion Brief

- **For:** Project leads, combat designers, testers, and maintainers
- **Status:** Implemented and offline-validated; live arena evidence pending
- **Document revision:** 1.1, adversarial-review edition
- **Decision scope:** Whether to authorize a controlled live calibration pilot

## Decision requested

Authorize a **limited, instrumented live calibration pilot**, beginning with
Amelia. Do not authorize balance-final claims, broad roster retuning, or claims
of human-like live behavior from the current evidence.

The recommendation is a gated "proceed to measurement," not a declaration that
the live objective has already been achieved.

## Executive assurance statement

The strongest defensible conclusion is:

> V7 is structurally valid and robust within its declared deterministic and
> synthetic disturbance suites. It is ready to be measured in the live engine.

The strongest conclusion not supported is:

> V7 has been shown to improve live player-facing intelligence, fairness,
> timing accuracy, or competitive quality.

This distinction is the central governance boundary for the milestone.

## The brief

JoySword's V6 bots already possessed persistent strategy, opponent hypotheses,
exchange plans, tactical intentions, conditioning, adaptive defense, combo
judgment, and distinct character playbooks. The remaining problem was not a
lack of strategic concepts. It was the gap between an intelligent decision and
what the legacy engine actually executed.

V7 addresses that gap at the architecture and offline-validation levels. Live
closure remains an E4 question.

It introduces a runtime-grounding layer that asks five separate questions:

1. What did the bot decide?
2. What did the Lua script request?
3. What did the engine appear to start?
4. What evidence supports the result?
5. Which level of reasoning should learn from that result?

Within the validated paths, this makes the bots more diagnosable and prevents
the tested execution and confirmation failures from being mislabeled as
strategy failures. Live evidence is still required to establish whether the
same separation holds for real callback behavior.

## Why this matters

Without runtime grounding, sophisticated AI can look incoherent:

- A planned punish becomes an apparent idle because the engine rejects it.
- A delayed HP change is assigned to the wrong attack.
- A blocked hit is treated as a miss or clean confirm.
- A short animation lock causes an unintended follow-up gap.
- Repeated execution failures make a sound strategy appear ineffective.
- Ten distinct internal profiles collapse into the same fallback movement.

V7 represents these failure modes in bounded E3 diagnostics and separates them
from decision mistakes in the declared harness. Whether the live engine emits
enough evidence for the same distinction remains an explicit pilot question.

## What was delivered

- One canonical 48-signal contract shared by all ten profiles.
- Expiring, confidence-bearing runtime observations.
- A bounded action confirmation lifecycle with explicit uncertain outcomes.
- Character-specific timing and range profiles.
- Separate decision, execution, confirmation, tactical, and strategy failures.
- Conservative opponent resource and defensive-option beliefs.
- Strategy occupancy, exchange completion, range, repetition, identity, and
  counterfactual diagnostics.
- An approximate-engine Lua harness covering timing uncertainty, interruption,
  rejection, nil values, callback reordering, and life resets.
- Deterministic core propagation from Amelia to the remaining nine profiles.

## What changed for players

The intended player-facing effect is greater coherence rather than unfair
strength:

- Bots should commit only when an action is reasonably executable.
- Follow-ups should reflect actual confirmation confidence.
- Failed engine execution should produce recovery, not nonsensical learning.
- Defensive and offensive patterns should remain character-specific.
- Hesitation and uncertainty should arise from incomplete evidence rather than
  arbitrary random behavior.
- Repetition should remain possible when it is rational, but fallback loops
  should become visible to calibration tooling.

These effects still require live arena confirmation.

## Evidence available today

| Evidence | Result | Supported conclusion within scope |
|---|---:|---|
| Static Lua and reference validation | 10/10 profiles pass | Scripts, callbacks, states, actions, and shared core are structurally valid |
| Original V6 scenarios | 100 / 36,000 ticks | V6 regression behavior remains executable |
| V7 approximation scenarios | 200 / 28,000 ticks | Lifecycles survive deterministic engine-like disturbances |
| Requested versus terminal actions | 1,237 / 1,237 | No pending action leaked in the synthetic runtime |
| Telemetry bound | 96 | Diagnostics remain bounded |
| Route-memory bound | 48 | Route learning remains bounded |
| Identity features | 18 active | Profiles differ in observable synthetic behavior |

The suite does not model real collision, acceleration, animation cancellation,
platform geometry, or client scheduling. It is readiness evidence, not live
validation.

### Evidence strength

| Level | Evidence used here | Status |
|---|---|---|
| E1: Static artifact evidence | Parsing, references, guards, contracts, shared-core checks | Passed |
| E2: Deterministic decision simulation | Original V6 scenarios | Passed |
| E3: Deterministic engine approximation | Timing, nil, interruption, rejection, and reordering scenarios | Passed |
| E4: Live arena observation | Real animation, collision, scheduling, and player-facing behavior | Not performed |
| E5: Replicated live evaluation | Repeatability across environments and reviewers | Not performed |

E1-E3 evidence supports calibration readiness only. It cannot be promoted to E4
through stronger wording or a larger synthetic tick count.

## Claim ledger

| Claim | Evidence | Confidence within scope | Residual challenge |
|---|---|---|---|
| All ten scripts are structurally valid | E1 | High | Legacy engine may still reject valid Lua paths |
| Pending actions terminate in modeled disturbances | E3 | High | Timeout liveness does not prove classification accuracy |
| Engine rejection is isolated from strategy learning in the harness | E3 | High | Actual callback behavior remains unobserved |
| Adaptive memory remains bounded in tested runs | E1/E3 | High | Full-session live scheduling remains unmeasured |
| Profiles are observably distinct in the synthetic metric | E3 | Moderate | Metric and scenarios may not predict human perception |
| Bots are more coherent or human-like in live play | None | Unestablished | Requires E4 study |

## Quantitative go/no-go gates

Current offline gates are explicit:

- Lua/reference validation: `10/10`
- Terminal completeness: `1,237 / 1,237`
- Duplicate attribution: `0`
- Decision failures in V7 disturbance scenarios: `0`
- Telemetry peak: `<=96`
- Route-memory peak/bound: `<=48`
- Observation peak/bound: `<=32`
- Counterfactual stability: `>=0.70` per profile
- Maximum original-suite repetition: `<=0.59`
- Identity signatures: unique, with minimum normalized distance `>=0.20`

These are regression gates, not estimates of real-player quality.

## Character identities

| Character | Competitive identity |
|---|---|
| Amelia | Patient analyst who maps lanes and confirms carefully |
| Apple | Conversion specialist who values reliable route completion |
| Balak | Movement technician who rotates far-range approach geometry |
| Edan | Pressure specialist who accelerates exchanges |
| Lime | Survival specialist who protects defensive options |
| Low | Momentum duelist who alternates restraint and explosive commitment |
| Noa | Resource strategist who controls space and spending |
| Penensio | Guard-aware tournament all-rounder |
| Q-PROTO_00 | Reactive punish specialist who waits for commitment |
| Spika | Conditioning specialist who changes rhythm and approach patterns |

## Safety commitments

V7 does not read hidden player input, react to the current input frame, invent
opponent cooldowns, or grant perfect block and collision knowledge. Missing
evidence stays missing. Heuristics carry confidence and expiration. Every
memory structure and telemetry stream is bounded.

## Current limitations

Live verification is still needed for:

- Real action startup and recovery duration
- Collision and movement obstruction
- Block versus armor/resistance
- Animation cancellation
- Platform and corner behavior
- Callback latency and ordering
- Exact opponent defensive resources
- Identity preservation under real match pacing

Additional methodological limits:

- The simulator and implementation share architectural assumptions.
- The fixed scenarios are not a random sample of all matches.
- Decision ticks within a scenario are correlated and are not independent
  statistical observations.
- A terminal timeout can satisfy liveness while leaving result accuracy unknown.
- Identity distance is relative to this roster and feature set.
- No immutable benchmark-output artifact or independent replication is yet
  committed.

## Principal risks and controls

| Risk | Why it matters | Control before promotion |
|---|---|---|
| Synthetic-to-live gap | Real animation and callback behavior may differ materially | Amelia lifecycle pilot with visible-event annotation |
| Metric gaming | Thresholds may improve while behavior worsens | Review raw distributions and replays; do not optimize one score |
| Identity circularity | Profiles may appear distinct because their configured features differ | Blind player-facing review under matched conditions |
| Timeout masking | All actions terminate but may be misclassified | Compare lifecycle result against independent replay annotation |
| Scope contamination | Other combat or progression changes confound attribution | Freeze build and use scoped diffs |
| Telemetry perturbation | Legacy scheduling may change when diagnostics are enabled | Paired telemetry-on/off pilot |

## Decision options

| Option | Decision | Consequence |
|---|---|---|
| A — Controlled pilot | Approve Amelia instrumentation, preregister endpoints, then expand conditionally | Recommended; resolves the highest-value uncertainty |
| B — Hold | Keep V7 offline-only until better engine observability exists | Lowest operational risk, but timing assumptions remain unresolved |
| C — Broad balance tuning now | Retune all profiles for win rate before live execution is verified | Not recommended; confounds strategy with engine failures |
| D — Claim milestone complete in live terms | Treat synthetic evidence as proof of player-facing success | Reject; exceeds the evidence |

## Pilot exit criteria

The pilot may expand beyond Amelia only if:

- No crash, action loop, duplicate attribution, or bound violation occurs.
- Selected/requested/started/contacted/terminal stages can be reconciled with
  independent visible-event annotation.
- Uncertain classifications are reported rather than silently forced.
- Timing/range corrections improve execution evidence without faster or hidden
  reactions.
- The build, maps, opponents, exclusions, and raw denominators are recorded.

Rates for live confirmation accuracy and identity distinctness must be set only
after the pilot establishes variance; inventing them now would create false
precision.

## Questions an adversarial reviewer should ask

1. Does 100% terminal completion merely reflect timeouts?
2. Who or what independently verifies the terminal class?
3. Are the 64,000 ticks being misrepresented as independent samples?
4. Was the `0.20` identity threshold selected before the final roster result?
5. Could two bots pass the metric yet look identical to players?
6. Does disabling telemetry change behavior?
7. Which result would force rollback rather than another tuning pass?

The documentation set answers these by limiting the claim, publishing metric
definitions, requiring independent live annotation, and defining hard rollback
conditions.

## Recommended next decision

Select Option A: treat V7 as calibration-ready, not balance-final. Freeze a
review build, preregister the Amelia pilot, and collect lifecycle evidence
before modifying strategic weights or damage pressure. Expand next to Penensio,
Balak, and Low only after Amelia passes the pilot exit criteria.

## Document revision history

| Revision | Date | Change |
|---|---|---|
| 1.0 | 2026-07-16 | Initial stakeholder companion brief |
| 1.1 | 2026-07-16 | Added the decision scope, assurance statement, evidence ledger, quantitative gates, methodological limitations, risk controls, decision alternatives, pilot exit criteria, and adversarial-review questions |

## Read next

- [Implementation Strategy](PVP_AI_V7_STRATEGY.md)
- [Design Philosophy](PVP_AI_V7_DESIGN_PHILOSOPHY.md)
- [Technical Whitepaper](PVP_AI_V7_WHITEPAPER.md)
