# Revision Guide — Humanizer & Draft Revision (Stage 5, Layer 1)

Guide to detecting and fixing 25 patterns typical of AI writing, then revising the academic draft. Adapted from [blader/humanizer](https://github.com/blader/humanizer) (27 patterns) and the WikiProject AI Cleanup for Indonesian and English.

For revisions triggered by **editor/reviewer comments** (not self-revision), use Module C: `references/reviewer-response.md` + `templates/response_to_reviewer.md`.

## Philosophy

AI writing tends to choose the highest-probability phrasing that fits ALL readers, so it sounds generic and layered. Humans write for ONE reader and a specific topic. Each pattern below is one form of that generic choice.

**Two rules:**
1. Every sentence that is kept must add something the reader does not yet have.
2. For the numbered patterns §1–§5, ONE finding is enough to edit; patterns marked *weak on their own* need several findings together before acting.

**Safety rule**: do not change meaning, do not add unsourced facts/numbers/citations. Names, numbers, dates, quotations, and citations must come from the user's manuscript.

---

## Revision Workflow

1. **Mark patterns.** Read the entire text once, marking all patterns, strongest first. Pay attention to paragraph form, not only sentences.
2. **Redraft.** Keep ALL supported claims. You may shorten, merge, or split paragraphs. Do not add facts; if a needed detail is missing → ask.
3. **Check the draft.** Read it aloud; ask: what still sounds like AI? Were any claims/facts added or lost? Look for the five most often-missed patterns: not-X-but-Y, one-line closer, dash, triad, bold label.
4. **Write the final version.** Convey points naturally; do not patch phrases one by one. Vary the short-long sentence rhythm (human writing alternates).

### Output modes

- **Pasted text (default)**: return the draft + a short list of remaining patterns + the final version.
- **File mode**: write only the final text to the file; do not change code, data, frontmatter, or link targets.
- **Embedded**: final text only.

---

## A. Staging instead of stating (§1–5) — ACTIVE ON 1 FINDING

### §1 Not X but Y
- Pattern: "not only X, but also Y"; "this does not mean X, but rather Y"; the reversed version "X, not Y"; split across sentences "This does not mean X. It means Y."
- **Problem**: the negative half mentions something nobody claimed → the positive half sounds bigger without any added fact.
- **Fix**: state it directly; keep the contrast only when the negative half corrects a belief readers genuinely hold.
- Example: "This research is not merely a theoretical contribution." → "This research extends theory X by adding moderator M."

### §2 One-line closers & dramatic fragments
- Pattern: one-sentence paragraphs that repeat an earlier point; "That is the core of these findings."; "There was no prior baseline."; ALL CAPS words.
- **Fix**: delete closers that merely repeat; merge fragments into sentences carrying a concrete claim.

### §3 Sayings that sound deep
- Pattern: "At its core, the most important thing is..."; "X is the language of Y"; "the key to everything".
- **Fix**: replace the aphorism with a concrete claim (with data).

### §4 Staged run-up
- Pattern: "Let us examine...", "Note that", "In this section, we will".
- **Fix**: get straight to the point. Except for legitimate structural signposts.

### §5 Arguing with no one
- Pattern: "This is not about X", "I am not claiming...", "Some will surely object, but...", "It may be tempting to use Y, however...".
- **Fix**: remove the defensiveness; if it contains a real claim, state it directly. Keep objections that are fully discussed in the text.

---

## B. Rhythm by rule (§6–§11) — weak on their own

### §6 Forced triads
- Pattern: "innovation, inspiration, and insight"; three parallel examples followed by a conclusion.
- Check whether three items are really needed. If not → merge/keep the strong items.

### §7 Repeated sentence openings
- Pattern: several consecutive sentences opening with the same subject/conjunction ("The results show... The results show...").
- Merge or change the subject. (Deliberate repetition for rhythm is allowed.)

### §8 Dashes as universal connector
- **Rule**: the final version must not contain em dashes (—) / en dashes (–) unless imitating an active author's sample. Replace with periods/commas/colons/parentheses.
- Exception: dashes inside code, paths, URLs, and direct quotations.

### §9 Stacked qualifiers
- Pattern: "may possibly be expected to", "potentially".
- Keep only qualifiers supported by sources. *Weak on its own.* (Human habits like "maybe", "tend to" are not patterns.)

### §10 Hyphenated pairs everywhere
- Pattern: "cross-functional", "data-driven", "real-time" in every position.
- Keep a hyphen only when grammar requires it (before a noun): "a high-quality report" vs. "the quality of the report is high". *Weak on its own.*

### §11 Passive voice & missing subject
- "No configuration file is required" → "You do not need a configuration file." Name the actor when it helps. *Weak on its own.* (Read the mechanical gate for stricter academic rules.)

---

## C. Inflation & borrowed authority (§12–§18)

### §12 Overused AI words
The list of words models often use (in academic writing): *highlight, delve, multidimensional, transformative, bolster, enrich, navigate, landscape (abstract), crucial, pivotal, exemplary, underscore, mark, affirm, fundamentally, meaningful.* Watch for the phrases: "profound", "not merely".
- This is the ONLY vocabulary list in this skill. Replace with everyday, specific words.

### §13 Inflated significance
- Pattern: "marks a pivotal moment", "plays a key role", "lays the foundation for", "a bright future"; stock "Contribution and Challenges" sections.
- Keep the facts, discard the assertions; end on the last concrete fact.

### §14 Vague connection or association
- Pattern: "related to", "associated with", "linked to" without specifying the nature of the relationship.
- Write the relationship the source gives; if none exists → leave it vague, do not invent one.

### §15 Shallow -ing riders
- Pattern: "reflecting", "highlighting", "ensuring", "symbolizing" attached to simple facts.
- Keep the fact; keep the rider only when the claim is source-backed.

### §16 Sales language
- Pattern: "amazing", "extremely rich", "profound", "comprehensive (without numbers)".
- State it as it is.

### §17 Borrowed authority
- Pattern: "experts believe", "cited in Nature, Science, and the NYT" (prestige lists), "active on social media with N followers" (in CVs/personal blurbs).
- Write the concrete source and what it says; if not → delete.

### §18 Avoiding is/are/has
- Pattern: "serves as", "presents", "features", "offers" → "is", "has".
- "Table 3 serves as a summary of the results." → "Table 3 summarizes the results."

---

## D. Formatting by rule (§19–§21)

### §19 Bold as decoration
- Pattern: bold label + colon; terms bolded without reason.
- Remove decorative bold; turn labeled lists into prose when the labels carry no information.

### §20 Decorative headings & emoji
- Pattern: decorative Title Case headings; emoji (🚀), arrows (→) in headings; horizontal rules between sections.
- Use sentence case; remove emoji/arrows; one H1.

### §21 Curly quotes (weak on its own)
- Convert curly quotes to the target style when consistent (or leave them to follow the journal's convention).

---

## E. Leftovers from chat & draft (§22–§25)

Delete entirely; no rewrite needed.

### §22 Chatbot residue
- "Hope this helps!", "Sure!", "Great question!", "Would you like...?", "Here is...".
- Drop the wrapper, keep the content.

### §23 Knowledge-limit disclaimers & guesses
- "The following is based on the information available", "appears to have been founded in the 1990s", "information about his life is not published... possibly".
- State what the sources do not show, or delete the sentence. Never present a guess as a fact.

### §24 Heading repeated in first sentence
- "## Results\n\nThe research results show..." → delete the repeating sentence.

### §25 Writing about the previous version
- "This fix replaces the older, slower approach..." → describe what it does NOW, not the old version (except in a changelog).

---

## When NOT to Edit

- Direct quotations, titles, proper names — leave them alone.
- Patterns *weak on their own* act only when several findings cluster in one passage.
- Text written before Nov 30, 2022 is not "AI-written" merely because of its style.
- Official salutations/sign-offs.

## Details to Preserve (aspects of voice)
- Specific & unusual details (locations, odd quotations)
- Unresolved tension, mixed feelings
- Era-bound language (slang, year-specific in-jokes)
- First-person choices the author can explain
- Genuine asides/self-corrections

## Usage checklist

Use `checklists/humanizer_checklist.md` for the report of patterns detected vs. fixed.

## Sources

The patterns come from [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) (WikiProject AI Cleanup) and adaptations of [blader/humanizer](https://github.com/blader/humanizer).

---
Proceed to `quality-gates.md` for revision Layers 2–4.