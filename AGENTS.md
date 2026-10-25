# Lumos for Astro

This repository is **Lumos for Astro**: an Astro component framework, styled
with plain CSS and custom properties.

It is not **Lumos for Webflow**, which is a different product with its own
class naming, structure and utilities. If a Lumos skill targeting Webflow is
installed on your account, ignore it while working here — none of its
conventions apply. What governs this project is LUMOS.md and the skills in
`.claude/skills/`.

## Development

When starting the dev server, use background mode:

```bash
astro dev --background
```

Manage the background server with `astro dev stop`, `astro dev status`, and `astro dev logs`.

## Documentation

Full documentation: <https://docs.astro.build>

Consult these guides before working on related tasks:

- [Adding pages, dynamic routes, or middleware](https://docs.astro.build/en/guides/routing/)
- [Working with Astro components](https://docs.astro.build/en/basics/astro-components/)
- [Using React, Vue, Svelte, or other framework components](https://docs.astro.build/en/guides/framework-components/)
- [Adding or managing content](https://docs.astro.build/en/guides/content-collections/)
- [Adding styles or using Tailwind](https://docs.astro.build/en/guides/styling/)
- [Supporting multiple languages](https://docs.astro.build/en/guides/internationalization/)

## Building

Read [LUMOS.md](LUMOS.md) before adding pages, components, or styles. It
covers the conventions that keep a Lumos site consistent as it grows.

## Skills

Task-specific procedures live in `.claude/skills/`, one folder each, with a
`SKILL.md` and any scripts it needs.

- `lumos-import-figma` — build a page or fill in variables from a Figma file,
  including a messy one. Converts px to rem, line heights to unitless, and
  Figma's faked opacity back to `color-mix`.
- `lumos-audit-props` — occasional sweep for prop order and tooltip
  consistency across the component library.
- `lumos-scaling-graphic` — build an illustration or mockup that scales as one
  piece while staying real elements, using an aspect-ratio artboard and `cqw`.
- `lumos-import-webflow` — move a site off Webflow in three passes: rebuild it
  exactly from the export, swap in the components Lumos already has, then
  connect the CMS. Each pass is verified against the one before.
- `lumos-upgrade-version` — move a site onto the latest framework without losing its
  customizations. Three-way merges against the commit it was scaffolded from,
  and pixel-diffs every page before and after.

In Claude Code these load on their own, or with `/lumos-import-figma`. Any other
assistant can read the `SKILL.md` directly and follow it — the steps are plain
markdown and the scripts are plain Node.

## Cursor Cloud specific instructions

The saved Cloud Agent `start` command runs `npm run dev -- --host 0.0.0.0 --port 4321` and keeps that process attached. When `http://127.0.0.1:4321/` already responds, leave it running. `astro dev --background` needs port 4321 free.

Dependencies install with `npm ci` on the image's Node.js 22, which satisfies the lockfile (`>=22.12.0`).

`npm test` runs `tests/profile.test.ts`. `tests/homepage.test.ts` reads `dist/index.html`, so run `npm run build` before that file. Lint with `npm run lint`, check formatting with `npm run format:check`, and type-check with `npm run check`.
