# Responsive examples

Use the existing project's layout conventions. Choose breakpoints where content or interaction requires change, not by a compulsory device-size list. Mobile-first rules can simplify a new layout; existing desktop-first styles do not need rewriting solely for consistency with this example.

## Input capabilities

Width does not establish whether a person uses touch, keyboard, or a mouse. Pointer and hover queries can refine presentation, but essential functionality must remain accessible across inputs, including hybrid devices.

```css
@media (pointer: coarse) {
  .control { min-block-size: 2.75rem; }
}
@media (hover: hover) {
  .control:hover { background: var(--control-hover); }
}
```

The size is an illustrative comfortable target, not a universal compliance threshold. Preserve focus states and do not make hover the sole route to an action.

## Safe areas

For an edge-to-edge web layout that needs it:

```html
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
```

```css
.bottom-action {
  padding-bottom: max(1rem, env(safe-area-inset-bottom, 0px));
}
```

Account for existing container padding and avoid doubling insets. Test soft-keyboard occlusion and orientation as separate behaviors.

## Responsive images

Width descriptors must match the actual resource widths. `sizes` describes the rendered slot, not the source image dimensions.

```html
<img src="photo-800.jpg"
     srcset="photo-400.jpg 400w, photo-800.jpg 800w, photo-1200.jpg 1200w"
     sizes="(max-width: 48rem) 100vw, 50vw"
     width="800" height="600"
     alt="A description appropriate to the image's role">
```

Use `picture` when the composition needs different crops, not merely different resolutions. Keep dimensions or an aspect ratio to reserve space. Loading priority depends on whether the image is critical to the visible task.

## Structure and evidence

Tables may need horizontal scrolling, selected columns, or another presentation; preserve headers, comparison, and accessibility rather than automatically converting them to cards. Collapsible navigation must remain discoverable and keyboard usable.

Emulation helps inspect layout but does not reproduce all physical touch, CPU/memory limits, browser chrome, fonts, or network behavior. Exercise real target devices when available and report the exact limits when they are not.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/adapt.md) (Paul Bakaus, Apache-2.0).
