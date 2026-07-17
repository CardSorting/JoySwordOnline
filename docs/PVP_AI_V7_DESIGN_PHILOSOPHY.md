# JoySword NPC PvP Intelligence V7 Design Philosophy

- **Document revision:** 1.1, assurance-grade review edition
- **Status:** Normative design doctrine with testable engineering consequences
- **Scope:** Competitive NPC cognition and its runtime-grounding boundary
- **Empirical claim:** None by itself; evidence is reported in the whitepaper

## How to read this document

This document defines what the system ought to optimize and what it is forbidden
to do. It is not evidence that the implementation succeeds. Each principle is
therefore paired with an operational mechanism and a falsification condition.
Where the philosophy conflicts with a favorable metric, the philosophy governs
unless a reviewed revision changes the doctrine explicitly.

## Thesis

Believable competitive intelligence does not come from knowing everything. It
comes from pursuing a coherent plan while knowing only what a skilled player
could reasonably observe.

The JoySword bots should not feel human because they occasionally choose a
random action. They should feel human because they form interpretations, act
with incomplete information, commit at recognizable moments, learn from
properly attributed outcomes, preserve habits long enough to be readable, and
change those habits when evidence justifies it.

V7 applies this philosophy to the boundary between cognition and execution.
The engine is not a transparent or perfectly documented substrate. Therefore,
uncertainty about execution must be treated as part of intelligence rather than
hidden behind confident guesses.

## Definitions

The following terms are used narrowly:

| Term | Operational meaning | What it does not mean |
|---|---|---|
| Grounded | A decision can be traced to classified, current, bounded runtime evidence | The evidence is necessarily complete or exact |
| Believable | Behavior has legible intent, bounded adaptation, and plausible uncertainty | A claim that a human cannot distinguish the bot |
| High-skill | The bot uses spacing, resource discipline, confirmation, planning, and adaptation available through supported signals | Perfect play, hidden information, or professional-player equivalence |
| Fair | The bot operates through existing actions and observable information with punishable commitments | Equal win probability in every matchup |
| Bounded | Memory, confidence, timing, telemetry, and commitment have explicit limits | Static or non-adaptive behavior |
| Distinct identity | Observable action, range, tempo, resource, and defense distributions differ meaningfully by character | Merely assigning different strategy names |
| Error | A consequence of uncertainty, pressure, stale belief, or execution variance | Deliberate random sabotage |
| Evidence | A reproducible artifact or observation at a declared evidence level | Persuasive wording or design intent |

The phrase "human-like" is acceptable only as a design aspiration or a result
of an explicitly described human-subject evaluation. It is not an offline
validation label.

## Epistemic commitments

V7 adopts four commitments:

1. **Traceability:** every authoritative observation has a source and lifetime.
2. **Calibrated confidence:** uncertain evidence exerts less influence than
   verified evidence and decays toward unknown.
3. **Non-conflation:** liveness, classification accuracy, tactical quality, and
   player perception are separate claims.
4. **Revisability:** a reproducible counterexample outranks the document's
   preferred interpretation.

## 1. Engine truth outranks design intent

An elegant tactic is meaningless if the engine cannot execute it from the
current state. V7 preserves the tactical idea but asks the runtime to provide
evidence for request, start, contact, and recovery.

When the engine rejects or stalls an action, the system should learn about
execution reliability. It should not conclude that the match strategy was
wrong.

This principle keeps high-level reasoning grounded in the actual game rather
than an imagined version of the game.

## 2. High skill is not omniscience

A strong player can estimate spacing, recognize habits, track visible resource
use, and anticipate likely defensive responses. A strong player cannot read
hidden inputs, know an exact unseen cooldown, or react before a visible event.

The bots follow the same covenant:

- No hidden player-input access
- No perfect current-frame reaction
- No exact opponent resource state without an API
- No fabricated collision, terrain, block, or frame-advantage truth
- No deterministic counter to every option

Skill should emerge from preparation, positioning, pattern recognition,
resource discipline, and reliable conversion.

## 3. Uncertainty is a first-class state

Many combat results are ambiguous in the available runtime. A target may remain
in range without losing HP because the action was blocked, armored, resisted,
late, or never truly contacted.

