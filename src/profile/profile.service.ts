import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma.service';
import { evaluateFormula } from '../formula/formula.engine';

@Injectable()
export class ProfileService {
  constructor(private prisma: PrismaService) {}

  // ---------------- HELPERS ----------------

  private normalizeKey(value: string): string {
    if (!value) return '';

    return value
      .toLowerCase()
      .replace(/š/g, 's')
      .replace(/đ/g, 'dj')
      .replace(/č/g, 'c')
      .replace(/ć/g, 'c')
      .replace(/ž/g, 'z')
      .replace(/\s+/g, '')
      .trim();
  }

  private setCtxValue(ctx: Record<string, number>, key: string, value: number) {
    if (!key) return;
    ctx[key] = value;
    ctx[this.normalizeKey(key)] = value;
  }

  private extractVariables(formula: string): string[] {
    if (!formula) return [];

    const matches = formula.match(/[A-Za-zŠĐČĆŽšđčćž0-9_().% ]+/g) || [];

    return matches
      .map((v) => v.trim())
      .filter(
        (v) =>
          v &&
          !['A', 'B', 'C', 'D', 'S', 'V', 'kom'].includes(v) &&
          !/^\d+$/.test(v),
      );
  }

  private async ensureTehnickiParams(
    vars: string[],
    profil: string = 'PVC_19',
  ) {
    for (const v of vars) {
      const exists = await this.prisma.profileTehnicki.findFirst({
        where: {
          profil,
          element: v,
        },
      });

      if (!exists) {
        await this.prisma.profileTehnicki.create({
          data: {
            profil,
            element: v,
            vrednost: 0,
          },
        });

        console.log('🆕 AUTO DODAT TEHNIČKI PARAMETAR:', v);
      }
    }
  }

  private async buildCtx(
  input: any,
  userId: number,
  isPreview = false,
) {
    const ctx: Record<string, number> = {};

    this.setCtxValue(ctx, 'A', Number(input.A) || (isPreview ? 1000 : 0));
    this.setCtxValue(ctx, 'B', Number(input.B) || (isPreview ? 1000 : 0));
    this.setCtxValue(ctx, 'C', Number(input.C) || 0);
    this.setCtxValue(ctx, 'D', Number(input.D) || (isPreview ? 500 : 0));

    // iz frontenda
    Object.entries(input.tehnicki || {}).forEach(([key, value]) => {
      this.setCtxValue(ctx, key, Number(value) || 0);
    });

    Object.entries(input.cene || {}).forEach(([key, value]) => {
      this.setCtxValue(ctx, key, Number(value) || 0);
    });

    // dodatni podaci iz baze kao fallback
    const dbTehnicki = await this.prisma.profileTehnicki.findMany({
  where: {
    userId,
  },
});
    for (const t of dbTehnicki) {
      if (!(t.element in ctx) && !(this.normalizeKey(t.element) in ctx)) {
        this.setCtxValue(ctx, t.element, Number(t.vrednost) || 0);
      }
    }

    const dbPrices = await this.prisma.profilePrice.findMany({
  where: {
    userId,
  },
});
    for (const c of dbPrices) {
      const key = `${c.element} Cena`;
      if (!(key in ctx) && !(this.normalizeKey(key) in ctx)) {
        this.setCtxValue(ctx, key, Number(c.cena) || 0);
      }
    }

    // firma
    this.setCtxValue(ctx, 'Roletna %', Number(input.firma?.roletna) || 0);
    this.setCtxValue(ctx, 'Komarnik %', Number(input.firma?.komarnik) || 0);
    this.setCtxValue(ctx, 'Otpad %', Number(input.firma?.otpad) || 0);
    this.setCtxValue(ctx, 'Zarada %', Number(input.firma?.zarada) || 0);

this.setCtxValue(ctx, "RPROC", Number(input.firma?.roletna) || 0);
this.setCtxValue(ctx, "KPROC", Number(input.firma?.komarnik) || 0);
this.setCtxValue(ctx, "OPROC", Number(input.firma?.otpad) || 0);
this.setCtxValue(ctx, "ZPROC", Number(input.firma?.zarada) || 0);

this.setCtxValue(ctx, "Roletna Procenat", Number(input.firma?.roletna) || 0);
this.setCtxValue(ctx, "Komarnik Procenat", Number(input.firma?.komarnik) || 0);
this.setCtxValue(ctx, "Otpad Procenat", Number(input.firma?.otpad) || 0);
this.setCtxValue(ctx, "Zarada Procenat", Number(input.firma?.zarada) || 0);

this.setCtxValue(ctx, "ROLETNA_PROCENAT", Number(input.firma?.roletna) || 0);
this.setCtxValue(ctx, "KOMARNIK_PROCENAT", Number(input.firma?.komarnik) || 0);
this.setCtxValue(ctx, "OTPAD_PROCENAT", Number(input.firma?.otpad) || 0);
this.setCtxValue(ctx, "ZARADA_PROCENAT", Number(input.firma?.zarada) || 0);


    // posebne cene
    this.setCtxValue(ctx, 'Ispuna Cena', Number(input.ispunaCena) || 0);
    this.setCtxValue(ctx, 'OKOV', Number(input.okovCena) || 0);
    this.setCtxValue(ctx, 'PLASTIKA', Number(input.plastikaCena) || 0);

    // uslovi 0 / 1
    this.setCtxValue(ctx, 'RoletnaTip', Number(input.roletnaTip) || 0);
    this.setCtxValue(ctx, 'ImaRoletnu', Number(input.imaRoletnu) || 0);
    this.setCtxValue(ctx, 'ImaKomarnik', Number(input.imaKomarnik) || 0);
    this.setCtxValue(ctx, 'ImaOkov', Number(input.imaOkov) || 0);
    this.setCtxValue(ctx, 'ImaIspunu', Number(input.imaIspunu) || 0);

    return ctx;
  }

