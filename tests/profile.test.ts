import assert from "node:assert/strict";
import { test } from "node:test";
import {
  certificates,
  education,
  experience,
  intro,
  projects,
} from "../src/data/profile.ts";
import { formatPeriod } from "../src/utils/dates.ts";

test("intro is the homepage copy", () => {
  assert.deepEqual(intro, {
    location: "Giza, Egypt",
    name: "Mohamed Hisham Abdelzaher",
    summary:
      "AI and Data Science enthusiast. I studied computer science at Cairo University and have built personal projects in AI and ML.",
  });
});

test("profile lists every LinkedIn entry, newest first", () => {
  assert.deepEqual(
    projects.map((project) => project.title),
    [
      "Chatacter",
      "Facial Emotions Detection",
      "Seismic Detection",
      "Digit Recognizer",
      "Titanic Classification",
      "Face Recognition",
      "Handwritten Recognition",
      "Product Recommendation",
    ],
  );
  assert.deepEqual(
    experience.map((role) => role.role),
    [
      "Participant",
      "Attendant",
      "Artificial Intelligence Intern",
      "Machine Learning Intern",
      "Intern",
      "Machine Learning Intern",
    ],
  );
  assert.deepEqual(
    projects.map((project) => formatPeriod(project.start, project.end) ?? null),
    [
      "October 2026 – Present",
      "July 2023 – Present",
      "October 2024",
      "August 2023",
      "August 2023",
      "July 2023",
      "July 2023",
      "July 2023",
    ],
  );
  assert.equal(education.length, 1);
  assert.deepEqual(
    certificates.map((item) => item.href),
    [
      "https://coursera.org/verify/X3R4PWA6F6DU",
      "https://coursera.org/verify/CBTJ62YWD3K7",
      "https://coursera.org/verify/XNCT9EVVDSN6",
      "https://coursera.org/verify/ZPR9YGTJKDSM",
      "https://coursera.org/verify/ZBJPMK8L47M2",
      "https://coursera.org/verify/UTPHVJYUDJV5",
      "https://coursera.org/verify/JTM9KQJRRVPX",
      "https://www.sololearn.com/certificates/CT-D0OEQKTQ",
      "https://coursera.org/verify/XBZVNYQD2ULL",
      "https://maharatech.gov.eg/badges/badge.php?hash=cdd36d5d43a2643e0b4b1ef117580488dc81fee7",
    ],
  );
});

test("title-only projects have a date and no summary or link", () => {
  const facial = projects.find(
    (project) => project.title === "Facial Emotions Detection",
  );
  assert.ok(facial);
  assert.deepEqual(facial.start, new Date(2023, 6, 1));
  assert.equal(facial.end, null);
  assert.equal(facial.summary, undefined);
  assert.equal(facial.href, undefined);
});

test("described projects keep the published facts", () => {
  const byTitle = Object.fromEntries(
    projects.map((project) => [project.title, project]),
  );
  assert.deepEqual(
    byTitle["Titanic Classification"].start,
    new Date(2023, 7, 1),
  );
  assert.deepEqual(byTitle["Titanic Classification"].end, new Date(2023, 7, 1));
  assert.equal(
    byTitle["Titanic Classification"].summary,
    "Titanic - Machine Learning from Disaster",
  );
  assert.deepEqual(byTitle["Chatacter"].start, new Date(2026, 9, 1));
  assert.equal(byTitle["Chatacter"].end, null);
  assert.equal(byTitle["Chatacter"].href, "https://github.com/MH0386/Chatacter");
  assert.equal(projects.filter((project) => project.href).length, 1);
});

test("experience text leads with the organization", () => {
  assert.deepEqual(
    experience.map((role) => formatPeriod(role.start, role.end)),
    [
      "October 2024",
      "November 2023",
      "August 2023",
      "July 2023",
      "June 2023",
      "February 2023 – April 2023",
    ],
  );
  assert.equal(
    experience[0].text,
    "NASA Space Apps Cairo. Cairo, Egypt.",
  );
  assert.equal(experience[1].text, "DotPy.");
  assert.match(experience[2].text, /^Science Land\. Cairo, Egypt\./);
  assert.match(experience[3].text, /Worked on 3 projects\./);
  assert.match(experience[4].text, /^Creativa Hub Aswan\. Aswan, Egypt\./);
  assert.match(experience[5].text, /Worked on 5 projects\./);
});

test("education is the Cairo University degree", () => {
  assert.deepEqual(education[0], {
    start: new Date(2020, 0, 1),
    end: new Date(2024, 11, 31),
    heading: "Bachelor's degree, Computer Science",
    text: "Cairo University. Machine learning internship at the Google Developer Student Club.",
  });
});

test("certificates are newest first and every one has a credential URL", () => {
  assert.equal(certificates[0].title, "Dart Functions Framework");
  assert.equal(certificates[0].issuer, "Coursera");
  assert.deepEqual(certificates[0].start, new Date(2022, 7, 1));
  assert.deepEqual(certificates[0].end, new Date(2022, 7, 1));
  assert.equal(
    certificates[0].href,
    "https://coursera.org/verify/X3R4PWA6F6DU",
  );
  assert.equal(certificates.at(-1)?.title, "Python Programming Basics");
  assert.equal(
    certificates.at(-1)?.href,
    "https://maharatech.gov.eg/badges/badge.php?hash=cdd36d5d43a2643e0b4b1ef117580488dc81fee7",
  );
  assert.equal(new Set(certificates.map((item) => item.href)).size, 10);
});

test("headline-only and high-school items stay out", () => {
  const blob = JSON.stringify({
    intro,
    projects,
    experience,
    education,
    certificates,
  });
  assert.equal(blob.includes("WorldQuant"), false);
  assert.equal(blob.includes("GASCO"), false);
});
