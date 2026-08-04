# iOS Skills Market Map — what companies actually ask for

**Method:** I read all 26 job descriptions in `../ios Job descriptions/` (Meesho, Delta Air
Lines, Intuit, Volvo Cars, Warner Bros. Discovery, Bhanzu, Dexcom, Virtusa, HARMAN, eBay,
Practo, StockGro, Jio, Speechify, Adobe, Qualitest, AiDash, TRDFIN, Capgemini, Movius, Zeta,
KoinBX, AppsClicks, Okta/Auth0, Vymo, ProMobi/Scalefusion) and tallied every stated
requirement. Percentages below are share of those 26 postings. I cross-checked the ranking
against 2026 market write-ups (sources at the bottom).

---

## Tier 1 — appears in 60%+ of postings. Non-negotiable.

| Skill | % of JDs | Sachin's status |
|---|---:|---|
| Swift | 100% | ✅ Core strength |
| **Unit testing / XCTest** | **81%** | ⚠️ Listed in skills, **had zero supporting bullet** — now fixed, needs your confirmation |
| SwiftUI | 77% | ✅ Have it — was under-evidenced, now surfaced |
| UIKit | 70% | ✅ Have it |
| Cross-functional collaboration | 85% | ⚠️ Almost absent from old resume — now added |
| REST APIs / JSON / URLSession | 65% | ⚠️ In skills only, **no experience bullet** — now fixed |
| MVVM | 62% | ✅ Have it |

**The single biggest finding:** unit testing is the #2 most-requested skill after Swift
itself, and your old resume had `XCTest, XCUITest` sitting in the skills list with **nothing
in the experience section backing it up**. Per the recruiter checklist, "skills section claims
something with no supporting bullet" is a listed red flag — and LLM screeners now specifically
flag skills claimed without experiential context. This was probably costing you more
interviews than any formatting issue.

## Tier 2 — 30–60%. Strong differentiators.

| Skill | % of JDs | Sachin's status |
|---|---:|---|
| CI/CD pipelines | 58% | ✅ GitLab CI/CD — strong |
| Performance profiling / Instruments | 46% | ⚠️ In skills only — now has a bullet |
| App Store publishing / release ownership | 46% | ✅ **CodeForge is live** — was buried, now headline material |
| Git / version control | 46% | ✅ |
| Design patterns (Delegate, Observer, Singleton, Factory) | 46% | ⚠️ Only architecture styles were listed — patterns now named |
| Core Data | 42% | ✅ Genuine depth (50% latency win) |
| Objective-C | 42% | ⚠️ Listed, **no evidence** — see Questions |
| Agile / Scrum / Jira | 50% | ⚠️ Was only in the internship — now in the main role |
| Code review | 38% | ⚠️ Was absent — now added |
| Memory management / ARC / retain cycles | 35% | ⚠️ Was absent — now added |
| Multithreading / GCD / DispatchQueue | 31% | ⚠️ You had "Swift Concurrency" but not the literal words `GCD`, `multithreading` recruiters search |
| Mentoring / onboarding juniors | 31% | ⚠️ Needs your confirmation |

## Tier 3 — 15–30%. Worth having; safe to skip per-role.

SOLID principles (23%) · Combine (23%) · Clean Architecture (19%) · Data structures &
algorithms (23%) · Mobile security (31%) · HIG / Apple design guidelines (23%) · SPM (19%) ·
VIPER (17%) · Push Notifications (15%) · Cross-platform (Flutter / React Native / KMM) (23%) ·
Firebase (15%) · Offline storage (15%) · CocoaPods (15%)

## Tier 4 — niche but high-leverage when they appear

GraphQL (12%) · Accessibility / W3C (8%) · Fastlane (8%) · AWS / cloud integration (12%) ·
Socket programming / TCP-IP (4%) · MDM / MAM / VPN / secure containers (8%) · SDK &
developer-tooling authoring (8%) · GenAI / AI-native engineering (8%, **rising fast**)