  // ---------------- PARAMETRI ----------------

  getParams() {
    return this.prisma.profileParam.findMany();
  }

  async saveParam(data: any) {
    const exists = await this.prisma.profileParam.findFirst({
      where: {
        profil: data.profil,
        parametar: data.parametar,
      },
    });

    if (exists) {
      return this.prisma.profileParam.update({
        where: { id: exists.id },
        data: { vrednost: Number(data.vrednost) },
      });
    }

    return this.prisma.profileParam.create({
      data: {
        profil: data.profil,
        parametar: data.parametar,
        vrednost: Number(data.vrednost),
      },
    });
  }

  // ---------------- PRICES ----------------

  getPrices(userId: number) {
  return this.prisma.profilePrice.findMany({
    where: { userId },
    orderBy: { id: 'asc' },
  });
}

async savePrice(data: any) {
  return this.prisma.profilePrice.upsert({
    where: {
      price_user_profil_element: {
        userId: Number(data.userId),
        profil: String(data.profil),
        element: data.element,
      },
    },

    update: {
      cena: Number(data.cena) || 0,
    },

    create: {
      userId: Number(data.userId),
      profil: String(data.profil),
      element: data.element,
      cena: Number(data.cena) || 0,
    },
  });
}
  // ---------------- PROFILI ----------------

  async getProfiles(userId: number) {
  return this.prisma.profil.findMany({
    where: { userId },
    orderBy: { id: 'asc' },
  });
}

async saveProfiles(data: any[]) {
  if (!Array.isArray(data) || data.length === 0) {
    return { success: true };
  }

  const userId = Number(data[0].userId);

  for (let i = 0; i < data.length; i++) {
    const p = data[i];

    const existing = p.id
      ? await this.prisma.profil.findFirst({
          where: {
            id: Number(p.id),
            userId,
          },
        })
      : null;

    if (existing) {
      await this.prisma.profil.update({
        where: { id: existing.id },
        data: {
          naziv: p.naziv || `Profil ${i + 1}`,
        },
      });
    } else {
      await this.prisma.profil.create({
        data: {
          userId,
          naziv: p.naziv || `Profil ${i + 1}`,
        },
      });
    }
  }

  return { success: true };
}

