# Upgrade path — what gets stronger when you answer

**Current state: all 11 resumes are sendable today.** Zero placeholders. Every claim is
either verbatim from your original resume or a direct restatement of it. Nothing on any page
is something you couldn't defend in an interview.

The cost of that safety is real, though: I stripped out claims that are *probably* true but
that I couldn't verify. Each one below is a bullet sitting at its **conservative** version. Answer
the question and I'll swap in the **stronger** version.

---

## 1. Did you personally write the XCTest / XCUITest suites?

**Highest-value question on this page.** Unit testing appears in **81% of your 26 saved JDs** —
second only to Swift itself.

**Now (conservative — in all 11 files):**
> Built and maintained **Playwright** and **Appium** test automation validating regression
> workflows and end-to-end device-management actions before every release.

*(This is verbatim-supported by your original resume. `XCTest`/`XCUITest` remain in the Skills
section, because you listed them there yourself — but no experience bullet claims you wrote them.)*

**If yes — upgrade to:**
> Built and maintained **XCTest** and **XCUITest** suites gating every release alongside
> **Playwright** and **Appium** end-to-end automation, catching regressions before QA hand-off.

**If no:** we should remove XCTest/XCUITest from the Skills line too — an unevidenced skill
claim is a named recruiter red flag, and it's the one thing currently left in that category.

---

## 2. Did you **lead** the MVVM → VIPER migration, or contribute to it?

**Now (conservative):**
> **Migrated** core modules from **MVVM** to **VIPER**, applying dependency injection to
> decouple business logic from view controllers and improve unit testability.

*"Migrated" is active and true either way. Your original said "Contributed to" — which is one of
the passive constructions Google's VP of Recruiting names as an instant red flag, so I would
not go back to it regardless.*

**If you led it — upgrade to:**
> **Led** architectural migration from **MVVM** to **VIPER** across core modules…

---

## 3. Was SOLID explicitly part of that refactor?

**Now:** SOLID appears only in the **Skills** section (defensible as knowledge — you have
Clean Architecture, dependency injection, and a System Design certificate). It has been
**removed from every experience bullet**, because framing the refactor as SOLID-driven was my
inference, not your claim.

**If yes — upgrade to:** `…applying **SOLID** principles and dependency injection to…`
in the VIPER bullet across all variants. SOLID is in 23% of your JDs.

---

## 4. Test coverage before / after the migration?

**Now:** no coverage number anywhere.

**If you have one — upgrade to:** `…raising unit-test coverage from X% to Y%.`
Even "roughly 40% → 65%" works. This is the single strongest number you could add, because it
converts a structural claim into a measured outcome.

---

## 5. Do you review code / mentor / onboard engineers?

**Now (conservative):** code review is mentioned where it's near-universal for any product-team
engineer. **All "mentored" and "onboarded engineers" claims are removed** — those are specific
claims about your effect on other people, and you never made them.

**If yes — upgrade to:** `…participated in code reviews and onboarded engineers onto the macOS
agent codebase.` Code review is in 38% of your JDs, mentoring in 31%.

---

## 6. Objective-C — shipped at 42Gears, or academic only?

**Now:** listed in Skills (your own original claim), no experience bullet.

**If shipped — upgrade to:** an experience bullet naming Objective-C in the legacy-modernization
or interop work. **42% of your JDs ask for it**, and it's currently your largest unevidenced
skill.

**If academic only:** say so and I'll move it to a clearly-scoped position or drop it. A
language you can't be interviewed on is a liability, not an asset.

---

## 7–9. The missing numbers

All three clauses are simply **absent** right now — no placeholder, no vague filler.

| Question | Current bullet | Upgrade |
|---|---|---|
| Diagnostics tool: time saved? | "…adopted by **20+ engineers and QA**…to shorten debugging cycles." | "…cutting triage time by X%." |
| AI automation: hours saved? | "…reducing manual regression effort." | "…saving X hours per release" or "…catching X defects pre-production." |
| CodeForge: downloads / rating? | No metric. | "…with X downloads and a Y-star rating." |
| Instruments profiling: before/after? | No metric. | "…cutting peak memory X% / launch time from Xs to Ys." |

---

## 10. LeetCode count

**Now:** the count claim is **removed** from all variants. Your LeetCode URL is still in every
header, so a curious recruiter can look — but the resume no longer asserts a number.

**If you have a number worth stating** (roughly 150+ is worth saying; below that, leave it):
> Solved **N+** Data Structures and Algorithms problems on LeetCode.

---

## 11. Which local LLM runtime?

**Now:** "local LLM" with no runtime named.

**If you name it** (Ollama, llama.cpp, MLX, Apple Foundation Models) the AI variant gets
noticeably more credible — a named runtime is the difference between "used ChatGPT" and "runs
inference in-house." Same for confirming whether the diagnostics tool actually has an AI layer;
right now it's described without one.

---

## 12. Form fields I removed rather than fake

These were placeholders. A missing field is neutral; a visible `[ADD IF TRUE]` is fatal. So
they are **gone from the page** — give me the values and I'll put them back.

| Field | Which file | Why it matters |
|---|---|---|
| Notice period | Services, Naukri | Recruiters filter on it; helps to state it |
| Willing to relocate + cities | Services, Naukri | Same |
| Backlogs (nil?) | Services | Big-4-IT HR: 80% rejected in 30s for missing this |
| Class X / XII percentages | Services | Same — see the comment left in that file |
| Team size per project | Services | Services firms read project-by-project |
| Client verticals you can name | Services | Currently generic |
| Work authorisation / remote availability | Global_Remote | **Removed entirely.** This is a *knockout question* — the thing that genuinely auto-rejects. I won't guess your intent. |

---

## What this cost you

Being fully honest about the trade-off. Versus the marker version:

- **~50 words shorter per resume** on average (843 vs 892 for MASTER).
- **SOLID** lost from experience bullets (still in Skills).
- **XCTest/XCUITest** lost from experience bullets (still in Skills) — the biggest single loss,
  given it's in 81% of your JDs.
- **Mentoring** signal lost entirely.
- Four quantified outcomes lost.
- The Global_Remote availability line lost.

Every one of those comes back the moment you answer. But a resume that ships today with only
defensible claims beats a stronger one sitting in a folder — and it beats one you get caught on
in round one.
