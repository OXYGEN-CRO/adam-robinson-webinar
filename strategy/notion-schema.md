---
type: configuration
status: active
owner: adam
created: 2026-09-07
updated: 2026-09-07
sources:
  - templates/origin.md
tags: [notion, template]
---

# Notion schema

[Adam Robinson Webinar](https://app.notion.com/p/3d4b3dd667a781dcac4aea561260a788) is a separate page in Tim's Digital Garden. All 4 databases start empty. This page records configuration, not Adam's personal content. Machine-readable IDs are in `strategy/notion.json`.

## Content Board

| Property | Type / values |
| --- | --- |
| Name | Title |
| Status | Select: Idea, Creating, Published, Backlog |
| Pillar | Multi-select: Pillar 1, Pillar 2, Pillar 3, Pillar 4 |
| Platform | Select: LinkedIn, X, YouTube, Instagram, Newsletter |
| Publish date | Date |

Use 1 pillar per piece. The generic pillar options are placeholders to rename after the context interview. Keep the names in sync with Pillars & Topics.

Views: Stages, Calendar and All pieces. Draft bodies contain 1 paste-ready text code block. There is no Funnel stage or Format property.

## Pillars & Topics

| Property | Type / values |
| --- | --- |
| Name | Title |
| Level | Select: Pillar, Topic |
| Pillar | Select: Pillar 1, Pillar 2, Pillar 3, Pillar 4 |
| Status | Select: Active, Parked |
| One line | Text |

Views: Pillars (Level = Pillar), Topics (Level = Topic, grouped by Pillar), All (grouped by Pillar).

No pillar or topic rows have been seeded. Once names are decided, the starting structure is 4 pillar rows and 16 topic rows. Each topic page contains a 4-row subtopic table. Use `templates/notion-pillar.md` and `templates/notion-topic.md`; these are copyable page bodies, not installed native database templates.

## Hooks

Hook (title), Type (select, Storytelling). Empty. Gallery and All hooks views. Store each hook pattern in its row body.

## Creator Inspo DB

Full Name (title), LinkedIn, X, Youtube and Instagram (URL). Empty Table view. No inherited default page template or creator entries.

## Live IDs

These IDs belong to this webinar instance. Generic skills read `strategy/notion.local.json` when present, otherwise `strategy/notion.json`. An incomplete local file means setup is unfinished; do not silently fall back to these IDs. New clients use the blank example in the separate content-engine-template repository.

| Database | Data source |
| --- | --- |
| [Content Board](https://app.notion.com/p/4949d7057e494bfebe655cafedc9a4cd) | `collection://d4a8daee-58d9-4aad-b7d9-69076b85a6be` |
| [Pillars & Topics](https://app.notion.com/p/3222516775b84661882ed07c76376b3d) | `collection://3b49ffe0-2277-453f-a3bd-40a7fd64406f` |
| [Hooks](https://app.notion.com/p/9485f6b45fd04daaa9adef9771b83492) | `collection://028cb465-79ab-40b3-83a8-9939f1f83cf3` |
| [Creator Inspo DB](https://app.notion.com/p/8ba71388a2e54880bc92b8993b4e4509) | `collection://1d300128-1d89-4da9-9214-b905145047ec` |

Page ID: `3d4b3dd6-67a7-81dc-ac4a-ea561260a788`.

The 4 inline databases are ordered Content Board, Pillars & Topics, Hooks, Creator Inspo DB. View-tab order and empty-group display are Notion UI settings. If presenting the board, select Stages; select Gallery for hooks. The API-created default table views were retained and named.

## Related Pages

- [[pillars]]
- [[funnel]]
- [[index]]

## Source Notes

- `templates/origin.md`: the structural reference and content excluded.
- New database schemas and views created through Notion MCP on 2026-09-07, under the page above. No original database was modified.