  // ---------------- VALUTE ----------------

  async getValute(userId: number) {
  return this.prisma.valuta.findMany({
    where: {
      userId,
    },
    orderBy: { id: 'asc' },
  });
}

  async saveValute(data: any[]) {
  if (!Array.isArray(data)) {
    throw new Error('Valuta mora biti niz');
  }

  if (data.length === 0) {
    return { success: true };
  }

  const userId = Number(data[0].userId);

  await this.prisma.valuta.deleteMany({
    where: { userId },
  });

  for (let i = 0; i < data.length; i++) {
    const v = data[i];

    if (!v?.naziv) continue;

    await this.prisma.valuta.create({
      data: {
        userId,
        naziv: v.naziv,
      },
    });
  }

  return { success: true };
}

  // ---------------- TEHNIČKI ----------------

  async getTehnicki(userId: number) {
  return this.prisma.profileTehnicki.findMany({
    where: {
      userId,
    },
    orderBy: {
      id: 'asc',
    },
  });
}

  async saveTehnicki(data: any) {
  return this.prisma.profileTehnicki.upsert({
    where: {
      user_profil_element: {
        userId: Number(data.userId),
        profil: data.profil,
        element: data.element,
      },
    },

    update: {
      vrednost: Number(data.vrednost),
    },

    create: {
      userId: Number(data.userId),

      profil: data.profil,
      element: data.element,
      vrednost: Number(data.vrednost),
    },
  });
}

  // ---------------- FORMULE ----------------

  getFormula(vrstaStolarije: string, vrstaProzora: string) {
  console.log("GET FORMULA:", {
    vrstaStolarije,
    vrstaProzora,
  });

  if (!vrstaStolarije || !vrstaProzora) {
    return [];
  }

  return this.prisma.formulaDefinition.findMany({
    where: {
      vrstaStolarije,
      vrstaProzora,
    },
    orderBy: { redosled: 'asc' },
  });
}

  async saveFormula(data: any[]) {
  if (!Array.isArray(data) || data.length === 0) {
    throw new Error('Formula mora biti niz');
  }

  const vrstaStolarije = data[0]?.vrstaStolarije;
  const vrstaProzora = data[0]?.vrstaProzora;

  if (!vrstaStolarije || !vrstaProzora) {
    throw new Error('Nedostaje vrsta stolarije ili vrsta prozora');
  }

  await this.prisma.formulaDefinition.deleteMany({
    where: {
      vrstaStolarije,
      vrstaProzora,
    },
  });

  return this.prisma.formulaDefinition.createMany({
    data: data.map((row, index) => ({
      vrstaStolarije: row.vrstaStolarije,
      vrstaProzora: row.vrstaProzora,
      element: row.element,
      s: row.s || '',
      v: row.v || '',
      kom:
  row.kom === null || row.kom === undefined
    ? ""
    : String(row.kom),
      cena: row.cena || '',
      redosled: index + 1,
    })),
  });
}

  // ---------------- PREVIEW ----------------

