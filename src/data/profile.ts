import { byNewest } from "../utils/dates.ts";

export const intro = {
  location: "Giza, Egypt",
  name: "Mohamed Hisham Abdelzaher",
  summary:
    "AI and Data Science enthusiast. I studied computer science at Cairo University and have built personal projects in AI and ML.",
};

export type Project = {
  title: string;
  /** When it started. Left out when the date was never recorded. */
  start?: Date;
  /** When it ended. `null` while it is still going. */
  end?: Date | null;
  summary?: string;
  href?: string;
};

export type Experience = {
  role: string;
  /** When it started. */
  start: Date;
  /** When it ended. `null` while it is still going. */
  end: Date | null;
  text: string;
};

export type Education = {
  /** When it started. */
  start: Date;
  /** When it ended. `null` while it is still going. */
  end: Date | null;
  heading: string;
  text: string;
};

export type Certificate = {
  title: string;
  issuer: string;
  /** When it was issued. */
  start: Date;
  /** When it was issued. Same month as `start` for a one-day credential. */
  end: Date | null;
  href: string;
};

export const projects: Project[] = byNewest([
  { title: "Chatacter", start: new Date(2026, 9, 1), end: null , href: "https://github.com/MH0386/Chatacter"},
  { title: "Facial Emotions Detection", start: new Date(2023, 6, 1), end: null },
  { title: "Seismic Detection", start: new Date(2024, 9, 1), end: new Date(2024, 9, 1) },
  { title: "Digit Recognizer", start: new Date(2023, 7, 1), end: new Date(2023, 7, 1) },
  { title: "Titanic Classification", start: new Date(2023, 7, 1), end: new Date(2023, 7, 1), summary: "Titanic - Machine Learning from Disaster" },
  { title: "Face Recognition", start: new Date(2023, 6, 1), end: new Date(2023, 6, 1) },
  { title: "Handwritten Recognition", start: new Date(2023, 6, 1), end: new Date(2023, 6, 1) },
  { title: "Product Recommendation", start: new Date(2023, 6, 1), end: new Date(2023, 6, 1) },
]);

export const experience: Experience[] = byNewest([
  {
    role: "Participant",
    start: new Date(2024, 9, 1),
    end: new Date(2024, 9, 1),
    text: "NASA Space Apps Cairo. Cairo, Egypt.",
  },
  {
    role: "Attendant",
    start: new Date(2023, 10, 1),
    end: new Date(2023, 10, 1),
    text: "DotPy.",
  },
  {
    role: "Artificial Intelligence Intern",
    start: new Date(2023, 7, 1),
    end: new Date(2023, 7, 1),
    text: "Science Land. Cairo, Egypt. Artificial intelligence bootcamp.",
  },
  {
    role: "Machine Learning Intern",
    start: new Date(2023, 6, 1),
    end: new Date(2023, 6, 1),
    text: "Coding Raja Technologies. Hyderabad, India. One-month machine learning workshop. Worked on 3 projects.",
  },
  {
    role: "Intern",
    start: new Date(2023, 5, 1),
    end: new Date(2023, 5, 1),
    text: "Creativa Hub Aswan. Aswan, Egypt. Career development bootcamp.",
  },
  {
    role: "Machine Learning Intern",
    start: new Date(2023, 1, 1),
    end: new Date(2023, 3, 1),
    text: "DSC Cairo University. Giza, Egypt. Three-month machine learning workshop on data analysis and machine learning techniques, including time with instructors in the field. Worked on 5 projects.",
  },
]);

export const education: Education[] = byNewest([
  {
    start: new Date(2020, 0, 1),
    end: new Date(2024, 11, 31),
    heading: "Bachelor's degree, Computer Science",
    text: "Cairo University. Machine learning internship at the Google Developer Student Club.",
  },
]);

export const certificates: Certificate[] = byNewest([
  {
    title: "Dart Functions Framework",
    issuer: "Coursera",
    start: new Date(2022, 7, 1),
    end: new Date(2022, 7, 1),
    href: "https://coursera.org/verify/X3R4PWA6F6DU",
  },
  {
    title: "Dart: Introducing Class Abstraction",
    issuer: "Coursera",
    start: new Date(2022, 7, 1),
    end: new Date(2022, 7, 1),
    href: "https://coursera.org/verify/CBTJ62YWD3K7",
  },
  {
    title: "Dart: Using Functions with Lists and Maps",
    issuer: "Coursera",
    start: new Date(2022, 7, 1),
    end: new Date(2022, 7, 1),
    href: "https://coursera.org/verify/XNCT9EVVDSN6",
  },
  {
    title: "Dart: Variables, Data Structures, Objects, and Conditionals",
    issuer: "Coursera",
    start: new Date(2022, 7, 1),
    end: new Date(2022, 7, 1),
    href: "https://coursera.org/verify/ZPR9YGTJKDSM",
  },
  {
    title: "Introduction to Dart",
    issuer: "Coursera",
    start: new Date(2022, 6, 1),
    end: new Date(2022, 6, 1),
    href: "https://coursera.org/verify/ZBJPMK8L47M2",
  },
  {
    title: "Introduction to Java",
    issuer: "Coursera",
    start: new Date(2022, 4, 1),
    end: new Date(2022, 4, 1),
    href: "https://coursera.org/verify/UTPHVJYUDJV5",
  },
  {
    title: "Java Basics: Selection and Iteration",
    issuer: "Coursera",
    start: new Date(2022, 3, 1),
    end: new Date(2022, 3, 1),
    href: "https://coursera.org/verify/JTM9KQJRRVPX",
  },
  {
    title: "SQL",
    issuer: "Sololearn",
    start: new Date(2022, 3, 1),
    end: new Date(2022, 3, 1),
    href: "https://www.sololearn.com/certificates/CT-D0OEQKTQ",
  },
  {
    title: "C++ Basics: Selection and Iteration",
    issuer: "Coursera",
    start: new Date(2021, 8, 1),
    end: new Date(2021, 8, 1),
    href: "https://coursera.org/verify/XBZVNYQD2ULL",
  },
  {
    title: "Python Programming Basics",
    issuer: "Information Technology Institute (ITI)",
    start: new Date(2021, 0, 1),
    end: new Date(2021, 0, 1),
    href: "https://maharatech.gov.eg/badges/badge.php?hash=cdd36d5d43a2643e0b4b1ef117580488dc81fee7",
  },
]);
