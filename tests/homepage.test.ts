import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { test } from "node:test";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import {
  certificates,
  education,
  experience,
  intro,
  projects,
} from "../src/data/profile.ts";
import { formatPeriod } from "../src/utils/dates.ts";

const root = join(dirname(fileURLToPath(import.meta.url)), "..");
const html = readFileSync(join(root, "dist", "index.html"), "utf8");

const escapeRegExp = (value: string) =>
  value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");

test("document title and description use the intro", () => {
  assert.match(html, new RegExp(`<title>${escapeRegExp(intro.name)}</title>`));
  assert.match(
    html,
    new RegExp(
      `<meta name="description" content="${escapeRegExp(intro.summary)}"`,
    ),
  );
});

test("the style guide and the example link are gone", () => {
  assert.equal(html.includes("Style Guide"), false);
  assert.equal(html.includes("example-components"), false);
  assert.equal(html.includes("WorldQuant"), false);
  assert.equal(html.includes("GASCO"), false);
});

test("sections and nav anchors are present", () => {
  for (const id of ["projects", "experience", "education", "certificates"]) {
    assert.match(html, new RegExp(`id="${id}"`));
    assert.match(html, new RegExp(`href="/#${id}"`));
  }
  assert.equal((html.match(/aria-current="page"/g) ?? []).length, 1);
});

test("every profile entry is rendered in stored order", () => {
  const titles = [
    ...projects.map((project) => project.title),
    ...experience.map((role) => role.role),
    ...education.map((item) => item.heading),
    ...certificates.map((item) => item.title),
  ];
  let from = 0;
  for (const title of titles) {
    const pattern = new RegExp(
      `<h3[^>]*>\\s*${escapeRegExp(title)}\\s*</h3>`,
      "g",
    );
    pattern.lastIndex = from;
    const match = pattern.exec(html);
    assert.ok(match, `missing or out of order: ${title}`);
    from = match.index + match[0].length;
  }
});

test("title-only cards have no empty paragraph and one project link", () => {
  assert.equal(/<p class="text[^"]*">\s*<\/p>/.test(html), false);
  assert.equal((html.match(/View project/g) ?? []).length, 1);
  assert.match(html, /href="https:\/\/github\.com\/MH0386\/Chatacter"/);
  assert.equal((html.match(/View certificate/g) ?? []).length, 10);
  for (const certificate of certificates) {
    assert.ok(html.includes(certificate.href));
    assert.ok(
      html.includes(
        `${certificate.issuer} · ${formatPeriod(certificate.start, certificate.end)}`,
      ),
    );
  }
});

test("the example components route still builds", () => {
  assert.equal(
    existsSync(join(root, "dist", "example-components", "index.html")),
    true,
  );
});
