# Adam Robinson Webinar: agent rules

This is a blank content-system template for a live webinar. It borrows the structure of `personal-brand`, not the founder's identity, writing or business.

## Where things live

- `raw/`: exact source material, append only. Add a dated source folder and manifest for each ingest.
- `identity/`, `audience/`, `strategy/`, `voice/`, `brand/`, `inspiration/`: linked context pages synthesized from those sources.
- Notion: pillars, topics, subtopics, content drafts, calendar, hooks and creator references. The new workspace IDs are in `strategy/notion-schema.md`.
- `research/`: temporary research. Durable findings belong in the context pages.
- `.agents/skills/`: reusable procedures. Claude discovers the same files through `.claude/skills`.

## Empty means unknown

Every `status: stub` page is an unfilled template. Headings and prompts are not facts about Adam. Do not invent a biography, opinion, audience, metric, offer, voice or visual identity to fill it. Do not substitute Tim's content.

Preserve raw wording, source URLs and capture dates. Distinguish human statements, source-backed facts and proposed interpretations. Mark what can be public. A creator reference is not a source for Adam's life or results.

## Read, then write

Start at `index.md`. Use `scripts/qmd.sh search "<terms>" -c adam-robinson-webinar` when this collection is configured, otherwise use `rg`. The wrapper selects this repo's separate index. Read the full source behind a factual claim.

Before drafting, read identity, audience, strategy and voice in that order. Check `identity/proof.md` before using a number. If the needed context is still blank, capture that context rather than filling a content board with guesses.

Keep short linked context pages with frontmatter and Source Notes. Use `templates/page.md`. Update `index.md` and append to `log.md` when filing durable context.

## Notion

Use only the Adam workspace and data sources recorded in `strategy/notion-schema.md`. Fetch before writing. Never fall back to another creator's board.

The structural starting point is 4 pillars, 4 topics per pillar and 4 subtopics per topic. Pillar names and topics are unfilled. Subtopics live inside topic page bodies. All databases start empty.

Pick 1 pillar and 1 funnel job per content piece. The Content Board has a multi-select Pillar field to match the source schema; choose 1 value. Funnel stage is a drafting decision, not a board property.

The body of a content card is 1 paste-ready text code block. Context and source reasoning stay here. Do not create a local posts database.

## Changes and publishing

Preserve existing edits. Keep `AGENTS.md` and `CLAUDE.md` identical. Run `scripts/wiki-lint.sh` before committing. Do not commit credentials, local session state or source material that is not authorized for this repository.

Drafting a post is separate from publishing it. No publishing, scheduling, paid enrichment or outbound sending is authorized by this template.