V7 does not force every result into hit or miss. It supports probable hit,
probable whiff, probable block or armor, interruption, rejection, timeout, and
uncertain result.

Confidence and expiration are not decorations. They determine how much an
observation is allowed to influence behavior and how long that evidence remains
relevant.

## 4. Intelligence requires correct attribution

A competitive mind can improve only when it learns from the right cause.

V7 distinguishes:

- **Decision failure:** the chosen option was invalid before request.
- **Execution failure:** the engine did not start or complete the request.
- **Confirmation failure:** the action ran, but evidence could not classify it.
- **Tactical failure:** the executable tactic lost its immediate interaction.
- **Strategy failure:** repeated valid tactics contradicted the larger plan.

These layers prevent a callback gap from rewriting the bot's theory of the
opponent.

## 5. A plan must persist long enough to become meaningful

Human competitors do not replace their entire matchup theory after one failed
attack. They also do not remain loyal to a broken theory forever.

Strategy inertia gives observations time to accumulate. Replanning occurs when
assumptions are contradicted, failures repeat, resources or health change
materially, the opponent adapts, or a lethal opportunity invalidates normal
pacing.

The goal is stability without stubbornness.

## 6. Identity must be visible in behavior

An identity name does not make a character distinct. Distinction must appear in
spacing, movement, commitment, pressure duration, defense, combo goals,
resource use, and tempo.

Penensio should visibly value guard-confirmed control. Balak should rotate
movement and engagement geometry. Low should expose bounded momentum swings.
Lime should preserve survival options. Spika should change shown patterns.

Shared infrastructure may calculate evidence consistently, but it must not
erase the consequences of the characters' real action sets.

## 7. Purposeful stillness is part of neutral

Movement is not automatically intelligent. Constant dash and jump noise can
hide indecision while surrendering space.

A skilled bot may advance, retreat, stutter, shadow, cross through, or move
vertically. It may also hold position because it owns the relevant lane or is
waiting for commitment.

Every movement family should serve range control, threat presentation,
observation, escape denial, or recovery—not motion for its own sake.

## 8. Rational repetition is allowed

Repetition can mean several different things:

- A valid exploit against an opponent who refuses to adapt
- A defining character strength
- Limited action availability
- A safe response under lethal pressure
- A stuck fallback loop

Only the last category is inherently unhealthy. Anti-repetition logic must
consider alternatives, execution reliability, opponent adaptation, and current
risk. It should not force a losing mix-up merely to improve a diversity metric.

## 9. Errors should come from pressure and incomplete knowledge

Believable imperfection is not unrestricted random action selection.

A plausible error occurs when the bot:

- Relies on a once-reliable habit that has recently changed
- Misjudges a bounded range estimate
- Confirms too late after an unusual callback delay
- Hesitates after a surprising defense
- Protects resources too greedily
- Chooses a familiar route under pressure
- Overcommits because comeback urgency narrowed its judgment

The cause should be visible in entropy, surprise, pressure, identity, or model
confidence.

## 10. Telemetry observes; it does not govern

Diagnostics must never become a second decision system. They record why an
action happened, whether it executed, how it ended, and what changed afterward.

Telemetry is optional, bounded, non-blocking, and safe to disable. A logging
failure cannot interrupt gameplay. A metric target cannot force an action.

This separation protects both runtime reliability and the interpretability of
test results.

## 11. Bounded systems are trustworthy systems

Every adaptive structure needs a lifetime and a limit:

- Observations expire.
- Telemetry uses a ring bound.
- Route memory is capped.
- Action histories are capped.
- Confidence cannot reach certainty from weak evidence.
- Timing estimates remain within configured ranges.
- Resource beliefs decay toward unknown.
- Strategy and plan commitment have bounded review points.

Unbounded intelligence is not more intelligent. It is harder to reason about,
harder to test, and more likely to accumulate stale assumptions.

## 12. Calibration quality outranks win rate

A bot can win for the wrong reasons: impossible reactions, repetitive lockout,
unpunishable recovery, hidden information, or exaggerated stats. Such a bot has
failed the design goal.

The primary calibration questions are:

