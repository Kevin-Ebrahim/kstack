# Design record outline

These headings follow the upstream document's useful organization. They do not impose an external machine-readable schema or new design rules. Omit irrelevant sections and preserve existing authoritative structure.

## Overview

Describe the observed visual character, density, and hierarchy plainly. Separate confirmed intent from inference. No invented metaphor or brand philosophy is necessary.

## Colors

Record semantic roles, canonical values, source tokens, theme mappings, and important state relationships. Preserve the project's names and color space; do not create missing accent families.

## Typography

Record established families and fallbacks, role sizes, weights, line heights, tracking, numeric/code features, loading, scaling, and relevant language support. Distinguish actual values from suggested improvements.

## Layout

Describe grouping, grids, containers, density, spacing roles, breakpoints or container behavior, and responsive transformations. Include exact values only where observed and useful.

## Elevation & Depth

Explain how shadows, tonal surfaces, overlays, and stacking communicate relationships. A flat system is a valid observation, not a missing feature.

## Shapes

Record radii, borders, clipping, and repeated form language with their sources and exceptions.

## Components

Describe important variants and states of buttons, fields, navigation, dialogs, containers, and distinctive components. Include focus, disabled, loading, error, selected, and responsive behavior where relevant. Prefer links to canonical implementations over duplicating large snippets.

## Do's and Don'ts

Record only established constraints and confirmed practices. Do not promote a local exception or one-time brief into a universal prohibition. Include motion and reduced-motion behavior here or with the components it governs.

If optional YAML tokens are needed for an integration, verify that integration's current schema and validate the result. Never invent schema markers or hidden sidecars to simulate compatibility.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/document.md) (Paul Bakaus, Apache-2.0).
