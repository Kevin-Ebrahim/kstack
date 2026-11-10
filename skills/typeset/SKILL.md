---
name: typeset
description: "Improve interface typography, hierarchy, wrapping, and font delivery within the established design system."
---

# Typeset

Typography should clarify roles and reading order while preserving the product's established identity. Do not replace confirmed typefaces merely because another pairing is fashionable.

## Assess

Inspect representative screens and states before interpreting lint findings. Record the actual families, weights, sizes, line heights, tracking, and role names from source or computed styles. Check:

- Whether heading, body, label, metadata, and data roles are distinguishable and consistent.
- Reading measure, paragraph rhythm, contrast, and density in the actual language and face.
- Long headings, translated copy, narrow containers, zoom, platform scaling, missing weights, and fallback fonts.
- Unused font assets, invisible text, and layout shift during loading.

Use available project checks and browser tools; no Impeccable detector is required.

## Tune

- Reuse existing semantic roles. Combine size, weight, space, and tone instead of relying only on size.
- Treat roughly 45–75 characters as a useful prose measure to evaluate, not a rule for labels, tables, every language, or every typeface.
- Tune line height to the face and measure. Preserve user zoom and native text scaling; avoid shrinking essential text to make layouts fit.
- Use tabular numerals or code features where the content benefits.
- Load only needed fonts and weights while retaining required language coverage. Check fallback metrics and loading behavior.
- Let display typography scale with available space when useful; keep frequently used controls spatially predictable.
- Prefer natural wrapping. Use balanced headings or improved prose wrapping as progressive enhancement when supported by target browsers. Check any hard line break at relevant widths.

## Verify

Inspect the rendered result with realistic content, zoom, fallback fonts, and supported themes. Check loading and reflow as well as static screenshots. Report the changed roles and evidence; source inspection alone cannot prove reading comfort or font-loading behavior. Use [layout](../layout/SKILL.md) if the underlying problem is spatial structure.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/typeset.md) (Paul Bakaus, Apache-2.0). Modified for this library; see [adaptations](../../adaptations.md).
