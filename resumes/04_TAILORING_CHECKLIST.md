# Per-application routine — 10 minutes, doubles your interview rate

Tailored applications convert at **4.23%** vs **2.07%** untailored. That is the single
highest-leverage thing on this list. Everything else is polish.

Ten minutes per application. If you can't spare ten minutes, apply to fewer jobs — 2026
screening penalises obvious mass-applying, and volume applying is measurably dead
(~5 interviews per 180 applications).

---

## The 10-minute pass

**1. Pick the variant (30s)** — table in `00_START_HERE.md`.

**2. Copy the exact job title into your headline (30s)**
The posting says "Software Development Engineer II - iOS"? Your headline says exactly that.
Resumes containing the posting's job title get **10.6× more interview invitations**. This is
the cheapest win available and most candidates skip it.

```latex
{\large Software Development Engineer II — iOS} \\
```

**3. Extract the JD's top 15 keywords (3 min)**
Paste the JD into [Jobscan](https://www.jobscan.co/) with your resume, or just read the
"Required Skills" list. Write down the 15 nouns that appear in the requirements.

**4. Gap-check against `03_CONTENT_BANK.md` (3 min)**
For each of the 15:
- **You have it and it's in the resume** → nothing to do.
- **You have it but it's not surfaced** → swap in the matching bullet from the content bank,
  or reword an existing bullet to use *the JD's exact noun*.
- **You don't have it** → leave it out. Do not add it. LLM screeners cross-check claimed
  skills against experiential context and flag unsupported claims.

**5. Reorder the top 3 bullets (2 min)**
Whatever the JD leads with, your first three bullets should answer. JD opens with
"performance optimization"? Lead with C4 and C2. JD opens with "unit testing and TDD"? Lead
with E1 and D1.

**6. Reorder the skills section (30s)**
Move the category the JD cares about most to the first line. Recruiters and hiring managers
decide in seconds whether your stack matches — put the answer in the first three lines.

**7. Check for markers (30s)** — `grep -n "CONFIRM\|ADD IF TRUE" yourfile.tex`
**Nothing with a marker ships.** Either fill it with a real number or delete the clause.

**8. Export and name (30s)** — `Sachin_Kumar_iOS_Engineer_<Company>.pdf`

---

## Match-rate targets

| Rate | Meaning |
|---|---|
| Below 60% | Wrong variant, or genuinely wrong role. Reconsider applying. |
| 60–74% | Do another tailoring pass. |
| **75–80%** | **Target zone.** Ship it. |
| Above 85% | You are stuffing. Screening is semantic now — stuffing is detected and scored as low quality. Pull back. |

---

## Before you hit submit

- [ ] Headline echoes the posting's job title verbatim.
- [ ] No `[CONFIRM]` or `[ADD IF TRUE]` markers remain anywhere in the file.
- [ ] Every skill in the skills section is backed by an experience or project bullet.
- [ ] At least every other bullet in the 42Gears role has a number.
- [ ] Page count is right (1 for `OnePage`, 2 for everything else).
- [ ] Selected all text in the PDF, pasted into a plain editor, and it reads in order.
- [ ] Filename is `Sachin_Kumar_iOS_Engineer_<Company>.pdf`.
- [ ] LinkedIn headline matches — AI screening cross-validates resume against LinkedIn, and a
      mismatch is a scored negative.
- [ ] You answered the knockout questions on the form honestly (location, notice period,
      years of experience). **This** is what actually auto-rejects people — not formatting.

---

## Where your effort actually pays off

Ranked by measured return, highest first:

1. **Referrals.** A referred application skips the ranking problem entirely. This beats every
   resume edit on this page combined. For each target company, find one 42Gears alum or a
   second-degree LinkedIn connection and ask.
2. **Tailoring** — 2× interview rate, 10 minutes.
3. **Applying within 72 hours of posting.** Reviewing stops before the pile does; you want to
   be in the first hundred, not the last thousand.
4. **The job title in your headline** — 10.6× more invitations, one line.
5. **LinkedIn consistency** with your resume.
6. **Closing the Combine and Swift 6 concurrency gaps** (see `02_SKILLS_MARKET_MAP.md`) —
   these unlock roles rather than improving odds on roles you already fit.
7. Formatting micro-optimisation. **Last.** Your resume already parses at 100%. Further
   formatting work has almost no return; stop when it's clean.

---

## What not to do

- **No white text or 1pt hidden keyword blocks.** Workday, Greenhouse and Lever all flag
  low-opacity text, and any recruiter pressing ⌘A sees it instantly. Instant rejection and,
  at some companies, a permanent blacklist.
- **No invented metrics.** If asked "how did you measure the 40%?" you need a real answer.
  Every number in these files came from your original resume.
- **No title inflation.** "Senior" on a 3-year resume applying to a 5+ year role reads as
  either a lie or a misread of the level. Your titles are accurate — keep them.
- **No listing every language you've touched.** Hiring managers expect you to defend anything
  on the page. If Objective-C is academic-only, either evidence it or drop it.
- **Don't apply to 200 roles with the same PDF.** ~20% of employers now reject applications
  showing signs of un-personalised AI generation, and 62% reject un-personalised AI resumes
  outright.
