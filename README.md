# Adam Robinson Webinar

A source-backed second brain for Adam Robinson, with a linked context wiki and a searchable archive of public posts and transcripts.

[Open Notion](https://app.notion.com/p/3d4b3dd667a781dcac4aea561260a788) · [Context index](index.md) · [Interview prompts](templates/context-interview.md)

## Folder structure

```text
identity/         backstory, mission, values, positioning, proof
audience/         ideal follower, pains and language
strategy/         goals, pillars, funnel and Notion configuration
voice/            writing examples, vocabulary and formats
brand/            MoltSets visual rules, assets and editable graphics kit
inspiration/      creator references and what to learn from them
raw/              original interviews, posts and transcripts
research/         temporary research
templates/        context pages, source manifests and Notion page bodies
scripts/          wiki checks and optional qmd search setup
.agents/skills/   13 reusable content, visual and launch-video skills
index.md          map of the context pages
log.md            record of what was added or changed
```

The source collection contains 914 Adam-profile LinkedIn records (911 nonempty post bodies) and the latest 100 public YouTube uploads with timestamped transcripts. The original 200-post sample came through Oxygen's managed scraper; the [RB2B archive supplement](raw/sources/2026-09-08-linkedin-rb2b/manifest.md) adds 714 records from the existing Oxygen dev table, extending coverage to February 2023. Three table records have no body text and remain explicitly flagged. Dated web sources supplement the archive. The [context index](index.md) leads to synthesized identity, proof, values, audience, voice and proposed pillars; the raw material stays under `raw/sources/` for retrieval when needed. Existing LinkedIn synthesis retains its documented 200-post scope. The [YouTube library](strategy/youtube-library.md) links the detailed video notes and reports their coverage.

The existing Notion connection is unchanged. This collection task does not create, publish or schedule content there. The [MoltSets graphics system](brand/BRAND.md) is documented separately under its own brief.

## Use the second brain

1. Start at [index.md](index.md) and read the relevant synthesized context.
2. Search QMD for a specific idea, person, metric or source phrase.
3. Open the full dated source passage before making a claim. Read [proof.md](identity/proof.md) for current versus historical metrics and [source-policy.md](strategy/source-policy.md) for attribution.
4. Keep new sources in dated, append-only raw folders with manifests. Update the relevant wiki pages and append to the log.
5. Before new public copy, establish the current brief, offer, publishing choices and author review. The wiki's interpretations are drafts.

The archive is available on demand; it does not need to be loaded wholesale for each task. Claude Code and Codex read the same repository rules and skills. For an exact phrase, preserve quotes inside the QMD query, for example `./scripts/qmd.sh search '"about to cross"' -c context`. Use `rg -n -F "phrase" raw/sources/` to search original files directly.

## Checks and local search

```sh
./scripts/wiki-lint.sh
./scripts/qmd-setup.sh                  # initialize this checkout if needed
./scripts/qmd.sh search "backstory" -c context
python3 scripts/build_context_catalog.py
./scripts/qmd-refresh.sh --embed        # refresh text search and vectors
```

QMD is configured with an isolated index for this repository. Source text and synthesized pages are embedded locally; no other client's collection or global agent configuration is changed. `qmd-refresh.sh` without `--embed` updates text search only. The embedding option uses the installed QMD runtime and its embedding model.

Search includes the raw archive and reviewed wiki. Temporary `output/` exports and duplicate original `research/youtube-video-notes/` renders are excluded from QMD; those files remain available through `rg`. Reviewed video notes live in `strategy/video-notes/`, with explicit correction records that preserve the original model outputs.

Verify capture integrity with `python3 scripts/verify_linkedin_context.py` and `python3 scripts/verify_youtube_context.py`. These recompute counts, identity, recency selection and text fidelity from the preserved raw objects.

Verify the expanded LinkedIn archive with `python3 scripts/import_rb2b_linkedin.py --check`. This checks the complete exported table, attribution, exact overlapping bodies and every additional readable post. Browse the [archive by year](raw/sources/2026-09-08-linkedin-rb2b/index.md), or search it through the same repo-scoped QMD wrapper.

[Structural provenance](templates/origin.md)

## Reusable skills

The skills read the current author's context. They contain no preset name, voice, palette, posting schedule or workspace IDs.

| Skill | Purpose |
| --- | --- |
| `setup-workspace` | Configure local preferences and optional connections |
| `capture-context` | Ingest interviews, notes and sources |
| `voice-calibration` | Derive a voice guide from writing samples and edits |
| `content-strategy` | Define pillars, topics and funnel paths |
| `linkedin-copywriter` | Draft or edit one post |
| `week-posts` | Plan and draft a week |
| `repurpose-content` | Extract distinct pieces from a long source |
| `graphics-designer` | Create graphics, carousels and banners |
| `flowchart` | Draw editable workflows, system maps and funnels |
| `brand-system` | Establish or update the author's visual rules |
| `brand-review` | Inspect rendered assets |
| `launch-video` | Plan and produce a sourced product launch video |
| `qmd` | Retrieve source context with isolated local search |

This repository remains the webinar instance, with its existing Notion connection. For a new client, use the separate [Content Engine Template](https://github.com/OXYGEN-CRO/content-engine-template), which has blank configuration and no inherited client history. Its ZIP can be shared without GitHub access.

The skills do not bundle a renderer, video engine or diagram app. They use tools available in the client's environment and report when a render or export cannot be verified.
