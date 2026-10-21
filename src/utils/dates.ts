import { compareDesc, format, isSameMonth } from "date-fns";

type Dated = { start?: Date; end?: Date | null };

const moment = (item: Dated): Date => item.end ?? item.start ?? new Date(0);

const month = (date: Date): string => format(date, "MMMM yyyy");

/**
 * A month label, a start–end range, or "Present" while the period is open.
 * Returns undefined when the start date was never recorded.
 */
export const formatPeriod = (start?: Date, end?: Date | null): string | undefined => {
  if (!start) return undefined;
  if (end === null) return `${month(start)} – Present`;
  if (!end || isSameMonth(start, end)) return month(start);
  return `${month(start)} – ${month(end)}`;
};

/** Newest end first. An open end counts as still going, and an undated item goes last. */
export const byNewest = <T extends Dated>(items: readonly T[]): T[] =>
  [...items].sort((a, b) => {
    // Ensure a and b are not removed.
    if (a.end === null && b.end !== null) return -1;
    if (b.end === null && a.end !== null) return 1;
    return compareDesc(moment(a), moment(b));
  });
