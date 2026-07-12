export type WikiCategory = 'Start here' | 'Core guide' | 'Advanced' | 'Reference';

export type WikiListItem = {
  title: string;
  text: string;
};

export type WikiTable = {
  columns: string[];
  rows: string[][];
};

export type WikiSection = {
  id: string;
  title: string;
  intro?: string;
  art?: {
    src: string;
    alt: string;
    caption: string;
  };
  paragraphs?: string[];
  bullets?: WikiListItem[];
  steps?: WikiListItem[];
  table?: WikiTable;
  note?: {
    tone: 'tip' | 'warning' | 'info';
    title: string;
    text: string;
  };
};

export type WikiPage = {
  slug: string;
  title: string;
  shortTitle: string;
  category: WikiCategory;
  summary: string;
  audience: string;
  readingTime: string;
  icon: string;
  heroImage?: string;
  sections: WikiSection[];
  related: string[];
};

export const progressionMilestones = [
  ['1', 'Adventurer Welcome Kit', 'Consumables and early EXP support'],
  ['5', 'Ruben Preparation Cache', 'Materials for the first equipment jump'],
  ['10', '1st Dimension Gear Cache', 'Class-appropriate first gear set'],
  ['15', 'Elder Preparation Cache', 'Supplies for the next region tier'],
  ['20', '2nd Dimension Gear Cache', 'Second class-appropriate gear set'],
  ['25', 'Bethma Preparation Cache', 'Midgame consumables and materials'],
  ['30', '3rd Dimension Gear Cache', 'Third equipment tier'],
  ['35', 'Altera Preparation Cache', 'Supplies for the level-40 breakpoint'],
  ['40', '4th Dimension Gear Cache', 'Fourth equipment tier'],
  ['50', 'Henir Preparation Cache', 'Endgame preparation materials'],
  ['60', 'Absolute Time and Space Gear', 'Level-60 endgame equipment'],
  ['65', 'Vanguard Capstone Cache', 'Final milestone rewards']
] as const;

const rosterRows = [
  ['Elsword', 'Sword', 'Direct melee', 'Durable, readable combos, strong fundamentals'],
  ['Aisha', 'Staff / magic', 'Ranged caster', 'Mana planning, area control, burst windows'],
  ['Rena', 'Bow / kicks', 'Mobile hybrid', 'Ranged pressure, mobility, flexible spacing'],
  ['Raven', 'Blade / Nasod arm', 'Aggressive melee', 'Pressure, combo conversion, close-range damage'],
  ['Eve', 'Nasod drones', 'Aerial specialist', 'Unusual movement, summons or energy attacks'],
  ['Chung', 'Cannon', 'Armored ranged', 'Heavy hits, defensive play, ammunition awareness'],
  ['Ara', 'Spear', 'Mobile mid-range', 'Fast movement, long reach, energy management'],
  ['Elesis', 'Claymore', 'Power melee', 'Wide sword arcs, strong control, committed attacks']
];