- Did the engine execute what cognition intended?
- Was the result classified honestly?
- Did the correct reasoning layer learn?
- Was the action understandable and punishable?
- Did the character retain a distinct competitive identity?
- Could a player adapt to the pattern?

Win rate matters only after these questions have acceptable answers.

## Operationalization and falsifiers

| Principle | Required mechanism | Evidence expected | Principle is violated when |
|---|---|---|---|
| Engine truth over intent | Request/start/contact/result lifecycle | Static path plus runtime event trace | Selection alone is treated as execution |
| High skill without omniscience | Signal contract and unavailable-signal prohibition | Contract audit | Hidden or unavailable information changes action utility |
| Uncertainty as state | Confidence, expiry, and `RESULT_UNCERTAIN` | Ambiguity scenario and live annotation | Missing evidence is coerced into hit or miss |
| Correct attribution | Five failure classes and single action ownership | Rejection/interruption/reordering scenarios | Engine rejection trains strategy failure |
| Stable but revisable plans | Minimum commitment and evidence-based transition reasons | Occupancy trace | Strategy thrashes without evidence or never exits after contradiction |
| Observable identity | Role/range/tempo/resource metrics and playbooks | Roster distributions plus live review | Identity exists only in labels or weights with no behavior effect |
| Purposeful movement | Geometry- and intent-linked movement utility | Movement-family trace | Movement repeats without changing threat, observation, or position |
| Rational repetition | Alternative-aware repetition analysis | Context and available-action trace | A loop persists despite valid safer alternatives and failed outcomes |
| Pressure-derived error | Entropy, surprise, health, and complexity inputs | Error-reason telemetry | Arbitrary action selection is introduced as "human error" |
| Telemetry non-authority | Guarded append-only diagnostics | Telemetry-on/off comparison | Logging changes selected actions or blocks gameplay |
| Bounded adaptation | Caps, decay, and timeout policies | Static and runtime peak checks | Any adaptive table or action remains unbounded |
| Calibration over win rate | Layered failure diagnosis and release gates | Change record | A safety or fairness gate is waived for wins |

This matrix turns a philosophical statement into a reviewable engineering
obligation. Passing one test does not prove the entire principle; a single
clear violation is sufficient to reject the corresponding claim.

## Priority order for conflicting goals

When objectives conflict, resolve them in this order:

1. Runtime safety and boundedness
2. No hidden or fabricated information
3. Correct attribution and epistemic honesty
4. Existing action/state compatibility
5. Player readability and punishability
6. Character identity
7. Strategic effectiveness
8. Variety and spectacle
9. Win rate

For example, a visually varied action is rejected if it requires an unavailable
signal; a higher-win-rate loop is rejected if it is unpunishable or caused by
state-transition spam.

## The anti-cheating covenant

V7 permits:

- Visible health, position, hit state, resource, and state information
- Bounded derivation from previous visible observations
- Predictions based on confirmed tendencies
- Conservative inference from observed resource use
- Character-specific timing estimates learned from execution

V7 prohibits:

- Access to hidden controls or input buffers
- Perfect knowledge of future state
- Treating unavailable signals as false or zero
- Exact opponent cooldown assumptions
- Reaction windows unavailable to a human observer
- Telemetry-fed runtime authority

### Threat model

The protected asset is a fair information boundary between player and bot. The
principal threats are accidental privileged knowledge, timing advantages,
self-reinforcing telemetry, and engine-state shortcuts that bypass existing
actions.

| Threat | Example | Required defense |
|---|---|---|
| Hidden-input oracle | Reading the current attack button before animation evidence | No input API in cognition path; source audit |
| Future-state oracle | Selecting a counter from a scheduled but invisible callback | Tick-causal observations only |
| Resource oracle | Treating opponent cooldown or mana break as exactly known | Bounded belief with confidence and decay |
| Frame oracle | Acting on exact advantage unavailable to the script | Timing ranges and uncertainty |
| Collision oracle | Assuming contact from geometry alone | Probable result or uncertainty, never exact collision truth |
| Telemetry feedback | A diagnostic threshold directly forces a different action | Telemetry remains append-only and non-authoritative |
| Action bypass | Invoking an effect unavailable in the character state graph | Named action/state validation |
| Reaction compression | Lowering delay to conceal bad range tuning | Range calibration without increasing reaction privilege |

