export type IceBurnerSet = {
  slug: string;
  name: string;
  epithet: string;
  summary: string;
  availability: string;
  poolType: 'Permanent pool' | 'Featured sealed sculpture';
  image: string;
  imageAlt: string;
  palette: string[];
  paletteHex: string[];
  characters: string[];
  pieces: string[];
  signature: string[];
  archiveNote: string;
};

export const iceBurnerSets: IceBurnerSet[] = [
  {
    slug: 'royal-blood',
    name: 'Royal Blood',
    epithet: 'Regalia of the crimson court',
    summary:
      'A complete royal collection built around crimson-black formalwear, character weapons, golden crowns, and the Gloria accessory.',
    availability: 'Represented in both permanent Ice Burner result groups.',
    poolType: 'Permanent pool',
    image: '/ice-burner/royal-blood-gallery.png',
    imageAlt:
      'Conceptual triptych of crimson, black, and gold Royal Blood ceremonial costumes with crowns, cape ornaments, and fantasy weapons',
    palette: ['Oxblood crimson', 'Velvet black', 'Antique gold', 'Royal amethyst'],
    paletteHex: ['#751d36', '#11111a', '#d2a754', '#6f52a7'],
    characters: ['Elsword', 'Aisha', 'Rena', 'Raven', 'Eve', 'Chung', 'Ara'],
    pieces: [
      'Character weapon',
      'Top piece',
      'Bottom piece',
      'Gloves',
      'Shoes',
      'Hair',
      'Golden Crown',
      'Gloria accessory'
    ],
    signature: [
      'The widest verified character coverage among the permanent rare sets',
      'Matching weapon silhouettes for sword, staff, bow, blade, drone, cannon, and spear',
      'Crown and Gloria accessories extend the set beyond the six-piece costume core'
    ],
    archiveNote:
      'The permanent pool tables identify Royal Blood pieces for the original six-character roster plus Ara. Individual crown and Gloria accessories exist alongside the core equipment family.'
  },
  {
    slug: 'shadow-incubus',
    name: 'Shadow Incubus',
    epithet: 'Formalwear from the violet abyss',
    summary:
      'A dark masculine collection with black ceremonial armor, burgundy accents, dramatic hair, and character-specific demonic weapons.',
    availability: 'Represented in the permanent Ice Burner result group.',
    poolType: 'Permanent pool',
    image: '/ice-burner/shadow-incubus-gallery.png',
    imageAlt:
      'Conceptual triptych of black, burgundy, and violet Shadow Incubus formal battle costumes and demonic fantasy weapons',
    palette: ['Obsidian', 'Deep burgundy', 'Ultraviolet', 'Smoky silver'],
    paletteHex: ['#090a11', '#55152d', '#6338a0', '#8b8996'],
    characters: ['Elsword', 'Raven', 'Chung'],
    pieces: ['Character weapon', 'Top piece', 'Bottom piece', 'Gloves', 'Shoes', 'Hair'],
    signature: [
      'Shadow Incubus Nightmare Sword for Elsword',
      'Shadow Incubus Torture Blade for Raven',
      'Shadow Incubus Destroyer for Chung'
    ],
    archiveNote:
      'The verified permanent group contains six coordinated pieces per supported character. The art emphasizes the shared dark formalwear identity rather than reproducing a specific character model.'
  },
  {
    slug: 'grace-fairy',
    name: 'Grace Fairy',
    epithet: 'Moonlit court of living petals',
    summary:
      'A luminous feminine collection combining pearl fabric, pale green ornament, floral hair, and fairy-inspired character weapons.',
    availability: 'Represented in the permanent Ice Burner result group.',
    poolType: 'Permanent pool',
    image: '/ice-burner/grace-fairy-gallery.png',
    imageAlt:
      'Conceptual triptych of ivory, emerald, and gold Grace Fairy costumes with floral ornaments, wings, staff, and bow',
    palette: ['Pearl ivory', 'Pale emerald', 'Champagne gold', 'Moonlit cyan'],
    paletteHex: ['#f3eee3', '#9dc9b4', '#d9bd71', '#91dbe4'],
    characters: ['Aisha', 'Rena', 'Eve'],
    pieces: ['Character weapon', 'Top piece', 'Bottom piece', 'Gloves', 'Shoes', 'Hair'],
    signature: [
      'Grace Fairy Queen Staff for Aisha',
      'Grace Fairy Silphid Bow for Rena',
      'Grace Fairy Bud Drone for Eve'
    ],
    archiveNote:
      'The permanent pool contains six coordinated pieces for Aisha, Rena, and Eve. Wing imagery in the editorial plate communicates the set theme and is not a claim that every model includes a separate wing item.'
  },
  {
    slug: 'archangel',
    name: 'Archangel',
    epithet: 'The sealed celestial spear set',
    summary:
      'Ara’s white-and-gold celestial collection, including the spear, complete costume core, crown, and Archangel wing.',
    availability: 'Exposed through Ara’s featured Archangel sealed sculpture and Ice Burner.',
    poolType: 'Featured sealed sculpture',
    image: '/ice-burner/archangel-gallery.png',
    imageAlt:
      'Conceptual triptych of a white-and-gold celestial spear heroine wearing an Archangel-inspired costume, crown, and wings',
    palette: ['Pearl white', 'Celestial gold', 'Sky blue', 'Opal lavender'],
    paletteHex: ['#f7f5ef', '#d6ac4f', '#90c9ee', '#b5a4df'],
    characters: ['Ara'],
    pieces: [
      'Archangel Spear',
      'Top piece',
      'Bottom piece',
      'Gloves',
      'Shoes',
      'Hair',
      'Archangel Crown',
      'Archangel Wing'
    ],
    signature: [
      'Eight verified Ara-specific item templates',
      'A dedicated sealed sculpture and matching featured Ice Burner entry',
      'Celestial crown and wing complete the collector silhouette'
    ],
    archiveNote:
      'The active premium shelf explicitly features Ara’s sealed Archangel sculpture and burner. Item templates 81925–81932 define the spear, costume, hair, crown, and wing.'
  },
  {
    slug: 'el-search-party-officer',
    name: 'El Search Party Officer',
    epithet: 'Burgundy uniform of the expedition elite',
    summary:
      'Ara’s officer collection pairs a tailored burgundy uniform and spear with dedicated hair, cape, and officer hat.',
    availability: 'Exposed through Ara’s featured El Search Party Officer sealed sculpture and Ice Burner.',
    poolType: 'Featured sealed sculpture',
    image: '/ice-burner/el-search-party-officer-gallery.png',
    imageAlt:
      'Conceptual triptych of a burgundy and ivory fantasy expedition officer with a spear, hat, cape, gloves, and gold trim',
    palette: ['Officer burgundy', 'Warm ivory', 'Antique brass', 'Midnight navy'],
    paletteHex: ['#6d1d34', '#eee3ce', '#b68a3f', '#151b31'],
    characters: ['Ara'],
    pieces: [
      'Officer Spear',
      'Top piece',
      'Bottom piece',
      'Gloves',
      'Shoes',
      'Hair',
      'Officer Cape',
      'Officer Hat'
    ],
    signature: [
      'Eight verified Ara-specific item templates',
      'Burgundy equipment descriptions emphasize bravery and team play',
      'Dedicated cape and hat create the complete expedition-officer identity'
    ],
    archiveNote:
      'The active premium shelf explicitly features Ara’s El Search Party Officer burner. Item templates 81933–81940 define the spear, costume, hair, cape, and hat.'
  }
];

export function getIceBurnerSet(slug: string): IceBurnerSet | undefined {
  return iceBurnerSets.find((set) => set.slug === slug);
}

export function getIceBurnerSetPath(slug: string): string {
  return `/wiki/cash-shop/ice-burner/${slug}`;
}