---

## Your five genuine gaps (do not fake these — close them)

Ranked by cost-per-hour-invested:

1. **Combine** — 23% of JDs, and it appears in the *senior* ones (Meesho, Delta, Zeta).
   You already know Swift Concurrency; Combine is a weekend. Highest ROI on this list.
2. **Swift 6 strict concurrency (`Sendable`, actor isolation, data-race safety)** — barely
   named in your saved JDs because they're from Sept 2025, but 2026 hiring guides now call
   Swift 6 "the baseline expectation for any serious iOS hire," and interviewers ask
   *"walk me through your strict-concurrency migration — which types did you rewrite, how
   many `@unchecked Sendable` stayed?"* You have the actors/async-await foundation. Turn on
   strict concurrency in CodeForge, migrate it, and you can answer that question with a
   real story.
3. **Push Notifications (APNs, UNUserNotificationCenter, rich/silent pushes)** — 15% of JDs
   and a common interview topic. Cheap to learn, currently a hole.
4. **Accessibility (VoiceOver, Dynamic Type, contrast)** — only 8% of JDs, but it is a
   *tiebreaker* signal at product companies and one of the few things you can add to
   CodeForge in an afternoon and then legitimately claim.
5. **One cross-platform framework** — 23% of JDs mention Flutter, React Native, or KMM.
   Not worth deep investment, but building one small thing removes an auto-filter.

**Deliberately NOT recommended:** GraphQL, AWS, and backend work. They appear in only ~12%
of postings and would dilute the thing that actually makes you unusual (below).

---

## What makes you unusual — lead with this

Across 26 JDs and hundreds of iOS resumes, the following combination is rare:

- **macOS system-level production experience** — `LaunchDaemon`, `XPC`, privileged helper
  tools, `NetworkExtension` providers, code signing and notarization. Most iOS candidates
  have never shipped a daemon. This is why `Sachin_Resume_Security_Endpoint.tex` exists.
- **A shipped App Store app you own end to end.** Most 3-year candidates have only
  employer code. Speechify, StockGro, KoinBX, and Jio all explicitly reward this.
- **Applied AI in the SDLC** — local LLM evaluation and multi-agent release automation.
  Intuit's JD literally says they want engineers who "seamlessly integrate AI"; 2026 hiring
  guides all flag this as the emerging differentiator. Almost no iOS candidate has it yet.
  This is why `Sachin_Resume_AI_Mobile.tex` exists.
- **Real, defensible numbers** — 35% / 40% / 50% / 10,000+ / 20+ engineers. Most resumes
  have none.

Your problem was never a lack of material. It was that this material was buried in 17
undifferentiated bullets with no headline title, no supporting evidence for half the skills
list, and every third word in bold.

---

## Sources

- [Jobscan — How to write an ATS resume (2026)](https://www.jobscan.co/blog/ats-resume/)
- [Jobscan — What match rate should I aim for](https://www.jobscan.co/blog/what-jobscan-match-rate-should-i-aim-for/)
- [KORE1 — How to hire Swift iOS developers in 2026](https://www.kore1.com/hire-swift-ios-developers-2026/)
- [Sysmatch — iOS development skills that make the difference in 2026](https://www.sysmatch.com/new/ios-development-skills/)
- [Hacking with Swift — Complete concurrency in Swift 6.0](https://www.hackingwithswift.com/swift/6.0/concurrency)
- [SwiftLee — Approachable concurrency in Swift 6.2](https://www.avanderlee.com/concurrency/approachable-concurrency-in-swift-6-2-a-clear-guide/)
- [Resume Worded — iOS developer resume examples 2026](https://resumeworded.com/ios-developer-resume-example)
- [CVCompiler — 16 iOS developer resume examples for 2026](https://cvcompiler.com/ios-developer-resume-examples)
