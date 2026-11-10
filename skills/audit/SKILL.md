---
name: audit
description: "Audit a web interface for accessibility, performance, theming, responsiveness, and implementation defects; report findings without applying fixes."
---

# Audit

Perform a technical interface audit against the product's actual requirements. Resolve the target and inspect representative states, source, and rendered behavior using available tools. Keep application files unchanged.

## Examine applicable dimensions

1. **Accessibility:** semantic controls, labels and names, headings, keyboard paths, visible focus, errors, announcements, contrast, reduced motion, and zoom/reflow. Prefer native semantics over unnecessary ARIA. Automated checks provide partial evidence, not a conformance verdict.
2. **Performance:** measure loading and interaction bottlenecks where possible; inspect layout thrashing, expensive rendering, oversized resources, font shifts, and unnecessary work. Missing memoization or lazy loading is not itself a defect. Do not lazy-load critical content merely to satisfy a rule.
3. **Theming:** verify existing token roles and supported themes, including interactive states. A project does not fail because it has no dark theme or formal token system unless those are requirements.
4. **Responsive behavior:** exercise overflow, zoom, long content, supported languages, input modes, and navigation. Test custom gestures when possible and name whether evidence came from emulation, synthesized input, or a physical device.
5. **Implementation integrity:** verify controls, displayed data, state transitions, shared patterns, and suspected shortcuts. A visual preference or source pattern needs a demonstrated consequence before it becomes a defect.

Check applicable standards precisely. WCAG 2.2 AA target sizing generally uses 24 CSS pixels with specified exceptions; 44 pixels is a different enhanced criterion. See [target-size minimum](https://www.w3.org/WAI/WCAG22/Understanding/target-size-minimum.html). For contrast, distinguish [text](https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum.html) from [meaningful non-text cues](https://www.w3.org/WAI/WCAG22/Understanding/non-text-contrast.html) and their exceptions.

On RTL surfaces, verify actual rendered direction and ordering. Physical CSS properties and unflipped icons are investigation signals, not automatic failures; some centering and asset choices are already correct.

## Report and prioritize

Give each applicable dimension a 0–4 assessment: 0 blocked/systemically broken, 1 major failures, 2 meaningful gaps, 3 minor issues, 4 no material issue found in the checked scope. Mark inapplicable or unverified dimensions separately and show the scored denominator and coverage. This score is a triage summary, not certification.

For each finding provide severity, location, evidence or reproduction, user impact, applicable criterion when verified, and a concrete correction. Prioritize blocked tasks and major accessibility failures over cosmetic drift; include important strengths and testing gaps.

Recommend fixes in a useful order without applying them or writing reports automatically. Save only to a requested or established artifact destination. This web checklist does not claim native-platform coverage; a native audit needs the appropriate platform methods. Use [critique](../critique/SKILL.md) for visual and UX judgment.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/audit.md) (Paul Bakaus, Apache-2.0). Modified for this library; see [adaptations](../../adaptations.md).