  async previewFormula(body: any) {
  const { formule, input } = body;

  const ctx = await this.buildCtx(
  input,
  Number(input.userId),
  true,
);
  const results: any[] = [];

  for (const f of formule) {
    const hasFormula =
      Boolean(f.s && f.s.trim()) ||
      Boolean(f.v && f.v.trim()) ||
      Boolean(f.cena && f.cena.trim());

    if (!hasFormula) continue;

    const S = f.s ? evaluateFormula(f.s, ctx) : 0;
    const V = f.v ? evaluateFormula(f.v, ctx) : 0;

    const rawKom = f.kom as any;

const kom =
  rawKom === null || rawKom === undefined || rawKom === ""
    ? 0
    : isNaN(Number(rawKom))
      ? evaluateFormula(String(rawKom), ctx)
      : Number(rawKom);

    const cenaCtx: Record<string, number> = {
      ...ctx,
      S,
      V,
      s: S,
      v: V,
      kom,
      "Kom.": kom,
    };

    this.setCtxValue(cenaCtx, "S", S);
    this.setCtxValue(cenaCtx, "V", V);
    this.setCtxValue(cenaCtx, "kom", kom);
    this.setCtxValue(cenaCtx, "Kom.", kom);

    this.setCtxValue(cenaCtx, `${f.element} (Š)`, S);
    this.setCtxValue(cenaCtx, `${f.element} (V)`, V);
    this.setCtxValue(cenaCtx, `${f.element} Kom.`, kom);
    this.setCtxValue(cenaCtx, `${f.element} Kom`, kom);

    if (String(f.element).toLowerCase().includes("spojnica 1")) {
      this.setCtxValue(cenaCtx, "Spojnica 1 Kom.", kom);
      this.setCtxValue(cenaCtx, "Spojnica 1 Kom", kom);
    }

    if (String(f.element).toLowerCase().includes("spojnica 2")) {
      this.setCtxValue(cenaCtx, "Spojnica 2 Kom.", kom);
      this.setCtxValue(cenaCtx, "Spojnica 2 Kom", kom);
    }

    const cena = f.cena ? evaluateFormula(f.cena, cenaCtx) : 0;

    results.push({
      element: f.element,
      S,
      V,
      kom,
      cena,
    });

    this.setCtxValue(ctx, "S", S);
    this.setCtxValue(ctx, "V", V);
    this.setCtxValue(ctx, "kom", kom);
    this.setCtxValue(ctx, "Kom.", kom);

    this.setCtxValue(ctx, `${f.element} (Š)`, S);
    this.setCtxValue(ctx, `${f.element} (V)`, V);
    this.setCtxValue(ctx, `${f.element} Kom.`, kom);
    this.setCtxValue(ctx, `${f.element} Kom`, kom);
    this.setCtxValue(ctx, `${f.element} Cena`, cena);
    this.setCtxValue(ctx, `${f.element} Cena elemenata`, cena);
  }

  const roletnaCena =
    results.find((x) => x.element === "Roletna")?.cena || 0;

  const komarnikCena =
    results.find((x) => x.element === "Komarnik")?.cena || 0;

  const zbirOstalih = results
    .filter(
      (x) =>
        x.element !== "Roletna" &&
        x.element !== "Komarnik" &&
        x.element !== "Ukupna cena"
    )
    .reduce((sum, x) => sum + (Number(x.cena) || 0), 0);

  const plastika = Number(ctx["PLASTIKA"] || 0);
  const okov = Number(ctx["ImaOkov"] || 0) * Number(ctx["OKOV"] || 0);

  const otpad = Number(ctx["Otpad %"] || 0);
  const zarada = Number(ctx["Zarada %"] || 0);

  const ukupnaCena =
    komarnikCena +
    roletnaCena +
    (zbirOstalih + plastika + okov) *
      (1 + otpad / 100) *
      (1 + zarada / 100);

  results.push({
    element: "Ukupna cena",
    S: 0,
    V: 0,
    kom: 1,
    cena: Number(ukupnaCena.toFixed(2)),
  });

  return results;
}

  // ---------------- MAIN CALC ----------------

