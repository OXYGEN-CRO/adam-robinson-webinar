# Adam Robinson Webinar

Blank second brain and content workspace for the live setup.

[Open Notion](https://app.notion.com/p/3d4b3dd667a781dcac4aea561260a788) · [Context index](index.md) · [Interview prompts](templates/context-interview.md)

## Folder structure

```text
identity/         backstory, mission, values, positioning, proof
audience/         ideal follower, pains and language
strategy/         goals, pillars, funnel and Notion configuration
voice/            writing examples, vocabulary and formats
brand/            visual brief and an empty assets folder
inspiration/      creator references and what to learn from them
raw/              original interviews, posts and transcripts
research/         temporary research
templates/        context pages, source manifests and Notion page bodies
scripts/          wiki checks and optional qmd search setup
.agents/skills/   capture-context and week-posts
index.md          map of the context pages
log.md            record of what was added or changed
```

The folders are ready; Adam's context is unfilled. The Notion page has an empty Content Board, Pillars & Topics, Hooks and Creator Inspo DB. “Pillar 1” through “Pillar 4” are temporary field options, not proposed content pillars.

## Start the live setup

1. Record the conversation using [the interview prompts](templates/context-interview.md).
2. Save the original material in a dated `raw/sources/` folder with a manifest.
3. Run `capture-context` to fill the context pages from what Adam actually said.
4. Name his pillars and topics in Notion. Put 4 subtopics in each topic page.
5. Run `week-posts` after the audience, voice, sources and publishing choices are filled.

Claude Code and Codex read the same repository rules and skills. No sources, posts, creator entries, audience records or brand assets from Tim's repo were copied.

## Checks and local search

```sh
./scripts/wiki-lint.sh
./scripts/qmd-setup.sh                  # optional; uses an installed qmd
./scripts/qmd.sh search "backstory" -c adam-robinson-webinar
./scripts/qmd-refresh.sh                # after adding context
```

qmd is optional. Its separate named index contains only this repository. These setup scripts do not install software, download embedding models or change global agent configuration. Use `rg` until search is configured.

[Structural provenance](templates/origin.md)
