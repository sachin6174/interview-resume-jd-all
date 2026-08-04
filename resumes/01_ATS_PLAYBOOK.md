# ATS Playbook + Resume Review Report — Sachin Kumar

Produced with the [resume-optimizer](https://github.com/Sumukhmg/resume-optimizer-claude-skill)
Claude skill (installed to `~/.claude/skills/resume-optimizer/`), its 10-step workflow, and
2026 ATS/AI-screening research. Sources are listed at the end.

**Target role (inferred):** iOS & macOS Software Engineer, 3–6 year band
**Overall signal:** Strong SDE-II iOS/macOS candidate with rare system-level depth, a shipped
App Store app, and defensible metrics — previously buried under structural problems.

---

## Part 1 — The honest framing (read this first)

You asked for a resume "no company can reject." That resume does not exist, and chasing it
leads people to bad advice. Here is what the 2026 data actually says:

- **ATS software does not auto-reject you.** [92% of recruiters](https://www.hr.com/en/app/blog/2026/04/ats-rejection-myth-debunked-92-of-recruiters-confi_mntajhyq.html)
  rely primarily on human review; only ~8% enable broad content-based auto-rejection. The
  "ATS black hole" is mostly a myth spread on LinkedIn and TikTok.
- **What actually rejects you is a knockout question** — work authorisation, location,
  minimum years — answered in the *application form*, not parsed from your resume. No resume
  edit beats those.
- **What actually buries you is ranking + volume.** Postings get 250–2,000 applicants and
  reviewing stops before the pile does. You lose by being *unranked*, not by being rejected.
- **Tailoring roughly doubles your interview rate** — measured at 4.23% vs 2.07%. This is the
  single highest-leverage action available to you, and it is why this folder has five resumes
  instead of one.
- **Keyword stuffing now actively hurts.** Screening moved from token matching to semantic
  LLM analysis; stuffed resumes get flagged as low-quality, and 62% of employers reject
  obviously un-personalised AI-generated applications.

So the realistic goal is: **be clearly parseable, be obviously relevant in 6 seconds, be
specific enough that an LLM screener can verify your claims, and be tailored.** That is what
these files do. Anyone promising more than that is selling something.

---

## Part 2 — Review report on your original `Sachin_ATS_Resume.tex`

### 2.1 Scores (0–5, per `resources/scoring-rubric.md`)

| Section | Score | Reason |
|---|---:|---|
| Header / contact | 3 | All the right links, but display text hid every URL and there was **no job-title headline** under your name. |
| Summary | 3 | Present and keyword-dense, but read as a tool list with no scope metric and no differentiator. |
| Experience | 3 | Real, quantified work — capped at 3 because 17 undifferentiated bullets in one role bury the strong ones, and several core skills had no supporting bullet. |
| Education | 4 | Complete and correctly formatted. Nothing to fix. |
| Skills | 2 | Several claims (XCTest, XCUITest, Instruments, Objective-C, REST APIs, TDD) had **zero evidence anywhere else in the resume** — a listed recruiter red flag. |
| Projects | 3 | Good links, but CodeForge — your strongest independent signal — was described as a feature list with no ownership or outcome framing. `SureMDM Agent` duplicated your job. |
| Certifications / Achievements | 3 | Fine, but a single achievement with the LeetCode profile linked and no count. |

**Overall: 3/5** — capped at 3 by the rubric's cross-cutting rule ("skills section
disconnected from experience bullets" + length wrong for the content density).

This is consistent with your own tool results: Resume Worded **65/100**, MyPerfectResume
**68 (Fair)**, Enhancv **83/100**. Note that Enhancv confirmed a **100% ATS parse rate** — so
your problem was never machine-readability. It was content structure and evidence.

### 2.2 Formatting findings

- **17 bullets under a single role.** Recruiters spend 6–10 seconds on the first pass; 17
  bullets guarantee your 35%/40%/50% wins are not among the ones read.
- **Extreme bold density.** Roughly every third word was `\textbf{}`. When everything is
  emphasised, nothing is. (This does *not* hurt ATS — bold is stripped during extraction —
  but it badly hurts the human and the LLM reading the rendered page.)
- **`INTERNSHIP` as its own top-level section.** Non-standard heading; ATS section
  dictionaries recognise `Experience` / `Work Experience` / `Education` / `Skills` /
  `Projects`. It also visually split one continuous 42Gears tenure into two employers and
  hid your intern → full-time promotion.
- **`SureMDM Agent for macOS` in Projects duplicated the job above it.** "Pages that exist
  only to repeat page 1" is on the recruiter red-flag list.
- **No job-title headline.** Resumes containing the target job title in the headline get
  [10.6× more interview invitations](https://www.jobscan.co/blog/ats-resume/). This was the
  cheapest available win and it was missing.

### 2.3 ATS findings (ranked)

- **HIGH — none.** Your template is genuinely ATS-safe: single column, standard headings,
  no text boxes, no icons standing in for words, contact info in the body, `\pdfgentounicode=1`
  set. Enhancv's 100% parse rate confirms it. Ignore anyone who tells you LaTeX resumes
  don't parse.
- **MEDIUM — hyperlink display text hid the URLs.** `\href{...}{LinkedIn}` extracts as the
  bare word "LinkedIn". A recruiter who copies your resume text gets nothing; some parsers
  never read the underlying `href`. **Fixed:** every link now displays the literal URL
  (`linkedin.com/in/sachinkumar6174`) and remains clickable.
- **MEDIUM — non-standard `INTERNSHIP` heading.** Fixed by nesting it as a role under one
  42Gears company block.
- **LOW — `\scshape` small-caps on your name.** Small-caps glyphs can extract oddly. Your
  build handled it, but it bought nothing. **Fixed:** plain bold.
- **LOW — `tabular*` inside `\resumeSubheading`.** Technically a table, which the strict rule
  set forbids. In practice this single-row, two-cell construct is the industry-standard
  Jake's-Résumé pattern and parses as `Company … Date`. Kept, because your own 100% parse
  rate is stronger evidence than the general rule.
- **LOW — filename.** `Sachin_ATS_Resume.pdf` announces you optimised for ATS. Export as
  `Sachin_Kumar_iOS_Engineer.pdf` — or `Sachin_Kumar_iOS_Engineer_<Company>.pdf`.

### 2.4 Section-level weaknesses

**Experience**
- Only 4 of 17 bullets carried a metric. The rubric wants a quantified outcome in **at least
  every other** bullet for the current role.
- Several bullets were pure capability statements with no outcome ("Built device monitoring
  modules for…", "Implemented Time Fence policy enforcement modules for…").
- `Utilized` (a flagged buzzword) and `Contributed to architectural refactoring` — the latter
  understates you if you led it, and the resume gives no way to tell.
- No mention of **code review**, **collaboration**, **mentoring**, or **Agile** in the
  full-time role, despite these appearing in 31–85% of your saved JDs.

**Skills**
- `XCTest, XCUITest, TDD, Instruments, Objective-C, REST APIs, Firebase` were all claimed
  with no supporting bullet. Fix by evidence, not deletion — see the Questions section.
- Missing the literal search terms `GCD`, `DispatchQueue`, `multithreading`, `memory
  management`, `ARC`, `SOLID`, `Auto Layout`, `App Lifecycle`, `code review`, `Agile`,
  `unit testing`, `offline storage` — all of which recruiters type into ATS search bars.

**Projects**
- CodeForge was framed as features. It is actually your proof of **solo end-to-end release
  ownership** — architecture, tests, TestFlight, App Store Connect, App Review. That framing
  is worth far more.

### 2.5 Gap analysis

**Present and strong:** Swift, SwiftUI, UIKit, Core Data, SwiftData, Swift Concurrency,
NetworkExtension, XPC, LaunchDaemon, CryptoKit, Core Location, VIPER, MVVM, GitLab CI/CD,
TestFlight, App Store Connect, code signing, notarization, Playwright, Appium, SonarQube, Jira.

**Missing but fully supported by your experience** (surfaced by rewording, not invention):
`SOLID` · `GCD` / `DispatchQueue` / `multithreading` · `memory management` / `ARC` ·
`Xcode Instruments` (Time Profiler, Leaks, Allocations) · `REST APIs` / `URLSession` /
`JSON` / `Codable` · `unit testing` / `XCTest` / `XCUITest` · `code review` ·
`Agile` / `Scrum` in the full-time role · `offline storage` · `Auto Layout` ·
`App Lifecycle` · `Human Interface Guidelines` · `design patterns` (Delegation, Observer,
Singleton) · `App Store submission` · `reusable components` / `modularization`.

**Genuine gaps — do not fabricate, go learn:** Combine · Swift 6 strict concurrency /
`Sendable` · Push Notifications / APNs · Accessibility / VoiceOver · GraphQL ·
Flutter / React Native / KMM. Ranked with ROI in `02_SKILLS_MARKET_MAP.md`.

### 2.6 Change log

1. Added a **job-title headline** under your name — the highest-ROI single change.
2. Replaced link display text with **literal URLs**, still hyperlinked.
3. Merged `INTERNSHIP` into `WORK EXPERIENCE` as a nested role under one 42Gears block,
   making your intern → full-time **promotion** visible.
4. Rewrote the summary to lead with title + years + `10,000+ devices` scope + the two things
   that make you unusual (App Store ownership, AI automation).
5. Cut 17 bullets to 10–13 per variant, ordered by impact, with metrics front-loaded.
6. Surfaced 16 previously-unevidenced keywords by rewording real work (see 2.5).
7. Reframed **CodeForge** from a feature list to solo end-to-end release ownership.
8. Removed `SureMDM Agent` from Projects on 4 of 5 variants (it duplicated the job); kept it
   only on the Security/Endpoint variant where the product name is itself the credential.
9. Reduced bold density from ~every third word to 1–3 terms per bullet.
10. Merged Certifications + Achievements, added the LeetCode count placeholder.
11. Built **5 targeted variants** mapped to the archetypes in your own saved JDs.

---

## Part 3 — The ATS rules that actually matter in 2026

### Hard rules (break these and parsing fails)
1. Single column. No sidebars — a sidebar is a two-column layout in disguise.
2. No tables for layout, no text boxes, no images of text, no icons replacing words.
3. Contact info in the **body**, never a header/footer region.
4. Standard section headings only: `Experience` / `Work Experience`, `Education`, `Skills`,
   `Projects`, `Certifications`. No "My Journey".
5. Reverse-chronological order — it holds a ~97% extraction accuracy across the six major
   ATS platforms, the highest of any format.

### Soft rules (these degrade quality)
6. One date format throughout: `Month YYYY – Month YYYY`. Never `5/23 - 8/24` or `Spring '23`.
   Avoid em-dashes *inside* dates.
7. Standard bullet glyphs (`•` or `-`). No `→`, `✓`, `★`, emoji.
8. Text-selectable PDF with embedded fonts. Modern Workday/Greenhouse/Lever parse clean PDFs
   as well as DOCX — **document complexity matters far more than file format.** Send DOCX
   only when the posting asks for it.
9. Never use white text, 1pt keyword blocks, or hidden skill lists. Workday, Greenhouse and
   Lever all flag low-opacity text, and any recruiter who hits ⌘A sees it instantly.
10. Filename: `Sachin_Kumar_iOS_Engineer.pdf`. No spaces, no `v3_final_FINAL`.

### Content rules (this is where you win or lose)
11. **Put the exact job title from the posting in your headline.** 10.6× more interview
    invitations. Costs one line.
12. **Aim for a 75–80% Jobscan match rate**, no higher. Above ~85% you are stuffing.
13. Every skill in the skills section must be **evidenced** by an experience or project
    bullet. LLM screeners specifically flag skills claimed without experiential context.
14. Quantified outcome in **at least every other** bullet of your current role.
15. Bullet = strong verb + scope + outcome, max 2 lines. Never "Responsible for…",
    "Worked on…", "Helped with…".
16. Keep your resume and your **LinkedIn consistent** — AI screening now does cross-source
    validation between them. Mismatched titles or dates are a scored negative.

### The 6-second scan your resume must survive
Name and current title visible → most recent company, title, dates in that order → no
unexplained gaps → the 3–5 tools the role wants surfaced immediately → one number above the
fold → correct length. All six, in six seconds, or it fails regardless of what page 2 says.

---

## Part 4 — Verification loop before you send anything

1. **Compile and select-all the PDF.** Copy, paste into a plain text editor. If the reading
   order is wrong or anything is missing, that is exactly what the ATS sees.
2. **Run it through the free checkers you already use:**
   [Enhancv](https://app.enhancv.com/) (best of the three — it gave you the real 83/100 and
   the true parse rate), [Resume Worded](https://resumeworded.com/),
   [MyPerfectResume](https://www.myperfectresume.com/). Add [Jobscan](https://www.jobscan.co/)
   for per-JD match-rate scoring, which the others don't do.
3. **Enhancv flagged 10 spelling/grammar issues** on your last version. Most are false
   positives on `macOS`, `SwiftUI`, `VIPER`, `XPC`, `LaunchDaemon`, `daemonized` — dictionary
   gaps, not errors. Re-run after these edits and only fix genuine ones.
4. **The LLM screener test:** paste the resume plus the JD into a fresh chat and ask
   *"You are a hiring manager for this role. Score this candidate 1–10 and list what's
   missing."* This mirrors exactly what 82% of companies now run.
5. **The 6-second test:** show it to someone for six seconds, take it away, ask what role you
   are and what you're best at. If they can't answer, the top third needs work.

---

## Sources

**ATS mechanics and 2026 screening**
- [HR.com — 92% of recruiters confirm ATS does not auto-reject](https://www.hr.com/en/app/blog/2026/04/ats-rejection-myth-debunked-92-of-recruiters-confi_mntajhyq.html)
- [The Interview Guys — Stop trying to beat the ATS; your real problem is the step after it](https://blog.theinterviewguys.com/stop-trying-to-beat-the-ats-your-real-problem-is-the-step-after-it/)
- [The Interview Guys — How AI now rejects candidates before a human opens your resume](https://blog.theinterviewguys.com/how-ai-now-rejects-millions-of-candidates-before-a-human-opens-their-resume/)
- [The Interview Guys — ATS resume optimization: the ultimate 2026 guide](https://blog.theinterviewguys.com/ats-resume-optimization/)
- [Jobscan — How to write an ATS resume in 2026](https://www.jobscan.co/blog/ats-resume/)
- [Jobscan — How AI resume screening works in 2026](https://www.jobscan.co/blog/blog-ai-resume-screening/)
- [Jobscan — What match rate should I aim for](https://www.jobscan.co/blog/what-jobscan-match-rate-should-i-aim-for/)
- [Jobscan — 500+ resume keywords for the ATS (2026)](https://www.jobscan.co/blog/top-resume-keywords-boost-resume/)
- [ShashiWorks — How Workday, Greenhouse and Taleo read your resume (2026)](https://www.shashiworks.com/ats-workday-greenhouse-taleo.html)
- [Resume Optimizer Pro — Greenhouse ATS resume guide](https://resumeoptimizerpro.com/blog/greenhouse-ats-resume-guide)
- [ResumeAdapter — ATS resume formatting rules 2026](https://www.resumeadapter.com/blog/ats-resume-formatting-rules-2026)
- [ATS Verification — AI resume screening in 2026](https://atsverification.com/blog/ai-resume-screening-2026/)
- [TieTalent — The truth about ATS in 2026: 5 resume myths](https://tietalent.com/en/blog/249/the-truth-about-ats-in-2026-5-resume-myths-that-hurt-your-job-search)

**iOS-specific**
- [KORE1 — How to hire Swift iOS developers in 2026](https://www.kore1.com/hire-swift-ios-developers-2026/)
- [Sysmatch — iOS development skills that make the difference in 2026](https://www.sysmatch.com/new/ios-development-skills/)
- [Hacking with Swift — Complete concurrency in Swift 6.0](https://www.hackingwithswift.com/swift/6.0/concurrency)
- [SwiftLee — Approachable concurrency in Swift 6.2](https://www.avanderlee.com/concurrency/approachable-concurrency-in-swift-6-2-a-clear-guide/)
- [Resume Worded — iOS developer resume examples 2026](https://resumeworded.com/ios-developer-resume-example)
- [Resumly — iOS developer resume mistakes and how to fix them](https://www.resumly.ai/common-resume-mistakes-for-ios-developer)

**Methodology**
- [resume-optimizer Claude skill](https://github.com/Sumukhmg/resume-optimizer-claude-skill) — installed locally
- [ResumeSkills — career-ops Claude skill collection](https://github.com/Paramchoudhary/ResumeSkills)