The adversary may be an intentional cheat, an overzealous optimizer, or an
innocent implementation shortcut. The same controls apply.

## Doctrine for unresolved uncertainty

When evidence is insufficient, the permitted responses are:

- Preserve unknown state.
- Select a general-purpose low-commitment option.
- Run a bounded low-risk probe when strategically appropriate.
- Delay learning until attributable evidence arrives.
- Emit an uncertain diagnostic result.

The prohibited responses are:

- Infer certainty from absence alone.
- Reuse stale evidence without an explicit recency model.
- Choose randomly from the full action set.
- Increase reaction speed to mask uncertainty.
- Rewrite the strategy from one ambiguous exchange.

## The player-facing standard

The desired bot is strong enough to demand adaptation but legible enough to be
studied. It should pressure with purpose, defend for a reason, occasionally
misread an opponent, and reveal a character-specific rhythm. Victory should
feel earned by the bot's decisions, and defeat should reveal something the
player can learn or exploit.

## Human evaluation standard

Player-facing claims require evidence beyond telemetry. A credible evaluation
should:

- Compare matched builds and conditions.
- Blind reviewers to profile/build labels where practical.
- Separate perceived competence, fairness, readability, identity, and variety.
- Use anchored rating criteria and preserve free-text explanations.
- Report reviewer count, experience, exclusions, and agreement/disagreement.
- Include losing and winning matches; do not curate only successful sequences.
- Ask reviewers to identify exploitable patterns, not only rate spectacle.

No minimum rating is declared before a pilot establishes instrument quality and
variance. Post-hoc thresholds must not be presented as preregistered evidence.

## Design-review questions

Before accepting a new V7 behavior, ask:

1. Which verified or bounded observation supports it?
2. Is the behavior executable through an existing action and state path?
3. What happens if the engine rejects the request?
4. How does ambiguous evidence terminate safely?
5. Which reasoning layer receives success or failure?
6. Does the change preserve the character's identity?
7. Can the opponent read and punish it?
8. Is repetition rational in this context?
9. Are memory, confidence, telemetry, and timing bounded?
10. What evidence would require live arena verification?

## Falsification and doctrine revision

This philosophy must be revised or the implementation rejected if live evidence
shows that its mechanisms systematically produce the opposite of their stated
purpose. Examples include confidence values that are numerically bounded but
behaviorally ignored, identity profiles that collapse under real action
availability, or "plausible errors" that players perceive as arbitrary input
failure.

A doctrine revision must state:

1. Which principle failed or conflicted with evidence.
2. Whether the failure was conceptual, operational, or implementation-specific.
3. What alternative principle is proposed.
4. Which tests would distinguish the old and new doctrines.
5. Which prior claims are withdrawn.

The objective is not to make the philosophy unfalsifiable. It is to make its
tradeoffs explicit enough that evidence can change it.

## Adversarial philosophy review

An adversarial reviewer should challenge:

- Whether "believable" is being used as an unmeasured compliment.
- Whether uncertainty merely delays an otherwise deterministic script.
- Whether character identity is configuration theater rather than observable
  behavior.
- Whether bounded memory still preserves biased stale beliefs too long.
- Whether rational repetition becomes an excuse for oppressive loops.
- Whether anti-cheating rules are enforced by code or only prose.
- Whether player readability is measured independently of bot success.

The implementation must answer with artifacts and observations, not intent.

## Document revision history

| Revision | Date | Change |
|---|---|---|
| 1.0 | 2026-07-16 | Initial V7 design philosophy |
| 1.1 | 2026-07-16 | Added operational definitions, epistemic commitments, principle falsifiers, conflict priorities, anti-cheating threat model, uncertainty doctrine, human-evaluation standard, and doctrine-revision protocol |

## Related documents

- [Implementation Strategy](PVP_AI_V7_STRATEGY.md)
- [Companion Brief](PVP_AI_V7_COMPANION_BRIEF.md)
- [Technical Whitepaper](PVP_AI_V7_WHITEPAPER.md)
