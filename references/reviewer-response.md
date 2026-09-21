# Reviewer Response & Rejection Handling — Post-Submission (Stage 5.5 / Post-Submission)

Guide to responding to editor decisions and reviewer comments after the paper is submitted. Connected to the red-team (Stage 5, Layer 5) that anticipates reviewers: once the editor's letter arrives, use this guide to prepare the revision & responses.

The editor's first letter decision is usually an **executive decision** (desk reject / out of scope). If the manuscript passes to reviewers, the final decision is typically `accepted / minor revision / major revision / reject`.

## 1. Reviewer Comment Types & Appropriate Responses

| Comment Type | Example | Response |
|---------------|--------|---------|
| **Misunderstanding (misread)** | "The paper does not control for X" when it does | Very common. Answer with evidence in the text, without blaming; point to the line/section location. Add clarification to the text so other readers are not misled either. |
| **Lack of evidence/detail** | "Add a sensitivity analysis" | Acknowledge the value of the comment; provide what can be provided (appendix, robustness). If infeasible, explain the rationale and alternatives; do not refuse on shallow technical grounds. |
| **Needs additional literature** | "Compare with study X" | Add the citation & discussion. Be careful: do not add literature arbitrarily without relevance — add only what genuinely strengthens the paper. |
| **Needs a new experiment/task** | "Add a user study" | If possible → add it as supplementary (without delaying the main iteration). If not → schedule it as future work WITH a logical rationale; explain the impact on the claims if the study is postponed. |
| **Overall conceptual critique** | "Fundamentally flawed; wrong positioning" | The most serious case. Consider whether the reviewer is right (they might be). If not → respond structurally, defending on evidence, not emotion. Consider an appeal if the scope is clearly misunderstood. |
| **Minor comments** (language, format, numbering) | "Fix typo; tidy up the table" | Comply with all of them; do them quickly; check off each point. |

## 2. Minor vs Major Revision Strategy

**Minor revision** (typically 1–2 rounds):
- Do all the points; do not "argue back" on minor points — it is cheaper to comply.
- Real risk: rejection is still possible. Make sure to also fix the major issues the reviewer touches on.

**Major revision** (substantial revision; rounds can be long):
- Separate the comments into: (a) those I agree with; (b) those I can partially comply with; (c) those I reject with strong reasons.
- Prioritize comments that touch the **core claim** — if the claim changes, the contribution statement (Module A) must be adjusted and the outcome explained to the editor.
- Real work > promises: reviewers judge the revision, not the rhetoric.

## 3. Structure of the Response to Reviewers

Use the template `templates/response_to_reviewer.md`:

1. **Letter to the editor** (1 page): summary of changes per category + appreciation + confirmation that all comments are answered
2. **Point-by-point per reviewer**: list of comments (verbatim or summarized per journal policy) → response to each comment
3. Each response contains 3 elements:
   - A short **Acknowledgment** ("Thank you, valid point")
   - **Resolution**: what was CHANGED in the manuscript (section, page, new figure/table)
   - **Evidence**: quote the new sentence / new result claim / precise location
4. If rejecting a comment: explain "we did not change X because <evidence-based reason>" and offer compensation (e.g., clarification in the text).

**Tone rules**:
- Use first person plural ("we"), neutral, without sarcastic/defensive wording ("as we have already explained", "respectfully, we disagree").
- Write the response for the **editor** as the primary reader, not only for the reviewer.
- Every point MUST state WHERE the change occurred (document + section + line) so it is easy to verify.

## 4. Rejection Handling Decision Path

After a `reject` decision, weigh the **timing & reasons** before giving up:

```
Rejection? 
├─ Desk reject (not reviewed) 
│    → check scope/format → send to a more suitable journal (Module B) — the same manuscript at multiple journals is not self-plagiarism
├─ Reject after review 
│    ├─ Fundamental reviewer misunderstanding? → consider appealing to the editor (rarely succeeds; only when clear)
│    ├─ Common reasons (novelty not explicit, method, analysis)? → improve the manuscript with the comments, send to another journal
│    └─ Journal offers internal transfer? → consider it (advocated by the editorial team; reviews can be reused)
└─ Reject at end-stage (editor firm)
     → Decide the best timing: does the cost of fixing (time/effort) raise the real odds, or should you invest in a new project?
```

- **Do not** rework the same manuscript without changing the substance (risk of becoming a "recycled paper").
- Update `journal_comparison.md` and `cover_letter.md` (Module B) when switching journals: new target → new cover letter.
- Evaluate the decisions the team made (a short "post-mortem") for the next project.

## 5. Connection to the Red-Team (Stage 5, Layer 5)

- The Stage 5 red-team simulates reviewers; its CRITICAL/IMPORTANT findings are "comments" that must be resolved before submission.
- Once the editor's letter arrives: classify every comment with the §1 categories and build responses with §3 — this is what saves time on a major revision.

## Output

```
response_to_reviewer.md   — editor letter + point-by-point (template templates/response_to_reviewer.md)
revision_log.md           — log of promised changes & their status
decision_log.md           — decision records (for this module & the next project)
```