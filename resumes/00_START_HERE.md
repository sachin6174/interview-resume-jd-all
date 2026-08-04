# Start here — Sachin's resume system

**11 resumes, 1 research report, 5 strategy docs.** Read this page, answer the 12 questions
at the bottom, then you're operational.

---

## Which resume do I send?

### Tier 1 — your defaults

| File | Send when the JD says… | Companies from your saved JDs |
|---|---|---|
| **`Sachin_Resume_MASTER.tex`** ⭐ | Anything iOS **and** macOS, or you're unsure. **Your default.** | 42Gears-tier, Jamf, Kandji, generalist iOS |
| `Sachin_Resume_iOS_Product.tex` | Consumer app, user-facing, SwiftUI/UIKit, MVVM, REST, App Store | Meesho, Zeta, Practo, eBay, StockGro, Speechify, Delta, Dexcom, Warner Bros., Vymo, TRDFIN, Jio |
| `Sachin_Resume_SDE2_Architecture.tex` | SOLID, Clean Architecture, TDD, unit testing, code quality, reusable components | ProMobi/Scalefusion, HARMAN, AiDash, Capgemini, Movius, Qualitest, Virtusa |

### Tier 2 — targeted by company *type*

| File | Send when… | Examples |
|---|---|---|
| `Sachin_Resume_BigTech.tex` 🆕 | Product giant with a structured 30–60s screen. Opens with a **Key Achievements** block, X-Y-Z bullets, scale + system-design vocabulary. | Google, Apple, Amazon, Microsoft, Meta, Uber, Adobe, eBay, Intuit, Flipkart, Swiggy, Razorpay, PhonePe |
| `Sachin_Resume_Startup.tex` 🆕 | JD says "ownership", "0 to 1", "wear many hats", "ship fast", "ambiguity". Leads with **What I've Shipped**. | StockGro, Speechify, Bhanzu, KoinBX, AiDash, seed–Series C |
| `Sachin_Resume_AI_Mobile.tex` | "AI-native", GenAI, AI tooling, automation, DX | Intuit, AI-forward startups, developer-tooling teams |
| `Sachin_Resume_Security_Endpoint.tex` | MDM, UEM, endpoint, security, VPN/proxy, system agents | Scalefusion, Jamf, Kandji, Addigy, Hexnode, mac agent teams |
| `Sachin_Resume_Services_Consultancy.tex` 🆕 | Indian IT services. **Project-wise format** with stack, role, team size, client domain — how they actually read resumes. | TCS, Infosys, Wipro, Cognizant, Capgemini, Accenture, LTIMindtree, Tech Mahindra, HCL, Virtusa, Qualitest |
| `Sachin_Resume_Global_Remote.tex` 🆕 | Reviewer is **not in India**. Adds company context, work-auth + timezone line. | US/EU companies, remote-first, Okta, Speechify, AppsClicks |

### Tier 3 — format-driven

| File | Send when… |
|---|---|
| `Sachin_Resume_Naukri_Portal.tex` 🆕 | Naukri, Indeed, Shine, Monster, LinkedIn Easy Apply, or any consultant who will re-parse your resume. **Zero tables anywhere** — cannot be misparsed. Plainest-looking, safest. |
| `Sachin_Resume_OnePage.tex` | ⚠️ **Situational only — see Correction 1 below.** Referrals, career fairs, postings that explicitly say "1 page". |

**Rule of thumb:** if two fit, pick the one matching the *job title in the posting* — your
headline needs to echo that title. If none fit cleanly, start from MASTER and swap bullets
from `03_CONTENT_BANK.md`.

---

## The documents

| File | What it is |
|---|---|
| **`05_REJECTION_RESEARCH.md`** 🆕 | **Read this one.** Deep research on why resumes get rejected vs accepted — 2026 recruiter surveys, a 10,000-resume ATS scan study, the Ladders eye-tracking study, Google's VP of Recruiting on red flags, India-specific hiring. Fully sourced. |
| `05_REJECTION_RESEARCH.tex` 🆕 | Same report as a compilable **PDF** (pdfLaTeX / Overleaf), with table of contents. |
| `01_ATS_PLAYBOOK.md` | Full review of your original resume — scores, findings, change log — plus how ATS and AI screening work. |
| `02_SKILLS_MARKET_MAP.md` | Every skill ranked by frequency across your 26 saved JDs, your status on each, and the 5 gaps worth closing. |
| `03_CONTENT_BANK.md` | Every bullet you own, tagged, so you can assemble a custom resume in 10 minutes. |
| `04_TAILORING_CHECKLIST.md` | The per-application routine. This is the part that doubles your interview rate. |

---

## ❗ Two corrections to what I told you earlier

The second research pass overturned two things. Both are in
`05_REJECTION_RESEARCH.md` Part 3 with full sourcing.

**Correction 1 — two pages now beat one page.** I built `OnePage` on the old "one page under
8 years" rule. The 2026 data reverses it: **68.6% of recruiters now prefer two-page resumes**
(only 21.6% prefer one page), two-page resumes are preferred **2.3×** and get **more than 2×
the reading time**, and mid-career (3+ years) is explicitly called out as needing two pages.
→ **`OnePage` is no longer your default.** Use a Tier-1 or Tier-2 variant.