export const wikiPages: WikiPage[] = [
  {
    slug: 'getting-started',
    title: 'Getting Started',
    shortTitle: 'Getting started',
    category: 'Start here',
    summary: 'From client setup to your first dungeon, with a safe installation checklist.',
    audience: 'New players',
    readingTime: '8 min',
    icon: '01',
    related: ['characters', 'progression', 'troubleshooting'],
    sections: [
      {
        id: 'before-you-begin',
        title: 'Before you begin',
        intro: 'JoySword uses a historical Windows Elsword client connected to a community-operated realm.',
        bullets: [
          { title: 'Operating system', text: 'Use 64-bit Windows 10 or Windows 11. The client itself contains older 32-bit components.' },
          { title: 'Required runtimes', text: 'Install the x86 Microsoft Visual C++ 2010 Redistributable and DirectX End-User Runtimes (June 2010).' },
          { title: 'Install location', text: 'Extract the client to a normal writable folder. Avoid Program Files if Windows permissions prevent patching.' }
        ],
        note: {
          tone: 'warning',
          title: 'Historical build',
          text: 'Modern retail Elsword guides can contain characters, jobs, regions, and systems that do not exist in this level-65 build. Use this wiki for realm-specific progression.'
        }
      },
      {
        id: 'account-to-client',
        title: 'Account-to-client checklist',
        steps: [
          { title: 'Create your account', text: 'Register with an email and a 6–20 character password. Confirm the email message when it arrives.' },
          { title: 'Save the game login', text: 'Open My Account and copy the generated game login. The client does not use your email address as its username.' },
          { title: 'Prepare the client', text: 'Extract the current JoySword client release and keep its folder structure intact.' },
          { title: 'Start the realm', text: 'For the offline package, launch the supplied server workflow before opening the game client.' },
          { title: 'Launch and sign in', text: 'Use Start-Client-Windows.bat, then enter the copied game login and the same password used on the website.' },
          { title: 'Create a character', text: 'Choose a base character whose movement and range match your preferred play style. Names must be unique.' }
        ]
      },
      {
        id: 'first-session',
        title: 'Your first 30 minutes',
        bullets: [
          { title: 'Open every tutorial prompt', text: 'The historical UI communicates core movement, skills, inventory, and dungeon flow through short prompts.' },
          { title: 'Inspect your inventory', text: 'Find the JoySword progression chest. It is character-bound and begins a single linked reward chain.' },
          { title: 'Check key bindings', text: 'Confirm movement, jump, basic attacks, skills, awakening, item slots, and menu keys before entering a dungeon.' },
          { title: 'Run early quests', text: 'Quest objectives introduce regions and dungeons while supplying experience and baseline currency.' },
          { title: 'Practice recovery', text: 'Learn how your character stands, jumps, air-recovers, and exits pressure before optimizing damage.' }
        ]
      },
      {
        id: 'controls',
        title: 'Controls and interface',
        paragraphs: [
          'JoySword is built around keyboard action combat. Movement and attack inputs can be combined into character-specific command strings, while active skills consume resources from assigned skill slots.',
          'Default bindings can vary between client packages. Treat the in-game keyboard settings as authoritative instead of memorizing a retail control diagram.'
        ],
        bullets: [
          { title: 'Movement', text: 'Learn walk, dash, jump, dash-jump, fast fall or air movement where supported.' },
          { title: 'Basic attacks', text: 'The two primary attack buttons branch into grounded and aerial command strings.' },
          { title: 'Skills', text: 'Place frequently used skills where they can be reached without releasing movement keys.' },
          { title: 'Items', text: 'Keep recovery items on deliberate keys to prevent accidental consumption.' },
          { title: 'Camera and UI', text: 'Adjust resolution and effects before combat so telegraphs and platforms remain readable.' }
        ]
      },
      {
        id: 'first-goals',
        title: 'First-session goals',
        table: {
          columns: ['Goal', 'Why it matters', 'Done when'],
          rows: [
            ['Secure the account', 'Protects recovery and future management', 'Email shows Verified in My Account'],
            ['Learn movement', 'Mobility prevents more damage than early gear can absorb', 'You can dash-jump and land consistently'],
            ['Understand MP', 'Skills are your primary burst and clearing tools', 'You can build and spend without staying empty'],
            ['Open milestone rewards', 'The realm progression track prevents early gear dead ends', 'The next chest appears after each claim'],
            ['Finish a dungeon cleanly', 'Establishes your basic combat loop', 'You clear without exhausting recovery items']
          ]
        }
      }
    ]
  },
  {
    slug: 'progression',
    title: 'Leveling & Progression',
    shortTitle: 'Progression',
    category: 'Core guide',
    summary: 'A complete level 1–65 route built around JoySword milestone rewards.',
    audience: 'All players',
    readingTime: '12 min',
    icon: '02',
    related: ['equipment', 'dungeons', 'combat'],
    sections: [
      {
        id: 'progression-loop',
        title: 'The progression loop',
        intro: 'The efficient loop is quest, clear, claim, equip, and prepare—not endless low-level farming.',
        steps: [
          { title: 'Follow regional quests', text: 'Use quests to select relevant dungeons and maintain experience flow.' },
          { title: 'Clear at a stable difficulty', text: 'Choose the highest difficulty you can complete consistently without draining supplies.' },
          { title: 'Claim the next milestone chest', text: 'At milestone levels, open the current chest to receive its bundle and unlock the next chest in sequence.' },
          { title: 'Rebuild the loadout', text: 'Compare the whole new set, apply the included support items, and update sockets or elemental choices deliberately.' },
          { title: 'Move forward', text: 'Once quests and gear point to the next region, stop overfarming obsolete content.' }
        ]
      },
      {
        id: 'milestones',
        title: 'JoySword milestone track',
        intro: 'The track is deterministic and character-bound. Over-levelled characters can claim missed milestones in order.',
        table: {
          columns: ['Level', 'Reward', 'Purpose'],
          rows: progressionMilestones.map((row) => [...row])
        },
        note: {
          tone: 'info',
          title: 'Ara and Elesis equipment',
          text: 'Where this historical client lacks early Henir weapons for Ara or Elesis, their caches use level-appropriate regional equipment instead.'
        }
      },
      {
        id: 'level-bands',
        title: 'Level-band priorities',
        table: {
          columns: ['Levels', 'Primary objective', 'Avoid'],
          rows: [
            ['1–10', 'Learn controls, quest through Ruben, claim welcome and first gear caches', 'Spending heavily on temporary gear'],
            ['11–20', 'Complete early job objectives and build a reliable skill rotation', 'Ignoring the level-15 preparation cache'],
            ['21–30', 'Improve dungeon routing, resource use, and boss recognition', 'Enhancing pieces replaced at level 30'],
            ['31–40', 'Refine sockets and class identity; prepare for harder regional patterns', 'Opening reward chains out of order'],
            ['41–50', 'Conserve premium materials and learn repeatable endgame-oriented content', 'Treating damage as the only useful stat'],
            ['51–60', 'Prepare for Absolute gear and identify your final build direction', 'Using endgame materials on filler equipment'],
            ['61–65', 'Finish the capstone, optimize gear, and specialize for PvE or PvP', 'Assuming one build is optimal for every mode']
          ]
        }
      },
      {
        id: 'questing',
        title: 'Questing efficiently',
        bullets: [
          { title: 'Stack objectives', text: 'Before launching a dungeon, check whether multiple quests can be completed in the same run.' },
          { title: 'Read completion conditions', text: 'A clear, a specific difficulty, a boss drop, and a minimum rank are different objectives.' },
          { title: 'Turn in regularly', text: 'Unclaimed quest rewards can hide level breakpoints, items, or the next route.' },
          { title: 'Use parties when useful', text: 'A stable party can improve clear consistency, but do not let matchmaking delay a simple solo objective indefinitely.' },
          { title: 'Keep inventory space', text: 'Clear several slots before long sessions so quest and milestone rewards are not obstructed.' }
        ]
      },
      {
        id: 'endgame',
        title: 'Level 65: what changes',
        paragraphs: [
          'At the cap, progress shifts from gaining levels to improving execution and build quality. Absolute equipment and the Vanguard capstone establish a baseline; they are not a substitute for coherent sockets, enhancements, elemental choices, and skill routing.',
          'Choose a focus. PvE values safe clearing, boss uptime, resource cycling, and party contribution. PvP values neutral control, reliable confirms, survivability, and stable network conditions.'
        ],
        bullets: [
          { title: 'Complete the reward chain', text: 'Confirm every earlier chest has been opened before evaluating missing rewards.' },
          { title: 'Create a baseline set', text: 'Equip a coherent set first, then compare individual upgrades.' },
          { title: 'Measure real outcomes', text: 'Track clear consistency, potion use, deaths, and boss time—not only the displayed attack value.' },
          { title: 'Preserve alternatives', text: 'Keep promising PvP or utility pieces until you understand their tradeoffs.' }
        ]
      }
    ]
  },
  {
    slug: 'combat',
    title: 'Combat Fundamentals & Mastery',
    shortTitle: 'Combat',
    category: 'Core guide',
    summary: 'Movement, resources, combos, bossing, and an expert practice framework.',
    audience: 'Beginner to expert',
    readingTime: '14 min',
    icon: '03',
    related: ['characters', 'equipment', 'pvp'],
    sections: [
      {
        id: 'combat-model',
        title: 'The combat model',
        paragraphs: [
          'Combat alternates between neutral, conversion, damage, and reset. In neutral you use movement and hitboxes to create an opening. A confirmed hit becomes a stable command string. Skills extend damage, control space, protect a transition, or finish before the target escapes.',
          'The best rotation is not always the longest. Dungeon rank, knockdown behavior, MP efficiency, enemy armor, invulnerability windows, and positioning all affect the correct endpoint.'
        ]
      },
      {
        id: 'movement',
        title: 'Movement before damage',
        bullets: [
          { title: 'Dash discipline', text: 'Use short controlled dashes to adjust range. Constant forward movement makes your approach predictable.' },
          { title: 'Platform routes', text: 'Learn which jump or dash-jump reaches each platform without a correction.' },
          { title: 'Landing control', text: 'Plan where an aerial action ends. Landing in front of an active hitbox loses the exchange.' },
          { title: 'Facing', text: 'Many command branches depend on direction. Reverse cleanly before committing to a punish.' },
          { title: 'Recovery', text: 'Do not press every option immediately after being hit. Observe whether the opponent is waiting for it.' }
        ]
      },
      {
        id: 'resources',
        title: 'MP, awakening, and class resources',
        table: {
          columns: ['Resource', 'Generated by', 'Spend when'],
          rows: [
            ['MP', 'Attacking, being hit, passives, items, or class mechanics', 'A skill creates more value than saving for an uncertain future'],
            ['Awakening', 'Combat actions and build bonuses', 'The duration covers a meaningful room, boss phase, or PvP conversion'],
            ['Class resource', 'Character-specific commands or skills', 'The intended mode, stance, ammunition, energy, or system improves the next sequence'],
            ['Consumables', 'Inventory and progression supplies', 'They prevent a death or preserve a high-value clear—not to repair every small mistake']
          ]
        },
        note: {
          tone: 'tip',
          title: 'Resource floor',
          text: 'Keep enough MP or class resource for one defensive, mobility, or high-confidence option unless a full spend will end the encounter.'
        }
      },
      {
        id: 'combos',
        title: 'Building reliable combos',
        steps: [
          { title: 'Start with a confirm', text: 'Choose a fast, practical opener you can recognize on hit.' },
          { title: 'Use a stable route', text: 'Repeat a short command string that works from common positions.' },
          { title: 'Watch knockdown', text: 'Repeated launch, impact, or high-knockdown commands can force the target down and end pressure.' },
          { title: 'Add one extension', text: 'Introduce a skill or movement cancel only after the base route is consistent.' },
          { title: 'Choose the exit', text: 'End in damage, knockdown, safe spacing, or a setup. Do not drift into an accidental reset.' }
        ]
      },
      {
        id: 'dungeon-combat',
        title: 'Dungeon clearing and bosses',
        bullets: [
          { title: 'Group before spending', text: 'Pull enemies into one line or area so a skill clears multiple targets.' },
          { title: 'Preserve boss tools', text: 'Do not spend every cooldown on the final trash pack when the boss begins immediately after.' },
          { title: 'Read super armor', text: 'A boss that does not flinch can attack through unsafe command strings.' },
          { title: 'Respect invulnerability', text: 'Stop spending resources when a phase transition or scripted action cannot be damaged.' },
          { title: 'Move through the boss', text: 'When safe, crossing behind an attack can be stronger than retreating beyond your punish range.' }
        ]
      },
      {
        id: 'practice',
        title: 'A deliberate practice ladder',
        table: {
          columns: ['Stage', 'Practice goal', 'Success condition'],
          rows: [
            ['1. Execution', 'One movement route and one basic combo', 'Ten clean repetitions without a dropped input'],
            ['2. Recognition', 'Confirm only when the opener actually hits', 'No automatic follow-up on block, armor, or whiff'],
            ['3. Resources', 'Maintain a planned MP floor', 'Finish the room with the intended reserve'],
            ['4. Adaptation', 'Use two routes for different positions', 'Choose correctly at wall and midscreen'],
            ['5. Pressure', 'Vary timing and reset points', 'Opponent cannot escape through the same gap repeatedly'],
            ['6. Review', 'Identify the first cause of each failure', 'One concrete adjustment per run or match']
          ]
        }
      }
    ]
  },
  {
    slug: 'characters',
    title: 'Characters & Playstyles',
    shortTitle: 'Characters',
    category: 'Core guide',
    summary: 'Choose among the eight base characters available in this historical build.',
    audience: 'All players',
    readingTime: '13 min',
    icon: '04',
    related: ['combat', 'progression', 'equipment'],
    sections: [
      {
        id: 'roster',
        title: 'JoySword base roster',
        intro: 'Choose by feel and decision-making style. Every character can clear content when geared and played coherently.',
        table: {
          columns: ['Character', 'Weapon', 'Identity', 'Best for players who enjoy'],
          rows: rosterRows
        }
      },
      {
        id: 'choosing',
        title: 'How to choose',
        bullets: [
          { title: 'Range preference', text: 'Decide whether you want to initiate in melee, control mid-range, or pressure from range.' },
          { title: 'Movement shape', text: 'Test grounded dash, jump arc, air options, and turnaround speed. Movement feel matters for the entire game.' },
          { title: 'Resource complexity', text: 'Some characters layer ammunition, energy, awakening states, summons, or stance systems over MP.' },
          { title: 'Risk profile', text: 'Heavy committed attacks reward prediction; fast low-commitment tools reward repeated adjustments.' },
          { title: 'Visual clarity', text: 'Pick a character whose effects and rhythm remain readable to you during crowded rooms.' }
        ]
      },
      {
        id: 'character-notes',
        title: 'Character-by-character notes',
        bullets: [
          { title: 'Elsword', text: 'A strong fundamentals teacher. Sword range is readable, defensive options are intuitive, and melee routing rewards clean positioning.' },
          { title: 'Aisha', text: 'A space-control mage. She rewards mana planning, deliberate casting range, and knowing when to stop retreating and convert.' },
          { title: 'Rena', text: 'A flexible ranged-mobile hybrid. Bow pressure and kick-based close combat make spacing choices central.' },
          { title: 'Raven', text: 'An aggressive blade fighter with a Nasod arm. He excels when an opening becomes sustained close-range pressure.' },
          { title: 'Eve', text: 'A technical Nasod character with distinctive aerial movement. Her unconventional glide and drone tools reward route-specific practice.' },
          { title: 'Chung', text: 'A heavy cannon user with armor-oriented tools. Strong hits and range reward anticipation more than frantic inputs.' },
          { title: 'Ara', text: 'A mobile spear fighter with long command reach and a dedicated energy system. She rewards flowing sequences and resource awareness.' },
          { title: 'Elesis', text: 'A broad-area melee fighter using a claymore. Wide arcs and forceful approaches reward confident timing.' }
        ]
      },
      {
        id: 'job-paths',
        title: 'Job paths in a historical client',
        paragraphs: [
          'Job advancement specializes a base character into a clearer combat identity. A path can change damage type, command strings, resource behavior, range, party utility, and which skills form the core rotation.',
          'This realm is based on a historical client. Modern fourth paths, later advancement tiers, and current retail balance should not be assumed. Read the in-game quest and skill descriptions for the paths actually exposed by this build.'
        ],
        steps: [
          { title: 'Preview the identity', text: 'Compare the path’s weapon emphasis, movement, resource loop, and role—not only one showcase skill.' },
          { title: 'Check availability', text: 'Confirm that the desired advancement quest and assets exist in this realm version.' },
          { title: 'Commit around a loop', text: 'After advancing, rebuild skill slots around the path’s actual resource and cooldown cycle.' },
          { title: 'Retest fundamentals', text: 'New commands can alter launchers, knockdown, air routes, and safe endpoints.' }
        ]
      },
      {
        id: 'build-questions',
        title: 'Questions to answer for any character',
        table: {
          columns: ['Question', 'Beginner answer', 'Expert answer'],
          rows: [
            ['How do I start?', 'One fast grounded and one aerial opener', 'Range-specific whiff punish and counter-hit options'],
            ['How do I clear?', 'One wide, efficient room-clearing skill', 'Route packs to maximize hit count and MP return'],
            ['How do I boss?', 'A stable damage rotation with safe recovery', 'Align buffs, awakening, armor windows, and cooldowns'],
            ['How do I survive?', 'Keep a movement or defensive option available', 'Identify exact commitment and invulnerability windows'],
            ['How do I improve?', 'Reduce dropped movement and accidental knockdowns', 'Review decision quality, resource value, and matchup adaptation']
          ]
        }
      }
    ]
  },
  {
    slug: 'equipment',
    title: 'Equipment, Stats & Upgrades',
    shortTitle: 'Equipment',
    category: 'Core guide',
    summary: 'Evaluate gear, enhancements, sockets, elements, and upgrade risk without wasting resources.',
    audience: 'Intermediate players',
    readingTime: '12 min',
    icon: '05',
    related: ['progression', 'combat', 'dungeons'],
    sections: [
      {
        id: 'gear-first-principles',
        title: 'Gear first principles',
        bullets: [
          { title: 'Compare complete outcomes', text: 'A set bonus, sockets, enhancement, and usable level can outweigh a single higher base-stat line.' },
          { title: 'Upgrade at breakpoints', text: 'JoySword provides major equipment at milestone levels. Avoid exhausting materials immediately before a known replacement.' },
          { title: 'Keep the weapon current', text: 'Weapon quality usually has the largest direct effect on clear speed, but armor still determines whether mistakes are recoverable.' },
          { title: 'Build for the activity', text: 'Dungeon clearing, bossing, and PvP reward different mixtures of damage, speed, consistency, and defense.' }
        ]
      },
      {
        id: 'stats',
        title: 'Reading important stats',
        table: {
          columns: ['Stat family', 'What it changes', 'Practical use'],
          rows: [
            ['Attack', 'Base physical or magical output', 'Match the damage type used by your chosen path'],
            ['Critical', 'Chance to deal critical damage', 'Improves average output when supported consistently'],
            ['Action / attack speed', 'Animation and command responsiveness', 'Can make routes smoother, but changes timing'],
            ['Accuracy / evasion', 'Reliability of hits and avoidance', 'More relevant where the build and mode use these checks'],
            ['Additional damage', 'Extra contribution under system-specific rules', 'Evaluate in actual content rather than by label alone'],
            ['Damage reduction / HP', 'Effective survivability', 'Valuable when it prevents deaths or potion dependence'],
            ['Movement / jump', 'Traversal and spacing', 'Strong for routing, neutral, and platform control'],
            ['Awakening charge / duration', 'Access to and uptime of awakening', 'Useful when awakening defines the class damage cycle']
          ]
        }
      },
      {
        id: 'enhancement',
        title: 'Enhancement strategy',
        paragraphs: [
          'Enhancement raises equipment power but becomes increasingly resource-sensitive. The progression caches include enhancement support appropriate to their tier, including safety-net items at later milestones.',
          'Use guaranteed or supplied enhancement support on the intended milestone item. Do not assume a modern retail enhancement event or protection mechanic exists in this client.'
        ],
        bullets: [
          { title: 'Enhance the keeper', text: 'Confirm class, level, slot, and set before consuming support items.' },
          { title: 'Stop at the plan', text: 'Set a target before upgrading. Chasing one more level can consume resources reserved for the next breakpoint.' },
          { title: 'Preserve fallbacks', text: 'Keep the old functional weapon until the replacement is equipped and tested.' },
          { title: 'Read every item', text: 'Amulets, scrolls, and protection items can have level or target restrictions.' }
        ],
        note: {
          tone: 'warning',
          title: 'Do not copy modern enhancement odds',
          text: 'This historical build may use different tables and protection rules. The in-game result preview and realm-provided items are authoritative.'
        }
      },
      {
        id: 'sockets-elements',
        title: 'Sockets and El attributes',
        bullets: [
          { title: 'Socket toward a goal', text: 'Choose a small number of stats that solve an identified weakness instead of spreading bonuses randomly.' },
          { title: 'Test timing changes', text: 'Speed can alter combo links. Re-practice key routes after a meaningful speed increase.' },
          { title: 'Use El Shards deliberately', text: 'The milestone track supplies Fire, Water, Nature, Wind, Light, and Dark shards for elemental decisions.' },
          { title: 'Separate PvE and PvP assumptions', text: 'Status value, resistance, and reliable proc opportunities differ by activity.' },
          { title: 'Do not overwrite blindly', text: 'Record the current effect before replacing a socket or element so the change can be evaluated.' }
        ]
      },
      {
        id: 'upgrade-checklist',
        title: 'Upgrade decision checklist',
        steps: [
          { title: 'Define the problem', text: 'Slow room clear, weak boss burst, frequent death, poor movement, or unreliable combo?' },
          { title: 'Identify the limiting slot', text: 'Find whether the weapon, armor set, accessory, socket, or execution is responsible.' },
          { title: 'Estimate replacement timing', text: 'Check the next JoySword milestone before investing.' },
          { title: 'Apply one meaningful change', text: 'Avoid changing five stats at once if you want to know what worked.' },
          { title: 'Test in repeatable content', text: 'Compare clear time, potion use, deaths, or match consistency under similar conditions.' }
        ]
      }
    ]
  },
  {
    slug: 'cash-shop',
    title: 'Cash Shop Collector’s Vault',
    shortTitle: 'Cash Shop',
    category: 'Core guide',
    summary: 'Explore JoySword’s restored premium catalog, companions, fashion archives, upgrade shelves, and Henir armory.',
    audience: 'Collectors & optimizers',
    readingTime: '15 min',
    icon: '★',
    heroImage: '/cashshop-revelation.png',
    related: ['equipment', 'progression', 'faq'],
    sections: [
      {
        id: 'vault-overview',
        title: 'Why this vault is different',
        intro: 'JoySword’s storefront is curated as a rediscovered archive, not an unfiltered wall of legacy item IDs.',
        paragraphs: [
          'The restoration work reconnects priced items, package definitions, premium cubes, pets, mounts, utility items, costumes, and historically significant equipment that existed across the client and server data but were difficult to discover together.',
          'The featured shelf is deliberately organized into recognizable collections: enhancement, level utility, premium reveals, companions, seven Henir and Time and Space tiers, secret-dungeon equipment, and complete fashion packages.'
        ],
        bullets: [
          { title: 'Direct progression tools', text: 'Advanced Magic Stones, enhancement support, restoration support, and a Max Level Scroll are surfaced as intentional utility.' },
          { title: 'Premium archive', text: 'Ice Burners, Ice Crystalline, sealed sculptures, golden cubes, value bundles, and the Cobo Express VIP Ticket return to a visible collection.' },
          { title: 'Companion stable', text: 'Fox spirits, hatchlings, Phoru companions, and three summon-stone mounts share one readable destination.' },
          { title: 'Endgame armory', text: 'Henir dimensions, Feita, Henir Ruler, Absolute Time and Space, and secret-dungeon equipment are curated by tier.' },
          { title: 'Fashion history', text: 'Patissier colorways, Panda Bear, Grim Reaper, and other restored packages preserve the playful identity of the era.' }
        ],
        note: {
          tone: 'info',
          title: 'Archive rule',
          text: 'Item names and compatibility come from this historical build. Inspect the in-game description before purchase; modern retail versions may use different contents or rules.'
        }
      },
      {
        id: 'collectors-case',
        title: 'The collector’s case',
        intro: 'Think of the shop as a guidebook foldout: every shelf supports a different kind of player story.',
        art: {
          src: '/cashshop-collectors-case.png',
          alt: 'An ornate collector case displaying elemental gems, an ice sculpture, companion crystals, a mount token, scroll, ticket, sword, crown, and enhancement cube',
          caption: 'Collector’s Plate No. 01 — a visual field guide to JoySword’s restored vault.'
        },
        table: {
          columns: ['Collection', 'Signature finds', 'Best approached as'],
          rows: [
            ['Enhancement laboratory', 'Advanced and specialized Magic Stones, Fluorite Ore, restoration scrolls', 'A planned upgrade toolkit'],
            ['Premium revelation', 'Ice Burner bundles, sealed sculptures, golden boxes and cubes', 'A randomized collector experience'],
            ['Companion stable', 'Miho, Shiho, Naho, Mystic, hatchlings, Phoru and mounts', 'Permanent character flavor'],
            ['Time and Space armory', 'Dimension sets, Henir Ruler and Absolute equipment', 'Direct build targeting'],
            ['Fashion archive', 'Patissier colorways and special character packages', 'Cosmetic collection and identity'],
            ['Utility counter', 'Max Level Scroll and Cobo Express VIP Ticket', 'Special-purpose convenience']
          ]
        }
      },
      {
        id: 'economy-ladder',
        title: 'A clear economy ladder',
        intro: 'Every price is measured against the 12,000-Cash daily allowance, so the catalog supports both quick choices and longer collection goals.',
        table: {
          columns: ['Tier', 'Typical price', 'Player goal'],
          rows: [
            ['Archive', '500–1,000', 'Historical finds and small utility'],
            ['Entry', '1,500–4,000', 'Minor fashion pieces and consumables'],
            ['Core', '5,000–10,000', 'Standard fashion, accessories and quality-of-life unlocks'],
            ['Rare', '8,000–15,000', 'Distinctive pieces and premium reveals'],
            ['Epic', '12,000–24,000', 'Prestige pieces, companions and mounts'],
            ['Collection Package', '12,000–60,000', 'Complete sets discounted from their component value']
          ]
        },
        bullets: [
          { title: 'Collector Rank', text: 'Successful purchases earn permanent Collection XP across Adventurer, Explorer, Curator, Vanguard, Luminary, Legend, and Ascendant ranks.' },
          { title: 'Deterministic milestones', text: 'Unlocked ranks grant one-time Cash rewards; rewards wait until the wallet has enough room and never bypass its cap.' },
          { title: 'Optional randomness', text: 'Ice Burner bundles provide collection excitement, but restored pieces remain available as direct purchases.' },
          { title: 'Package value', text: 'Mapped packages receive a consistent 20% discount from normalized component prices.' }
        ]
      },
      {
        id: 'premium-reveals',
        title: 'Ice Burners & premium reveals',
        paragraphs: [
          'The restored premium shelf includes the core Ice Burner, Ice Crystalline, sealed sculptures, golden and ancient cubes, and multiple bundle sizes. Bundle labels include 1+1, 5+1, 5+1, 10+2, and 10+3 variants found in the active catalog.',
          'Featured historical reveals include the Gold Sealed Ice Sculpture and Ara-focused El Search Party Officer and Archangel items. These are collector objects first: contents can be randomized and should never be treated as a guaranteed path to power.'
        ],
        bullets: [
          { title: 'Read the exact item', text: 'Similar-looking burners and sculptures can belong to different pools, characters, or eras.' },
          { title: 'Separate direct from random', text: 'A listed equipment piece is a different purchasing decision from a cube that reveals one result.' },
          { title: 'Choose a stopping point', text: 'Set a collection budget before opening randomized items and stop when it is reached.' },
          { title: 'Preserve rare duplicates', text: 'Do not discard or consume unfamiliar results until you understand trade, seal, costume, or package use.' }
        ],
        note: {
          tone: 'warning',
          title: 'No implied guarantee',
          text: 'The wiki does not invent drop rates or promise a specific reward. Use any pool information presented by the live client and treat unavailable odds as unknown.'
        }
      },
      {
        id: 'companions-mounts',
        title: 'Fox spirits, hatchlings & mounts',
        table: {
          columns: ['Family', 'Featured examples', 'Collector note'],
          rows: [
            ['Fox spirits', 'Miho, Firefox Shiho, Darkfox Naho', 'Life Crystals, direct companions, and adult packages appear across the restored shelf'],
            ['Classic companions', 'Wild Pocket Phoru and Mystic', 'Distinct silhouettes from the historical pet catalog'],
            ['Hatchlings', 'Dark Hatchling and Light Hatchling packages', 'A paired light-versus-dark collection'],
            ['Mounts', 'Moby Chariot RT, Cockatigle, Ancient Phoru', 'Summon Stones unlock dramatic traversal identities'],
            ['Special packages', 'Panda Bear — Red and Grim Reaper', 'Themed package presentation with strong visual identity']
          ]
        },
        bullets: [
          { title: 'Crystal versus package', text: 'A Life Crystal, completed companion, adult package, and special package are separate catalog forms.' },
          { title: 'Check character inventory', text: 'Leave space before claiming or opening companion packages.' },
          { title: 'Collect by theme', text: 'Fox trio, light/dark hatchlings, classic Phoru, or mechanical mounts create clearer goals than buying at random.' }
        ]
      },
      {
        id: 'enhancement-lab',
        title: 'The enhancement laboratory',
        intro: 'JoySword surfaces the full preparation bench instead of hiding upgrade support behind unrelated tabs.',
        bullets: [
          { title: 'Advanced Magic Stones', text: 'Direct stones and cubes containing 3, 5, 10, or 40 stones support deliberate socket projects.' },
          { title: 'Enhancement stones', text: 'Blessed weapon and armor enhancement stones are separated by equipment purpose.' },
          { title: 'Fluorite Ore', text: 'The active featured shelf includes level 1 through level 9 variants.' },
          { title: 'Restoration scrolls', text: 'Blessed Restoration Scrolls also span level 1 through level 9 in the curated list.' },
          { title: 'Specialized stones', text: 'Destruction, Explosion, Combustion, Quickness, Wrath, Harmony, Mystery, Brilliance, Battle, Reinforce, Bull’s Eye, and Sage stones support targeted experiments.' }
        ],
        note: {
          tone: 'tip',
          title: 'Guidebook rule: plan on paper first',
          text: 'Write down the item, target enhancement, socket goal, material ceiling, and fallback before consuming anything. A collector protects the archive before chasing the upgrade.'
        }
      },
      {
        id: 'henir-armory',
        title: 'The seven-shelf Henir armory',
        paragraphs: [
          'The standout JoySword addition is direct discoverability for a deep historical armory. Time and Space equipment is grouped by progression tier instead of being buried among thousands of unrelated entries.',
          'Weapons and armor are represented across supported classes, with stronger +2 endgame variants preferred where the historical data contains both +1 and +2 versions.'
        ],
        table: {
          columns: ['Shelf', 'Era / region', 'Purpose'],
          rows: [
            ['I', '1st Dimension — Ruben', 'Early Time and Space collection'],
            ['II', '2nd Dimension — Elder', 'Second regional set tier'],
            ['III', '3rd Dimension — Bethma', 'Midgame collector and build tier'],
            ['IV', '4th Dimension — Altera', 'Advanced regional equipment'],
            ['V', 'Feita', 'Late historical Time and Space collection'],
            ['VI', 'Henir Ruler', 'Prestige Henir equipment family'],
            ['VII', 'Absolute Time and Space', 'Level-60 endgame baseline and collector centerpiece'],
            ['Secret shelf', 'Secret dungeons', 'Advanced regional weapons, armor, and throwable utility']
          ]
        }
      },
      {
        id: 'fashion-archive',
        title: 'The fashion archive',
        paragraphs: [
          'The restored fashion shelf treats costumes as an era-spanning archive. The featured Patissier collection alone includes character-specific packages and multiple dessert-inspired colorways: Choco, Strawberry, Grapefruit, Peach, White Choco, Orange, Blueberry, and Lime Orange.',
          'Special packages such as Panda Bear — Red and Grim Reaper sit beside the wider recovered package catalog. Availability does not imply universal compatibility; inspect character and slot restrictions.'
        ],
        bullets: [
          { title: 'Build a silhouette', text: 'Start with one defining piece—weapon, hair, wing, or one-piece costume—then support it.' },
          { title: 'Collect color stories', text: 'A coordinated two- or three-color theme often reads better than equipping every rare piece at once.' },
          { title: 'Preview the full set', text: 'Package art, individual components, and equipped appearance can communicate different details.' },
          { title: 'Keep historical oddities', text: 'Unusual seasonal and event pieces are part of the archive’s charm even when they are not statistically important.' }
        ]
      },
      {
        id: 'smart-collecting',
        title: 'A collector’s buying ritual',
        steps: [
          { title: 'Name the goal', text: 'Power breakpoint, companion, mount, costume silhouette, or archive completion?' },
          { title: 'Classify the item', text: 'Direct purchase, package, randomized reveal, upgrade material, or unlock?' },
          { title: 'Check restrictions', text: 'Character, level, equipment slot, package contents, and binding behavior.' },
          { title: 'Compare free progression', text: 'The level 1–65 chest track already supplies gear, enhancement support, consumables, shards, and cosmetics.' },
          { title: 'Set the ceiling', text: 'Decide the maximum spend or quantity before entering a randomized collection.' },
          { title: 'Document the find', text: 'Screenshot rare or confusing results and record the exact item name before transforming or consuming it.' }
        ]
      }
    ]
  },
  {
    slug: 'dungeons',
    title: 'Dungeons, Parties & Endgame',
    shortTitle: 'Dungeons',
    category: 'Core guide',
    summary: 'Plan dungeon runs, party roles, boss learning, and the transition to Henir-oriented endgame.',
    audience: 'All players',
    readingTime: '11 min',
    icon: '06',
    related: ['progression', 'equipment', 'combat'],
    sections: [
      {
        id: 'dungeon-loop',
        title: 'The dungeon loop',
        steps: [
          { title: 'Prepare', text: 'Repair or inspect equipment, free inventory space, stock recovery items, and assign the correct skill loadout.' },
          { title: 'Read the objective', text: 'Know whether the run is for quest completion, experience, materials, rank, or practice.' },
          { title: 'Route rooms', text: 'Group enemies, cover vertical layers, and move toward the exit while the final targets are defeated.' },
          { title: 'Manage the boss', text: 'Recognize armor, telegraphs, invulnerability, and punish windows before spending the full rotation.' },
          { title: 'Review', text: 'At the results screen, assess deaths, resource use, missed objectives, and inventory changes.' }
        ]
      },
      {
        id: 'difficulty',
        title: 'Choosing difficulty',
        paragraphs: [
          'The best progression difficulty is the highest one you clear reliably enough to preserve momentum. A theoretical reward increase is not efficient when repeated failures, long resets, or consumable use outweigh it.',
          'Raise difficulty when normal rooms are controlled, the boss no longer causes surprise deaths, and your equipment meets the activity’s practical demands.'
        ]
      },
      {
        id: 'party-play',
        title: 'Party fundamentals',
        bullets: [
          { title: 'Agree on pace', text: 'A fast player should not trigger the next room while teammates are loading, looting, or recovering.' },
          { title: 'Avoid scattering packs', text: 'Launchers and knockback can push targets out of allied area skills.' },
          { title: 'Layer control', text: 'Stagger large skills so the party maintains coverage instead of spending everything on already-defeated enemies.' },
          { title: 'Share boss visibility', text: 'Large effects can hide telegraphs. Position so all players can read the next attack.' },
          { title: 'Recover intentionally', text: 'Use revival resources when the remaining party and boss state make the recovery worthwhile.' }
        ]
      },
      {
        id: 'boss-learning',
        title: 'A boss-learning method',
        table: {
          columns: ['Pass', 'Focus', 'Question'],
          rows: [
            ['Observation', 'Survive and identify major attacks', 'What animation starts each dangerous pattern?'],
            ['Positioning', 'Find safe sides, heights, and distances', 'Where can I remain close enough to punish?'],
            ['Timing', 'Map armor and invulnerability', 'When does damage actually register?'],
            ['Rotation', 'Fit skills into known windows', 'Which sequence finishes before retaliation?'],
            ['Optimization', 'Reduce movement and resource waste', 'What can I remove without losing safety?']
          ]
        }
      },
      {
        id: 'henir-endgame',
        title: 'Henir-oriented endgame',
        paragraphs: [
          'The realm’s final progression milestones point toward Henir and Absolute Time and Space equipment. Treat the level-50 preparation cache as the transition into endgame planning and the level-60 set as a coherent baseline.',
          'Endgame readiness means consistent mechanics, a maintained equipment set, enough supplies for the full activity, and a rotation that functions under boss armor—not merely reaching the required level.'
        ],
        bullets: [
          { title: 'Prepare before queueing', text: 'Know the expected duration and bring enough recovery without filling all free slots.' },
          { title: 'Prioritize consistency', text: 'A slightly slower clear with no deaths is better progression than unstable burst attempts.' },
          { title: 'Record the bottleneck', text: 'If a run fails, identify whether the cause was damage, defense, resource exhaustion, or mechanics.' }
        ]
      }
    ]
  },
  {
    slug: 'pvp',
    title: 'PvP Fundamentals',
    shortTitle: 'PvP',
    category: 'Advanced',
    summary: 'Neutral, confirms, team roles, match review, and network-aware play for the historical client.',
    audience: 'Competitive players',
    readingTime: '13 min',
    icon: '07',
    related: ['combat', 'characters', 'troubleshooting'],
    sections: [
      {
        id: 'before-pvp',
        title: 'Before entering PvP',
        bullets: [
          { title: 'Stabilize the connection', text: 'Prefer wired Ethernet or strong local networking. Close background transfers and avoid unstable Wi-Fi.' },
          { title: 'Build a PvP loadout', text: 'Prioritize reliable confirms, neutral tools, survivability, and escape coverage instead of copying a pure dungeon rotation.' },
          { title: 'Know your ruleset', text: 'Team match, team deathmatch, survival, and tag formats create different win conditions.' },
          { title: 'Practice one conversion', text: 'Enter with a short combo you can finish under pressure.' }
        ],
        note: {
          tone: 'info',
          title: 'Network model',
          text: 'Repository evidence indicates a historical host-oriented P2P model with relay fallback. Latency and host quality can affect how exchanges appear; this is not rollback netcode.'
        }
      },
      {
        id: 'neutral',
        title: 'Winning neutral',
        bullets: [
          { title: 'Control a useful range', text: 'Stand where your fastest option reaches and the opponent’s most dangerous opener can still be reacted to.' },
          { title: 'Vary approach timing', text: 'Alternate immediate dash, delayed movement, jump, and retreat. A single rhythm is easy to intercept.' },
          { title: 'Claim platforms', text: 'Vertical position changes approach angles and escape routes.' },
          { title: 'Whiff punish', text: 'Let committed attacks miss, then enter during recovery instead of contesting the active hitbox.' },
          { title: 'Preserve information', text: 'Early in a match, observe escape and awakening habits before risking a full resource spend.' }
        ]
      },
      {
        id: 'conversion-pressure',
        title: 'Conversion and pressure',
        steps: [
          { title: 'Confirm the hit', text: 'Do not spend MP until the opener is visibly connected unless the skill itself is the safe opener.' },
          { title: 'Stabilize position', text: 'Choose a route appropriate for wall, platform edge, or midscreen.' },
          { title: 'Track knockdown', text: 'End before forced knockdown destroys the intended extension.' },
          { title: 'Watch escape resources', text: 'Expect awakening, mana break, recovery, or character-specific exits where the build supports them.' },
          { title: 'Reset safely', text: 'If the route becomes unstable, take position instead of gambling the entire advantage.' }
        ]
      },
      {
        id: 'team-play',
        title: 'Team and tag play',
        bullets: [
          { title: 'Do not break allied combos', text: 'Unplanned knockback or launch can save an opponent from a stronger conversion.' },
          { title: 'Cover the exit', text: 'Position for the opponent’s escape rather than stacking directly on the same target.' },
          { title: 'Peel deliberately', text: 'Interrupt pressure on a teammate with the safest tool that reaches.' },
          { title: 'Manage lives and tags', text: 'The win condition matters more than individual damage totals.' },
          { title: 'Call network problems early', text: 'If a room is consistently unstable, resolve the connection before treating the result as meaningful practice.' }
        ]
      },
      {
        id: 'review',
        title: 'Review a match like an expert',
        table: {
          columns: ['Review point', 'Weak question', 'Useful question'],
          rows: [
            ['Opening', 'Why did I get hit?', 'Which range and timing made my approach punishable?'],
            ['Combo', 'Why did it drop?', 'Was the route wrong for position, latency, or knockdown state?'],
            ['Resources', 'Why had I no MP?', 'Which earlier spend produced the least value?'],
            ['Defense', 'Was that character unfair?', 'Which escape or movement habit was being read?'],
            ['Result', 'Did I win?', 'Can I repeat the decisions that created the win?']
          ]
        }
      }
    ]
  },
  {
    slug: 'troubleshooting',
    title: 'Troubleshooting & Recovery',
    shortTitle: 'Troubleshooting',
    category: 'Reference',
    summary: 'Diagnose client startup, connection, login, graphics, and account problems in the right order.',
    audience: 'All players',
    readingTime: '10 min',
    icon: '08',
    related: ['getting-started', 'faq', 'pvp'],
    sections: [
      {
        id: 'diagnostic-order',
        title: 'Use a fixed diagnostic order',
        steps: [
          { title: 'Capture the exact symptom', text: 'Record the visible message, when it occurs, and whether the client closes or remains responsive.' },
          { title: 'Confirm prerequisites', text: 'Verify Windows, x86 Visual C++ 2010, DirectX June 2010, and a writable extracted client folder.' },
          { title: 'Confirm realm availability', text: 'Make sure the local or hosted server is running before changing client files.' },
          { title: 'Confirm client endpoint', text: 'The client package must be patched to the correct server address; same-machine offline play uses 127.0.0.1.' },
          { title: 'Confirm credentials', text: 'Use the game login from My Account, not the email address, with the same password.' },
          { title: 'Change one variable', text: 'Retest after each correction so the cause remains identifiable.' }
        ]
      },
      {
        id: 'startup',
        title: 'Client does not start',
        table: {
          columns: ['Symptom', 'Likely cause', 'Action'],
          rows: [
            ['Missing DLL message', 'Legacy runtime missing', 'Install Visual C++ 2010 Redistributable (x86) and DirectX June 2010'],
            ['Window flashes then closes', 'Wrong working directory or incomplete extraction', 'Use the supplied root launcher and re-extract the full client'],
            ['Access denied or patch failure', 'Protected install folder', 'Move the client to a writable user folder'],
            ['Security software blocks x2.exe', 'Historical unsigned executable flagged', 'Verify the package source, then allow only the known client folder if trusted'],
            ['Black screen or bad resolution', 'Legacy display mode incompatibility', 'Try a conservative resolution and disable overlays']
          ]
        }
      },
      {
        id: 'login-connection',
        title: 'Login and connection failures',
        bullets: [
          { title: 'Wrong username', text: 'The client expects the generated game login shown on My Account, not your email.' },
          { title: 'Wrong password after a change', text: 'Sign in on the website and use My Account to update the PostgreSQL web credential and game password together.' },
          { title: 'Cannot reach server', text: 'For offline play, start the database and all five game services before the client.' },
          { title: 'Incorrect endpoint', text: 'Rerun the approved connection patch for 127.0.0.1, LAN IP, or hosted server address.' },
          { title: 'LAN-only failure', text: 'Check Windows Firewall and whether the client is using the server PC’s LAN IPv4 address rather than localhost.' }
        ]
      },
      {
        id: 'in-game',
        title: 'In-game issues',
        bullets: [
          { title: 'Missing progression chest', text: 'Check the character inventory and available space. The grant is character-bound and protected from duplication.' },
          { title: 'Chest will not open', text: 'Confirm the required level and that every earlier chest in the linked chain was opened.' },
          { title: 'Quest appears stuck', text: 'Re-read difficulty, dungeon, item, and completion-rank requirements before repeating the run.' },
          { title: 'PvP desync or delay', text: 'Test a wired connection, reduce background traffic, recreate the room, and compare another host.' },
          { title: 'Character asset problem', text: 'Restart with the realm’s current patched client. Historical assets must match the server build.' }
        ]
      },
      {
        id: 'reporting',
        title: 'How to write a useful issue report',
        table: {
          columns: ['Include', 'Example'],
          rows: [
            ['Environment', 'Windows 11, same-machine offline server'],
            ['Exact time', '2026-07-01 19:42 Mountain Time'],
            ['Action sequence', 'Launch → login → character select → dungeon queue'],
            ['Visible result', 'Exact error text or screenshot'],
            ['Expected result', 'Character should enter the selected dungeon'],
            ['Reproduction rate', '3 of 3 attempts after restart'],
            ['Recent changes', 'Password changed, client repatched, or firewall updated']
          ]
        }
      }
    ]
  },
  {
    slug: 'glossary',
    title: 'Glossary & Quick Reference',
    shortTitle: 'Glossary',
    category: 'Reference',
    summary: 'Plain-language definitions for combat, progression, gear, and realm terminology.',
    audience: 'Quick reference',
    readingTime: '7 min',
    icon: '09',
    related: ['combat', 'equipment', 'progression'],
    sections: [
      {
        id: 'combat-terms',
        title: 'Combat terms',
        bullets: [
          { title: 'Active / Special Active', text: 'A slotted ability. Special Actives generally consume more MP and create larger combat effects.' },
          { title: 'Awakening', text: 'A temporary powered state activated after building its gauge.' },
          { title: 'Confirm', text: 'Recognizing that an opener hit before committing to the damaging follow-up.' },
          { title: 'Conversion', text: 'Turning an initial hit into a stable combo or skill sequence.' },
          { title: 'Knockdown', text: 'A state that ends or interrupts normal combo pressure; attacks can contribute different amounts toward it.' },
          { title: 'Neutral', text: 'The part of combat where neither side is currently trapped in a combo and both seek an opening.' },
          { title: 'Super armor', text: 'A state that can prevent normal flinching while the protected action continues.' },
          { title: 'Whiff punish', text: 'Attacking during recovery after an opponent’s move misses.' }
        ]
      },
      {
        id: 'progression-terms',
        title: 'Progression terms',
        bullets: [
          { title: 'ED', text: 'A primary in-game currency used by game systems and transactions.' },
          { title: 'EXP', text: 'Experience points used to increase character level.' },
          { title: 'Milestone cache', text: 'A JoySword reward chest unlocked at a specific level in the linked progression chain.' },
          { title: 'Henir / Time and Space', text: 'Endgame-oriented challenge and equipment language used by the historical build and JoySword reward track.' },
          { title: 'Capstone', text: 'The final level-65 reward and transition from leveling into build optimization.' },
          { title: 'Job path', text: 'A specialization that changes a base character’s skills, commands, and combat identity.' }
        ]
      },
      {
        id: 'gear-terms',
        title: 'Equipment terms',
        bullets: [
          { title: 'Enhancement', text: 'Increasing an equipment item’s enhancement level to improve its power.' },
          { title: 'Socket', text: 'A customizable stat slot on eligible equipment.' },
          { title: 'El Shard', text: 'An elemental material associated with Fire, Water, Nature, Wind, Light, or Dark attributes.' },
          { title: 'Set bonus', text: 'An effect activated by equipping the required pieces from one set.' },
          { title: 'Amulet / enhancement scroll', text: 'An item that applies a specified enhancement result under its stated restrictions.' },
          { title: 'Character-bound', text: 'An item intended for the character that received it rather than free transfer across the account.' }
        ]
      },
      {
        id: 'realm-terms',
        title: 'Realm and network terms',
        bullets: [
          { title: 'Game login', text: 'The legacy-safe username generated from your web identity and displayed in My Account.' },
          { title: 'Realm', text: 'The connected JoySword server environment containing account, lobby, game, and billing services.' },
          { title: 'P2P', text: 'Peer-to-peer traffic used by the historical PvP architecture for in-match communication.' },
          { title: 'Relay', text: 'An intermediary network route used when direct peer communication is not suitable.' },
          { title: 'Host', text: 'The client or room role coordinating parts of a historical multiplayer session.' },
          { title: 'Historical client', text: 'The older Elsword-era game build used by JoySword, with systems and content distinct from current retail releases.' }
        ]
      }
    ]
  }
];

