export function evaluateFormula(formula: string, ctx: Record<string, number>) {
  try {
    if (!formula || !formula.trim()) return 0;

    const normalize = (value: string) =>
      String(value)
        .toLowerCase()
        .replace(/š/g, "s")
        .replace(/đ/g, "dj")
        .replace(/č/g, "c")
        .replace(/ć/g, "c")
        .replace(/ž/g, "z")
        .replace(/\s+/g, " ")
        .trim();

    const escapeRegExp = (value: string) =>
      value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");

    let expr = normalize(formula);

    const normalizedCtx: Record<string, number> = {};

    for (const [key, value] of Object.entries(ctx)) {
      normalizedCtx[normalize(key)] = Number(value) || 0;
    }

    // 1. Prvo menjamo duge nazive: "Štok Cena", "Roletna Cena", "RPROC"...
    const entries = Object.entries(normalizedCtx)
      .filter(([key]) => {
        if (!key) return false;

        // ove kratke menjamo posebno
        if (["a", "b", "c", "d", "s", "v", "kom", "kom."].includes(key)) {
          return false;
        }

        return true;
      })
      .sort((a, b) => b[0].length - a[0].length);

    for (const [key, value] of entries) {
      expr = expr.replace(
        new RegExp(`(?<![a-z0-9_])${escapeRegExp(key)}(?![a-z0-9_])`, "g"),
        String(value)
      );
    }

    // 2. Posebno menjamo Kom. i kom
    const komValue =
      normalizedCtx["kom"] ??
      normalizedCtx["kom."] ??
      0;

    expr = expr.replace(
      /(?<![a-z0-9_])kom\.?(?![a-z0-9_])/g,
      String(komValue)
    );

    // 3. Posebno menjamo A B C D S V samo kao samostalne promenljive
    const replaceSingle = (name: string, value: number) => {
      expr = expr.replace(
        new RegExp(`(?<![a-z0-9_])${name}(?![a-z0-9_])`, "g"),
        String(value)
      );
    };

    replaceSingle("a", normalizedCtx["a"] ?? normalizedCtx["A"] ?? 0);
    replaceSingle("b", normalizedCtx["b"] ?? normalizedCtx["B"] ?? 0);
    replaceSingle("c", normalizedCtx["c"] ?? normalizedCtx["C"] ?? 0);
    replaceSingle("d", normalizedCtx["d"] ?? normalizedCtx["D"] ?? 0);
    replaceSingle("s", normalizedCtx["s"] ?? normalizedCtx["S"] ?? 0);
    replaceSingle("v", normalizedCtx["v"] ?? normalizedCtx["V"] ?? 0);

    console.log("FORMULA:", formula);
    console.log("AFTER REPLACE:", expr);

    if (/[a-zšđčćž_]/i.test(expr)) {
      console.error("Formula error:", formula);
      console.error("After replace:", expr);
      return 0;
    }

    return Function(`"use strict"; return (${expr})`)();
  } catch (err) {
    console.error("Formula error:", formula);
    console.error("Engine error:", err);
    return 0;
  }
}