  async calculatePVC19(input: any) {
  const formulas = await this.prisma.formulaDefinition.findMany({
    where: {
      vrstaStolarije: input.vrstaStolarije,
      vrstaProzora: input.vrstaProzora,
    },
    orderBy: { redosled: "asc" },
  });

  const ctx = await this.buildCtx(
  input,
  Number(input.userId),
  false,
);
  const results: any[] = [];

  for (const f of formulas) {
    const hasFormula =
      Boolean(f.s && f.s.trim()) ||
      Boolean(f.v && f.v.trim()) ||
      Boolean(f.cena && f.cena.trim());

    if (!hasFormula) continue;

    const S = f.s ? evaluateFormula(f.s, ctx) : 0;
    const V = f.v ? evaluateFormula(f.v, ctx) : 0;

    const rawKom = f.kom as any;

const kom =
  rawKom === null || rawKom === undefined || rawKom === ""
    ? 0
    : isNaN(Number(rawKom))
      ? evaluateFormula(String(rawKom), ctx)
      : Number(rawKom);

    const cenaCtx: Record<string, number> = {
      ...ctx,
      S,
      V,
      s: S,
      v: V,
      kom,
      "Kom.": kom,
    };

    this.setCtxValue(cenaCtx, "S", S);
    this.setCtxValue(cenaCtx, "V", V);
    this.setCtxValue(cenaCtx, "kom", kom);
    this.setCtxValue(cenaCtx, "Kom.", kom);

    this.setCtxValue(cenaCtx, `${f.element} (Š)`, S);
    this.setCtxValue(cenaCtx, `${f.element} (V)`, V);
    this.setCtxValue(cenaCtx, `${f.element} Kom.`, kom);
    this.setCtxValue(cenaCtx, `${f.element} Kom`, kom);



    const cena = f.cena ? evaluateFormula(f.cena, cenaCtx) : 0;

    results.push({
      element: f.element,
      S,
      V,
      kom,
      cena,
    });

    this.setCtxValue(ctx, "S", S);
    this.setCtxValue(ctx, "V", V);
    this.setCtxValue(ctx, "kom", kom);
    this.setCtxValue(ctx, "Kom.", kom);

    this.setCtxValue(ctx, `${f.element} (Š)`, S);
    this.setCtxValue(ctx, `${f.element} (V)`, V);
    this.setCtxValue(ctx, `${f.element} Kom.`, kom);
    this.setCtxValue(ctx, `${f.element} Kom`, kom);
    this.setCtxValue(ctx, `${f.element} Cena`, cena);
    this.setCtxValue(ctx, `${f.element} Cena elemenata`, cena);
  }

  const roletnaCena =
    results.find((x) => x.element === "Roletna")?.cena || 0;

  const komarnikCena =
    results.find((x) => x.element === "Komarnik")?.cena || 0;

  const zbirOstalih = results
    .filter(
      (x) =>
        x.element !== "Roletna" &&
        x.element !== "Komarnik" &&
        x.element !== "Ukupna cena"
    )
    .reduce((sum, x) => sum + (Number(x.cena) || 0), 0);

  const plastika = Number(ctx["PLASTIKA"] || 0);
  const okov = Number(ctx["ImaOkov"] || 0) * Number(ctx["OKOV"] || 0);

  const otpad = Number(ctx["Otpad %"] || 0);
  const zarada = Number(ctx["Zarada %"] || 0);

  const ukupnaCena =
  komarnikCena +
  roletnaCena +
  (zbirOstalih + plastika + okov) *
    (1 + otpad / 100) *
    (1 + zarada / 100);

console.log("------ UKUPNA CENA DEBUG ------");
console.log("Roletna:", roletnaCena);
console.log("Komarnik:", komarnikCena);
console.log("Zbir ostalih:", zbirOstalih);
console.log("Plastika:", plastika);
console.log("Okov:", okov);
console.log("Otpad %:", otpad);
console.log("Zarada %:", zarada);

console.log(
  "Formula:",
  `(${komarnikCena} + ${roletnaCena}) + (${zbirOstalih} + ${plastika} + ${okov}) * (1 + ${otpad}/100) * (1 + ${zarada}/100)`
);

console.log("UKUPNO =", ukupnaCena);

results.push({
  element: "Ukupna cena",
  S: 0,
  V: 0,
  kom: 1,
  cena: Number(ukupnaCena.toFixed(2)),
});

  return results;
}
}