---
name: colorize
description: "Add purposeful color to a muted interface using stable semantic roles, existing brand constraints, and verified contrast."
---

# Colorize

Use color to establish hierarchy, meaning, and atmosphere within the product's existing identity.

## Establish roles

Read existing tokens, themes, assets, and design documentation. Identify confirmed brand colors, foreground/background pairs, action and focus states, semantic statuses, and any data categories. Resolve whether the request adds color or replaces an identity before changing binding brand choices.

Choose a palette strategy appropriate to the surface: a campaign may use broad color regions; a dense tool may reserve color for action and state. Avoid a fixed accent percentage.

## Apply

- Define roles for canvas, surfaces, text, actions, focus, selection, borders, and statuses. Use the existing color space and token conventions.
- Let a deliberate region or semantic role carry the strongest color instead of scattering unrelated accents.
- Keep action and status meanings consistent across states. Use labels, shapes, icons, or patterns in addition to color.
- Compose light and dark themes separately where supported; do not mechanically invert them or add an unrequested theme.
- Check actual composited colors when opacity, overlays, images, or gradients affect contrast.
- For data, distinguish categories and ordered scales in ways that survive color-vision differences.

## Verify

Measure the computed pairs rather than judging by eye. WCAG AA text contrast is generally 4.5:1, or 3:1 for qualifying large text, with defined exceptions. Meaningful control/state cues and graphics generally need 3:1 against adjacent colors. Consult the applicable criteria before declaring a violation: [text contrast](https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum.html) and [non-text contrast](https://www.w3.org/WAI/WCAG22/Understanding/non-text-contrast.html).

Check relevant themes and hover, focus, selection, error, and disabled states. Confirm that the intended task remains prominent and non-color cues work. Report what was measured and what remains unverified.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/colorize.md) (Paul Bakaus, Apache-2.0).
