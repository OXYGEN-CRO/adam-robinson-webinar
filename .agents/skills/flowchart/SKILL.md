---
name: flowchart
description: Create an editable workflow, system map or content funnel with truthful arrows and readable labels, without assuming a particular brand or diagram tool.
---

# Draw a flowchart

Read `AGENTS.md`, the actual workflow sources and `brand/BRAND.md`. For a content funnel, read the strategy and stage pages. Resolve unclear relationships from evidence before treating a familiar funnel shape as truth.

## Define the model

Identify the trigger, actions, inputs, outputs, decisions, exceptions and destination. Distinguish a content category from a process step. A top/middle/bottom funnel describes progression; it does not prove that every reader follows a linear path.

Label each arrow with the real event or dependency when that is not obvious. In a signal-based outbound map, distinguish engagement capture, buyer-fit qualification, routing, draft creation, human review and sending. Do not draw a reaction as an automatic meeting or sale.

Mark proposed steps explicitly when they are not implemented. Use counts and outcomes only when sourced. Create a compact overview plus detail views when a single canvas would be unreadable.

## Choose an editable format

Use the tool named by the user. Otherwise inspect existing project tooling:
- Excalidraw: use the available connector or local editor and save a native `.excalidraw` file.
- React Flow or another existing React canvas: follow the project's actual package and data model.
- Lucid or another hosted diagram tool: use it only when connected and within the requested write scope.
- No diagram tool available: use editable SVG for a self-contained artifact, or Mermaid when its layout is sufficient.

Lucide is an icon library, not a flowchart editor. Do not invent a conversion or claim that an SVG is a native hosted diagram. Use current tool documentation when creating native files; verify import or rendering instead of assuming a JSON shape is accepted.

## Lay out and verify

Use one clear reading direction, short action labels, consistent node meanings and enough room for connectors. Prefer explicit yes/no branches to unlabeled crossings. No default logo, font brand, palette or watermark is prescribed. Apply supplied visual rules, or keep the map neutral.

Inspect both the full map and the intended presentation view. Check every edge's endpoints, arrow direction, label, branch meaning and return loop; check for overlaps and tiny text. For native formats, reopen or import the saved file when tooling permits.

Deliver editable source and a rendered preview when available, with a short explanation of the path. State format and any unverified import or export limitation.