export type FaqItem = {
  question: string;
  answer: string;
  category: 'Account' | 'Setup' | 'Gameplay' | 'Progression' | 'Cash Shop' | 'PvP' | 'Troubleshooting';
  links?: { label: string; href: string }[];
};

export const faqItems: FaqItem[] = [
  {
    category: 'Setup',
    question: 'Which operating systems are supported?',
    answer: 'Use 64-bit Windows 10 or Windows 11. The game and server executables are Windows binaries; macOS Wine or CrossOver is not a supported setup.'
  },
  {
    category: 'Setup',
    question: 'Which legacy runtimes are required?',
    answer: 'Install the x86 Microsoft Visual C++ 2010 Redistributable and the DirectX End-User Runtimes from June 2010.'
  },
  {
    category: 'Setup',
    question: 'Where should I extract the client?',
    answer: 'Use a normal writable folder with enough free space. Avoid protected locations such as Program Files when they prevent the launcher or patcher from writing files.'
  },
  {
    category: 'Setup',
    question: 'How do I launch the Windows client?',
    answer: 'Use the supplied Start-Client-Windows.bat from the package root. It starts x2.exe with the expected working directory and launch argument.'
  },
  {
    category: 'Setup',
    question: 'Does same-machine offline play require router port forwarding?',
    answer: 'No. When the server and client run on the same computer and the client is patched to 127.0.0.1, router forwarding is unnecessary.'
  },
  {
    category: 'Setup',
    question: 'Can another PC on my LAN connect?',
    answer: 'Yes when the client is patched to the server PC’s LAN IPv4 address and Windows Firewall permits the required game services. Do not use 127.0.0.1 from the second PC.'
  },
  {
    category: 'Gameplay',
    question: 'Which characters are available?',
    answer: 'The JoySword progression data supports eight base characters: Elsword, Aisha, Rena, Raven, Eve, Chung, Ara, and Elesis.',
    links: [{ label: 'Compare characters', href: '/wiki/characters' }]
  },
  {
    category: 'Gameplay',
    question: 'Which character is easiest for a beginner?',
    answer: 'Elsword is a strong fundamentals-first choice, but movement feel matters more than a universal difficulty ranking. Test range, jump arc, and basic commands before committing.'
  },
  {
    category: 'Gameplay',
    question: 'Are modern retail class guides accurate here?',
    answer: 'Only partially. JoySword uses a historical level-65 client. Modern fourth paths, later systems, balance values, and skill behavior may not exist in this build.'
  },
  {
    category: 'Gameplay',
    question: 'Why does my combo knock the enemy down?',
    answer: 'Commands contribute differently to knockdown. Repeated high-knockdown attacks can force the target down, so use a stable route and choose a deliberate endpoint.',
    links: [{ label: 'Learn combat', href: '/wiki/combat' }]
  },
  {
    category: 'Gameplay',
    question: 'Should I save all of my MP?',
    answer: 'No. MP has value when it creates a safe clear, a boss punish, or a confirmed PvP conversion. Keep a sensible defensive floor, but do not finish every encounter with unused resources.'
  },
  {
    category: 'Progression',
    question: 'What is the JoySword progression chest?',
    answer: 'Every new character receives one character-bound chest that begins a linked level 1–65 reward chain. Each milestone bundle grants the next level-gated chest.',
    links: [{ label: 'See all milestones', href: '/wiki/progression#milestones' }]
  },
  {
    category: 'Progression',
    question: 'Can I miss a milestone reward by leveling too quickly?',
    answer: 'No. An over-levelled character can claim missed milestones in sequence, provided the previous chest in the chain is opened first.'
  },
  {
    category: 'Progression',
    question: 'Why will my next chest not open?',
    answer: 'Check its required level and verify that the earlier chest was opened. The system intentionally uses one linked chain to avoid inventory clutter and duplicate grants.'
  },
  {
    category: 'Progression',
    question: 'What is the level cap for this progression track?',
    answer: 'The JoySword track ends at level 65 with the Vanguard capstone cache. Level 60 supplies Absolute Time and Space equipment.'
  },
  {
    category: 'Progression',
    question: 'Should I heavily enhance low-level gear?',
    answer: 'Usually not immediately before a known milestone replacement. Use the tier-appropriate support from progression caches and preserve scarce materials for equipment you will keep longer.',
    links: [{ label: 'Equipment strategy', href: '/wiki/equipment' }]
  },
  {
    category: 'Progression',
    question: 'Why do Ara and Elesis receive different early gear?',
    answer: 'The historical client does not contain valid early Henir sets for those later-added classes. Their caches use the strongest level-appropriate regional equipment instead.'
  },
  {
    category: 'Cash Shop',
    question: 'What makes the JoySword cash shop different?',
    answer: 'Its featured catalog is deliberately curated around useful collections: enhancement support, premium reveals, companions, mounts, Henir and Absolute equipment, secret-dungeon gear, and restored fashion packages.',
    links: [{ label: 'Enter the Collector’s Vault', href: '/wiki/cash-shop' }]
  },
  {
    category: 'Cash Shop',
    question: 'Which pets and mounts are featured?',
    answer: 'Featured companions include Miho, Firefox Shiho, Darkfox Naho, Wild Pocket Phoru, Mystic, and light or dark hatchlings. Mount stones include Moby Chariot RT, Cockatigle, and Ancient Phoru.'
  },
  {
    category: 'Cash Shop',
    question: 'Are Ice Burner rewards guaranteed?',
    answer: 'No guarantee should be assumed. Ice Burners, sealed sculptures, and similar premium cubes can be randomized. Use pool information shown by the live client and treat unavailable odds as unknown.'
  },
  {
    category: 'Cash Shop',
    question: 'Can I buy Henir equipment directly?',
    answer: 'The curated catalog exposes Time and Space tiers for Ruben, Elder, Bethma, Altera, Feita, Henir Ruler, and Absolute equipment where valid item and price data exists in this historical build.'
  },
  {
    category: 'Cash Shop',
    question: 'Should I buy upgrade materials before leveling?',
    answer: 'Check the next progression milestone first. JoySword’s level 1–65 chest chain already supplies equipment and enhancement support, so shop materials should solve a defined upgrade goal rather than duplicate an imminent reward.'
  },
  {
    category: 'Cash Shop',
    question: 'Which fashion collections are highlighted?',
    answer: 'The featured archive includes character-specific Patissier packages in multiple dessert colorways plus special packages such as Panda Bear — Red and Grim Reaper. Always verify character and slot compatibility.'
  },
  {
    category: 'PvP',
    question: 'Which PvP modes exist in this build?',
    answer: 'Repository configuration identifies team match, team deathmatch, survival, and tag mode. Availability can still depend on the active server configuration.'
  },
  {
    category: 'PvP',
    question: 'Why can PvP feel different with another host?',
    answer: 'The historical client appears to use host-oriented peer-to-peer traffic with relay fallback. Host quality, latency, Wi-Fi, and routing can affect how exchanges appear.'
  },
  {
    category: 'PvP',
    question: 'How should I prepare for competitive matches?',
    answer: 'Use a stable wired connection, close background transfers, build for reliable confirms and survival, and practice one short conversion before optimizing advanced routes.',
    links: [{ label: 'PvP guide', href: '/wiki/pvp' }]
  },
  {
    category: 'Troubleshooting',
    question: 'The client reports a missing DLL. What should I do?',
    answer: 'Install the x86 Visual C++ 2010 Redistributable and DirectX June 2010 runtime, then restart the launcher. Do not download individual DLL files from untrusted sites.'
  },
  {
    category: 'Troubleshooting',
    question: 'The client opens and immediately closes. What should I check?',
    answer: 'Use the supplied root launcher, confirm the full archive was extracted, move the client to a writable folder, and verify that security software did not quarantine a required file.'
  },
  {
    category: 'Troubleshooting',
    question: 'My credentials work on the website but not in the client.',
    answer: 'Confirm you are entering the generated game login rather than your email. If you recently changed the password outside My Account, sign in and use the coordinated password-change workflow to repair synchronization.'
  },
  {
    category: 'Troubleshooting',
    question: 'What information belongs in a bug report?',
    answer: 'Include Windows version, server topology, exact time, action sequence, visible error, expected behavior, reproduction rate, and any recent account, client, firewall, or patch changes.',
    links: [{ label: 'Troubleshooting guide', href: '/wiki/troubleshooting#reporting' }]
  }
];

export const wikiNav = [
  { label: 'Wiki overview', href: '/wiki', category: 'Start here' },
  ...wikiPages.map((page) => ({
    label: page.shortTitle,
    href: `/wiki/${page.slug}`,
    category: page.category
  })),
  { label: 'FAQ', href: '/wiki/faq', category: 'Reference' }
];

export function getWikiPage(slug: string): WikiPage | undefined {
  return wikiPages.find((page) => page.slug === slug);
}
