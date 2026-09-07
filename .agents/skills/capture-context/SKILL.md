---
name: capture-context
description: Turn the webinar interview, notes or supplied Adam Robinson source material into the blank context pages in this repository.
---

# Capture context

Read `AGENTS.md`, `index.md` and the relevant blank pages. Use `templates/context-interview.md` to find missing context; ask only the questions needed for the user's current step.

Preserve supplied material exactly in a new dated `raw/sources/` folder with `templates/manifest.md`. Record author, origin, dates and public-use boundaries.

Synthesize the evidence into identity, audience, strategy, voice, brand and inspiration as appropriate. Keep unsupported sections blank. Separate a quote, a supported fact and an interpretation. Change a page from stub to draft only when it contains sourced context; do not mark it approved on the author's behalf.

Link the updated pages, name the source paths, update the index and append to the log. Run `scripts/wiki-lint.sh`.

This capture step does not seed content drafts. If the user also asks to set up the taxonomy, use the new Notion IDs in `strategy/notion-schema.md` and `templates/notion-pillar.md` / `templates/notion-topic.md`. Rename matching Pillar field options in both databases when the pillar names are decided.