**Correction 2 — your 2022 certifications are now a liability.** Google's VP of Recruiting
names *"no certifications within the last three years"* as a red flag meaning you stopped
growing. Yours are **four years old**. Fix: ship the **Swift 6 strict-concurrency migration on
CodeForge** and write it up publicly. That single move closes your #2 skills gap, gives you a
2026-dated credential, and gives you an ambiguity story. Best-value item on this whole list.

---

## What the research says you should actually do

Ranked by measured return, highest first. Full data in `05_REJECTION_RESEARCH.md`.

1. **Get referrals.** Referral hire rate **30%** vs job-board **7%** — referred candidates are
   ~15× more likely to be hired. This beats all 11 resumes combined. For each target company,
   find one 42Gears alum or 2nd-degree LinkedIn connection.
2. **Tailor every application.** Interview rate 4.23% vs 2.07%; callbacks 3×; 84% of recruiters
   reject impersonal applications. 10 minutes, per `04_TAILORING_CHECKLIST.md`.
3. **Get a 2026-dated credential** (Correction 2 above).
4. **Put numbers in the top third.** Recruiters spend 80% of attention there; measurable results
   above the fold make you **40% more likely** to be shortlisted. The BigTech, Startup and
   Global variants already do this.
5. **Kill passive verbs.** "Contributed to", "supported", "assisted" — named as an instant red
   flag by Google's VP. Answer question #3 below so I can lock in "Led" honestly.
6. **Apply within 72 hours** of a posting going live. Engineering roles see 2,000+ applications
   in week one.

---

## Build the PDFs

**No LaTeX toolchain on this Mac** — I checked (`pdflatex`, `xelatex`, `tectonic`, `latexmk`
all absent), so **I have not seen any of these rendered.** I validated brace balance,
environment matching, command definitions and special-character escaping across all 12 `.tex`
files — all clean — but visual verification is on you (or say the word and I'll install
BasicTeX).

- **Overleaf:** upload the `.tex`, compile with pdfLaTeX. Every file is self-contained.
- **Local:** `brew install --cask basictex`, then
  `sudo tlmgr install sourcesanspro enumitem titlesec geometry`, then `pdflatex <file>.tex`.

**Check page count after the first compile.** Tier 1 and 2 are built for **2 pages**;
`Services_Consultancy` may run to 3 (correct for that audience); `Naukri_Portal` 2–3;
`OnePage` must stay at exactly 1.

**Export filename:** `Sachin_Kumar_iOS_Engineer_<Company>.pdf`. Never ship
`Sachin_ATS_Resume.pdf` — it announces you optimised for the robot.

---

## Answer these 12 questions and I'll finalise every file

There are **66 `[CONFIRM]` / `[ADD IF TRUE]` markers** across the 11 resumes. I did **not**
invent a single number. **Nothing with a marker should be sent** —
`grep -rn "CONFIRM\|ADD IF TRUE" *.tex` before every send.

**Testing — most important block (unit testing is in 81% of your JDs)**
1. Did you personally write **XCTest / XCUITest** suites at 42Gears? Roughly how many, and did
   CI gate on them?
2. Test **coverage** before and after the VIPER migration? "Roughly 40% → 65%" is enough.

**Architecture**
3. Did you **lead** the MVVM → VIPER migration or contribute? Your original said "Contributed
   to" — the exact passive phrasing Google's VP flags. I wrote "Led" in most variants.
4. Was **SOLID** explicitly part of how you framed that refactor, or is that my inference?

**Numbers — whichever you can defend**
5. Diagnostics utility: time saved per debugging cycle?
6. AI release automation: hours saved per release, or defects caught pre-production?
7. CodeForge: downloads, rating, or active users?
8. LeetCode: how many problems solved?
9. Instruments profiling: any before/after (memory, launch time, frame rate)?

**Skills evidence**
10. **Objective-C** — shipped at 42Gears, or academic only? 42% of your JDs ask for it.
11. Which **local LLM runtime** — Ollama, llama.cpp, MLX, Apple Foundation Models?
12. Did you **mentor, onboard, or review code**? 38% of JDs want code review, 31% mentoring.

**Extra fields the new variants need**
- **Notice period** and **relocation** preference (Services + Naukri variants).
- **Backlogs: nil?** and **10th/12th percentages** (Services variant — a Big-4-IT HR says 80%
  of resumes get rejected in 30 seconds for missing exactly these).
- **Work authorisation / relocation intent** (Global_Remote variant — this is a *knockout
  question*, the thing that genuinely auto-rejects. Confirm that line before sending).
- Which **client verticals** you can legitimately name (Services variant).
- **Team size** on your projects (Services variant).

**Also:** make your LinkedIn headline match your resume headline. AI screening cross-validates
resume against LinkedIn and a mismatch is a scored negative.

---

## The honest bottom line

You said you want a resume that recruiters can never ignore. What the data supports:

- A great resume takes you from ~**2%** to **4–5%** response on cold applications.
- A **referral** takes you to **30%**.
- Nothing takes you to 100%. With 2,000 applicants per role and a **53.3% silent-rejection
  rate in software engineering**, some strong candidates are simply never opened. That is
  arithmetic, not a flaw in your resume.

What these 11 resumes *do* guarantee: when a human or an LLM opens yours, there is no reason
to put it down. No parsing failure, no unevidenced claim, no passive verb, no buried metric,
no missing title. That is the whole controllable surface — everything past it is referrals,
timing, and volume, and the research tells you exactly where each of those sits.
