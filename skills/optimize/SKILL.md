---
name: optimize
description: "Measure and improve a web interface bottleneck in loading, rendering, interaction, or resource use without sacrificing functionality."
---

# Optimize

Start with the slow user experience and its cause. A request to diagnose produces findings; a request to improve includes a scoped fix and comparable verification.

## Establish evidence

Choose a representative path, dataset, device/network profile, and metric tied to the complaint. Record the baseline and measurement conditions. Separate lab observations from real-user data; a Lighthouse score alone does not explain the bottleneck. Use [benchmark-checklist](../benchmark-checklist/SKILL.md) before making a performance claim.

Inspect the relevant waterfall, runtime profile, bundle, frame trace, or memory behavior. Prioritize work that limits the user-visible path, not every possible optimization.

## Address the cause

- **Loading:** right-size images, reserve their dimensions, defer offscreen/noncritical resources, and keep critical content eager. Choose formats and compression by visual quality and supported clients.
- **JavaScript/CSS:** remove unused work or dependencies only after checking consumers; split meaningful loading boundaries and avoid flashes or delayed essential interaction.
- **Fonts:** reduce unused assets while retaining language coverage; check fallback metrics and loading shifts.
- **Rendering:** batch layout reads and writes; reduce demonstrated repeated work. Consider containment or virtualization only after checking sizing, focus, selection, printing, and accessibility consequences.
- **Animation:** inspect actual paint/composite cost. Prefer efficient movement where it meets the design, and use `will-change` only for demonstrated benefit. See [animation-performance](../animation-performance/SKILL.md).
- **Framework work:** use the project's profiling tools. Memoization, caching, and stable callbacks need a demonstrated benefit and correct invalidation; they are not universal requirements.
- **Network/data:** inspect duplicate requests, payloads, pagination, and caching semantics. Do not replace the API architecture, buy services, or add offline guarantees as incidental optimization.

Keep current functionality, accessibility, supported languages, and error recovery intact. Check current documentation before relying on framework or browser-specific behavior.

## Verify

Repeat the baseline scenario under comparable conditions, including variation across runs where relevant. Exercise the affected feature for regressions. Report before/after values, their units and conditions, the causal explanation, and limits. If runtime evidence is unavailable, label the change as an unmeasured improvement hypothesis rather than a verified speedup.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/optimize.md) (Paul Bakaus, Apache-2.0).
