# Start here — Sachin's resume system

Five resumes, one content bank, and a per-application routine. Read this page, answer the
12 questions at the bottom, then you're operational.

---

## Which resume do I send?

| File | Send it when the JD says… | Example companies from your saved JDs |
|---|---|---|
| **`Sachin_Resume_MASTER.tex`** | Anything iOS **and** macOS, or you're unsure. This is your default. | 42Gears-tier, Jamf, Kandji, generalist iOS roles |
| `Sachin_Resume_iOS_Product.tex` | "Consumer app", "user-facing", SwiftUI/UIKit, MVVM, REST, App Store, no macOS | Meesho, Zeta, Practo, eBay, StockGro, Speechify, Delta, Dexcom, Warner Bros., Vymo, TRDFIN, Jio |
| `Sachin_Resume_SDE2_Architecture.tex` | SOLID, Clean Architecture, TDD, unit testing, code quality, reusable components, mentoring | ProMobi/Scalefusion, HARMAN, AiDash, Capgemini, Movius, Qualitest, Virtusa |
| `Sachin_Resume_AI_Mobile.tex` | "AI-native", GenAI, AI tooling, automation, developer experience | Intuit, AI-forward startups, DX/tooling teams |
| `Sachin_Resume_Security_Endpoint.tex` | MDM, UEM, endpoint, device management, security, VPN/proxy, system agents | ProMobi/Scalefusion, Jamf, Kandji, Addigy, Hexnode, HARMAN (bonus skills), mac agent teams |
| `Sachin_Resume_OnePage.tex` | The posting says "1 page", or it's a referral / cold outreach / career fair | Any |

**Rule of thumb:** if two fit, pick the one matching the *job title in the posting*, because
your headline needs to echo that title. If none fit cleanly, start from MASTER and swap
bullets in from `03_CONTENT_BANK.md`.

---

## The other files

- **`01_ATS_PLAYBOOK.md`** — the full review of your old resume (scores, findings, change
  log) plus how ATS and AI screening actually work in 2026, and the rules worth following.
  Read Part 1 first; it reframes the goal honestly.
- **`02_SKILLS_MARKET_MAP.md`** — every skill ranked by how often it appeared across your 26
  saved JDs, your status on each, and the five gaps worth closing.
- **`03_CONTENT_BANK.md`** — every bullet you own, tagged by theme, so you can assemble a
  custom resume for any JD in ten minutes without rewriting from scratch.
- **`04_TAILORING_CHECKLIST.md`** — the per-application routine. This is the part that
  actually doubles your interview rate.

---

## How to build the PDFs

**You have no LaTeX toolchain on this machine** — I checked (`pdflatex`, `xelatex`,
`tectonic`, `latexmk` all absent), so I could not compile and visually verify these. Two
options:

1. **Overleaf (what you're almost certainly already using).** Upload the `.tex`, compile with
   pdfLaTeX. All five files are self-contained — no shared class file, no `\input`s.
2. **Local install:** `brew install --cask basictex`, then
   `sudo tlmgr install sourcesanspro enumitem titlesec` and compile with
   `pdflatex Sachin_Resume_MASTER.tex`. Tell me if you want this set up and I'll do it.

**After the first compile, check page count.** MASTER, iOS Product, SDE2, AI and Security are
built for **2 pages**. `OnePage` must stay at exactly 1 — if it spills, delete the two
lowest-value bullets rather than shrinking the font.

**Export filename:** `Sachin_Kumar_iOS_Engineer.pdf`, or
`Sachin_Kumar_iOS_Engineer_Meesho.pdf` per application. Do not ship a file called
`Sachin_ATS_Resume.pdf` — it announces that you optimised for the robot.

---

## Answer these 12 questions and I'll finalise every file

Every one of these corresponds to a `[CONFIRM]` or `[ADD IF TRUE: …]` marker sitting in the
`.tex` files right now. I did **not** invent numbers — that is the one thing that gets a
resume killed in a technical interview. **Search the files for `CONFIRM` and `ADD IF TRUE`
before sending anything; nothing with a marker should go out.**

**Testing (this is the most important block — unit testing is in 81% of your JDs)**
1. Did you personally write **XCTest / XCUITest** suites at 42Gears, or was that another
   team? If yes, roughly how many tests, and did you gate CI on them?
2. Do you know the test **coverage** before and after the VIPER migration? Even
   "roughly 40% → 65%" is enough.

**Architecture**
3. Did you **lead** the MVVM → VIPER migration, or contribute to it? Your old resume said
   "Contributed to" — I wrote "Led" in most variants. Which is true?
4. Was **SOLID** explicitly part of how you framed that refactor, or is that my inference?

**Quantification — pick whichever you can defend**
5. Diagnostics utility: how much time did it save per debugging cycle? Any % or hours?
6. AI release automation: hours saved per release, or defects caught before production?
7. CodeForge: downloads, rating, or active users?
8. LeetCode: how many problems solved? (It's linked with no number, which reads as low.)
9. Instruments profiling: any concrete before/after (memory, launch time, frame rate)?

**Skills evidence**
10. **Objective-C** — did you ship Objective-C at 42Gears, or is it academic? If it's only
    academic, it should move or come off; 42% of your JDs ask for it, so if it's real we need
    a bullet for it.
11. Which **local LLM runtime** do you use — Ollama, llama.cpp, MLX, Apple Foundation Models?
    Naming it makes the AI variant far more credible.
12. Did you **mentor, onboard, or review code** for other engineers? 38% of JDs ask for code
    review and 31% for mentoring, and your resume was silent on both.

**Also worth confirming:** your LinkedIn title should match your resume headline. AI screening
now cross-validates the two, and a mismatch is a scored negative.

---

## What I changed at a glance

Your old resume was not badly built — Enhancv confirmed a **100% ATS parse rate**, so the
LaTeX was never the problem. The problems were:

1. **No job title under your name.** Costs one line; worth 10.6× more interview invitations.
2. **17 bullets in one role**, so your 35%/40%/50%/10,000+ numbers were never reached in the
   6-second scan.
3. **Skills claimed with no evidence** — XCTest, XCUITest, Instruments, Objective-C, REST
   APIs, TDD all sat in the skills list with nothing backing them. This is a named recruiter
   red flag and LLM screeners now flag it explicitly.
4. **`INTERNSHIP` as a separate section**, which hid your promotion and split one continuous
   tenure into what looks like two employers.
5. **CodeForge undersold.** A shipped App Store app you own solo is rare at 3 years and was
   framed as a feature list.
6. **Links displayed as words**, so the URLs were invisible to copy-paste and some parsers.
7. **One resume for every application**, when tailoring is measured at 4.23% vs 2.07%
   interview rate.

All seven are fixed. The remaining work is yours: answer the 12 questions, then run
`04_TAILORING_CHECKLIST.md` on every application.
