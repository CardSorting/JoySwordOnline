import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { wikiPages, faqItems, progressionMilestones } from '../src/content/wiki';
import { iceBurnerSets } from '../src/content/iceBurnerSets';

function renderHeaderHtml(activePath: string): string {
  return `
    <header class="site-header">
      <a class="brand" href="/" aria-label="JoySword home">
        <span class="brand-mark" aria-hidden="true">
          <img src="/joysword-icon-64.webp" alt="JoySword logo" width={43} height={43} loading="eager" />
        </span>
        <span class="brand-copy">
          <strong>JoySword</strong>
          <small>Private realm</small>
        </span>
      </a>
      <nav class="desktop-nav" aria-label="Primary navigation">
        <a href="/#features">Features</a>
        <a href="/#characters">Characters</a>
        <a href="/#exploration">World Map</a>
        <a href="/anime" class="${activePath === '/anime' ? 'is-active' : ''}">Anime</a>
        <a href="/community" class="${activePath === '/community' ? 'is-active' : ''}">Community</a>
        <a href="/download" class="${activePath === '/download' ? 'is-active' : ''}">Download</a>
        <a href="/wiki" class="${activePath.startsWith('/wiki') ? 'is-active' : ''}">Wiki</a>
      </nav>
      <a class="nav-cta" href="/download">
        Download client <span aria-hidden="true">→</span>
      </a>
    </header>
  `;
}

function renderFooterHtml(): string {
  return `
    <footer class="site-footer">
      <div class="footer-main">
        <a class="brand footer-brand" href="/">
          <span class="brand-mark" aria-hidden="true">
            <img src="/joysword-icon-64.webp" alt="JoySword logo" width={43} height={43} />
          </span>
          <span class="brand-copy">
            <strong>JoySword</strong>
            <small>Forge your legend</small>
          </span>
        </a>
        <p class="footer-copy">
          A community-hosted online private server for players who still believe the
          best adventures are shared.
        </p>
        <nav aria-label="Footer navigation">
          <div>
            <small>Explore</small>
            <a href="/#features">Features</a>
            <a href="/#characters">Characters</a>
            <a href="/#exploration">World Map</a>
            <a href="/wiki">Player Wiki</a>
          </div>
          <div>
            <small>Play</small>
            <a href="/download">Get the Client</a>
            <a href="/">Server Status</a>
          </div>
        </nav>
      </div>
      <div class="footer-bottom">
        <p>JoySword is a fan-operated private server. All referenced game properties belong to their respective owners.</p>
        <a href="#">Back to top ↑</a>
      </div>
    </footer>
  `;
}

function renderWikiLayoutHtml(contentHtml: string, activePath: string): string {
  let sidebarGroupsHtml = '';
  
  // Group by category
  const categories = ['Start here', 'Core guide', 'Advanced', 'Reference'];
  categories.forEach((cat) => {
    sidebarGroupsHtml += `<div class="wiki-nav-group"><small>${cat}</small>`;
    
    if (cat === 'Start here') {
      sidebarGroupsHtml += `<a href="/wiki" class="${activePath === '/wiki' ? 'is-active' : ''}">Wiki Home</a>`;
    }
    
    wikiPages.filter(p => p.category === cat).forEach((page) => {
      const pagePath = `/wiki/${page.slug}`;
      sidebarGroupsHtml += `<a href="${pagePath}" class="${activePath === pagePath ? 'is-active' : ''}">${page.shortTitle}</a>`;
    });
    
    if (cat === 'Reference') {
      sidebarGroupsHtml += `<a href="/wiki/faq" class="${activePath === '/wiki/faq' ? 'is-active' : ''}">FAQs</a>`;
      sidebarGroupsHtml += `<a href="/wiki/cash-shop/ice-burner" class="${activePath.startsWith('/wiki/cash-shop/ice-burner') ? 'is-active' : ''}">Ice Burners</a>`;
    }
    
    sidebarGroupsHtml += `</div>`;
  });

  return `
    <div class="wiki-root">
      <div class="wiki-layout">
        <aside class="wiki-sidebar">
          <div class="wiki-sidebar-heading">
            <span><i>W</i></span>
            <div>
              <strong>JoySword Wiki</strong>
              <small>v1.0.0 Archive</small>
            </div>
          </div>
          ${sidebarGroupsHtml}
        </aside>
        <div class="wiki-main">
          ${contentHtml}
        </div>
      </div>
    </div>
  `;
}

function renderHomeBody(): string {
  return `
    <main class="site-shell" id="main-content">
      <section id="home" class="hero-section">
        <div class="hero-content">
          <p class="eyebrow">Online anime action MMORPG</p>
          <h1>JoySword</h1>
          <p class="hero-tagline">Your legend. Your blade. Your world.</p>
          <p class="hero-copy">
            Enter a community-hosted private server where high-speed combat, classic
            progression, and unforgettable heroes meet in one living online realm.
          </p>
          <div class="hero-actions">
            <a class="button button-primary" href="/download">Download client</a>
            <a class="button button-secondary" href="#exploration">World map</a>
          </div>
        </div>
      </section>
      <section id="features" class="features-section">
        <h2>Experience the realm in action.</h2>
        <ul>
          <li><strong>Precision combat</strong>: Combine light attacks, heavy launchers, and special active skills.</li>
          <li><strong>8 classic characters</strong>: Elsword, Aisha, Rena, Raven, Eve, Chung, Ara, and Elesis.</li>
          <li><strong>Level 65 progression</strong>: Relive classic equipment milestones: Altera dungeons, Henir’s Time and Space.</li>
          <li><strong>Zero database reliance</strong>: Offline-ready statically served client downloads.</li>
          <li><strong>Private client updates</strong>: Launcher syncs verified configurations and diagnostic fixes locally.</li>
          <li><strong>Community world</strong>: Join a player-focused private server realm.</li>
        </ul>
      </section>
    </main>
  `;
}

function renderDownloadBody(): string {
  return `
    <main class="site-shell download-page" id="main-content">
      <section class="download-hero">
        <p class="eyebrow">Official release channel</p>
        <h1>Enter the realm.</h1>
        <p>Download the current JoySword Windows release directly from our protected Azure storage.</p>
        <div class="download-hero-actions">
          <a class="button button-primary" href="#downloads">Choose a download</a>
          <a class="button button-secondary" href="/download/install">Installation guide</a>
        </div>
      </section>
      <section class="download-install">
        <h2>From download to battle.</h2>
        <ol>
          <li><strong>Download</strong>: Choose the full client for a new installation.</li>
          <li><strong>Extract</strong>: Move the ZIP to a writable folder such as C:\\Games, then extract everything.</li>
          <li><strong>Launch</strong>: Run JoySword Launcher.exe and apply launcher updates.</li>
          <li><strong>Sign in</strong>: Use the default server credentials to enter the game.</li>
        </ol>
      </section>
    </main>
  `;
}

function renderInstallBody(): string {
  return `
    <main class="site-shell download-page install-guide-page" id="main-content">
      <section class="store-product">
        <h1>JoySword Installation Guide</h1>
        <p>Enter a persistent anime action MMORPG realm with fast combo combat, classic character progression, and community-hosted online services.</p>
      </section>
      <section id="full-install">
        <h2>New Installation Steps</h2>
        <ol>
          <li><strong>Download the full client</strong>: Choose "Full client + launcher" on the downloads page.</li>
          <li><strong>Verify the download</strong>: Compare the file's SHA-256 result with the published checksum.</li>
          <li><strong>Extract every file</strong>: Extract the ZIP to C:\\Games\\JoySword.</li>
          <li><strong>Open the launcher</strong>: Run JoySword Launcher.exe from the extracted folder.</li>
          <li><strong>Repair and launch</strong>: Run verify and let the launcher connect you to the server.</li>
        </ol>
      </section>
      <section id="system-requirements">
        <h2>System Requirements</h2>
        <table>
          <thead>
            <tr><th>Component</th><th>Minimum</th><th>Recommended</th></tr>
          </thead>
          <tbody>
            <tr><td>OS</td><td>Windows 10 64-bit</td><td>Windows 11 64-bit</td></tr>
            <tr><td>Processor</td><td>Intel Core i3 / Ryzen 3</td><td>Intel Core i5 / Ryzen 5</td></tr>
            <tr><td>Memory</td><td>4 GB RAM</td><td>8 GB RAM</td></tr>
            <tr><td>Graphics</td><td>DirectX 11, 1 GB VRAM</td><td>DirectX 11, 2 GB VRAM</td></tr>
            <tr><td>Storage</td><td>20 GB available</td><td>30 GB SSD</td></tr>
          </tbody>
        </table>
      </section>
    </main>
  `;
}

function renderAnimeBody(): string {
  return `
    <main class="anime-page-container">
      <section class="netflix-hero-banner">
        <h1>ELSWORD: EL LADY Animated Series</h1>
        <p>When the life-giving El Crystal is shattered and stolen, Elsword leads a chosen search party of warriors across the continent to reclaim it.</p>
      </section>
      <section class="netflix-episodes-section">
        <h2>Episode Guide</h2>
        <ul>
          <li><strong>Episode 1: El Search Party</strong> - Elsword and friends pursue the bandits who stole the El Crystal.</li>
          <li><strong>Episode 2: Suspicious Company</strong> - The party confronts engineered mechanical cave defenses.</li>
          <li><strong>Episode 3: A New Power</strong> - The warriors unlock their jobs and inner resonance.</li>
          <li><strong>Episode 4: Nasod King</strong> - The party confronts the massive Nasod Core robot.</li>
          <li><strong>Episode 5: The Southern Gate</strong> - Joining the Velder capital defense against demon portals.</li>
          <li><strong>Episode 6: Velder's Fall</strong> - Elsword stands alone to buy time for escaping citizens.</li>
          <li><strong>Episode 7: Temple of Frozen Water</strong> - Seeking the water sanctum in Hamel capital.</li>
          <li><strong>Episode 8: Water El Priest</strong> - Chung joins utilizing his heavy cannon.</li>
          <li><strong>Episode 9: Land of Sander</strong> - Navigating the wind sandstorms in Sander desert.</li>
          <li><strong>Episode 10: Demon King Ran</strong> - Ara confronts her corrupted brother Aren.</li>
          <li><strong>Episode 11: Sander's Storm</strong> - Sealing the Behemoth aboard the sand cruiser.</li>
          <li><strong>Episode 12: The Lady of El</strong> - The final confrontation to restore the El core.</li>
        </ul>
      </section>
    </main>
  `;
}

function renderCommunityBody(): string {
  return `
    <main class="site-shell community-page" id="main-content">
      <section class="community-hero">
        <h1>JoySword Community & Discord Portal</h1>
        <p>Connect with a community of software engineers, developers, and players hosting classic offline game client stacks.</p>
        <p><a href="https://discord.gg/tUPWgEWPPC">Join Developer Discord Server</a></p>
      </section>
      <section class="community-log-section">
        <h2>Interactive Bot Console queries:</h2>
        <ul>
          <li><code>!status</code>: Check 52.238.194.187 server status.</li>
          <li><code>!online</code>: Query active players count.</li>
          <li><code>!patch</code>: Check v1.0.0 patch integrity status.</li>
        </ul>
      </section>
    </main>
  `;
}

function renderWikiHomeBody(): string {
  let tableRows = '';
  progressionMilestones.forEach(([lvl, title, desc]) => {
    tableRows += `<tr><td>Lv. ${lvl}</td><td><strong>${title}</strong></td><td>${desc}</td></tr>`;
  });

  return `
    <main class="wiki-root">
      <section class="wiki-hero">
        <h1>Learn the realm. Master your path.</h1>
        <p>A version-aware player wiki for JoySword level-65 classic build, equipment progression, and local server diagnostics.</p>
      </section>
      <section class="wiki-paths">
        <h2>Recommended Learning Routes</h2>
        <ul>
          <li><a href="/wiki/getting-started">Start from zero</a>: Installation and client setup guide.</li>
          <li><a href="/wiki/progression">Find the next goal</a>: Level 1–65 equipment map.</li>
          <li><a href="/wiki/combat">Optimize execution</a>: Refine movement and combos.</li>
        </ul>
      </section>
      <section class="wiki-milestones">
        <h2>Progression Milestones</h2>
        <table>
          <thead>
            <tr><th>Level</th><th>Reward Cache</th><th>Contents</th></tr>
          </thead>
          <tbody>
            ${tableRows}
          </tbody>
        </table>
      </section>
    </main>
  `;
}

function renderWikiArticleBody(page: any): string {
  let html = `
    <article class="wiki-article">
      <header class="wiki-article-header">
        <p class="wiki-kicker">${page.category}</p>
        <h1>${page.title}</h1>
        <p class="wiki-summary">${page.summary}</p>
        <p>Audience: ${page.audience} | Reading Time: ${page.readingTime}</p>
      </header>
      <div class="wiki-article-body">
  `;

  page.sections.forEach((section: any) => {
    html += `
        <section id="${section.id}">
          <h2>${section.title}</h2>
    `;
    if (section.intro) {
      html += `    <p>${section.intro}</p>\n`;
    }
    if (section.paragraphs) {
      section.paragraphs.forEach((p: string) => {
        html += `    <p>${p}</p>\n`;
      });
    }
    if (section.bullets) {
      html += `    <ul>\n`;
      section.bullets.forEach((b: any) => {
        html += `      <li><strong>${b.title}</strong>: ${b.text}</li>\n`;
      });
      html += `    </ul>\n`;
    }
    if (section.steps) {
      html += `    <ol>\n`;
      section.steps.forEach((s: any) => {
        html += `      <li><strong>${s.title}</strong>: ${s.text}</li>\n`;
      });
      html += `    </ol>\n`;
    }
    if (section.table) {
      html += `    <table>\n`;
      html += `      <thead><tr>\n`;
      section.table.columns.forEach((col: string) => {
        html += `        <th>${col}</th>\n`;
      });
      html += `      </tr></thead>\n`;
      html += `      <tbody>\n`;
      section.table.rows.forEach((row: string[]) => {
        html += `        <tr>\n`;
        row.forEach((cell: string) => {
          html += `          <td>${cell}</td>\n`;
        });
        html += `        </tr>\n`;
      });
      html += `      </tbody>\n`;
      html += `    </table>\n`;
    }
    if (section.note) {
      html += `    <aside class="wiki-callout ${section.note.tone}">\n`;
      html += `      <strong>${section.note.title}</strong>\n`;
      html += `      <p>${section.note.text}</p>\n`;
      html += `    </aside>\n`;
    }
    html += `  </section>\n`;
  });

  html += `
      </div>
    </article>
  `;
  return html;
}

function renderWikiFaqBody(): string {
  let faqList = '';
  faqItems.forEach((item) => {
    faqList += `
      <div class="faq-item">
        <h3>Q: ${item.question}</h3>
        <p>A: ${item.answer}</p>
      </div>
    `;
  });

  return `
    <article class="wiki-article wiki-faq-page">
      <h1>Frequently asked questions</h1>
      <p>Clear answers for account access, Windows setup, gameplay, and common client problems.</p>
      <div class="faq-list">
        ${faqList}
      </div>
    </article>
  `;
}

function renderIceBurnerGalleryBody(): string {
  let cards = '';
  iceBurnerSets.forEach((set) => {
    cards += `
      <div class="ice-set-card">
        <h3>${set.name}</h3>
        <p><strong>${set.epithet}</strong></p>
        <p>${set.summary}</p>
        <p>Availability: ${set.availability}</p>
        <p><a href="/wiki/cash-shop/ice-burner/${set.slug}">Open costume details</a></p>
      </div>
    `;
  });

  return `
    <article class="ice-archive">
      <h1>Ice Burner Costume Gallery</h1>
      <p>Rare costume sets reconstructed from the permanent pool tables verified locally.</p>
      <div class="ice-set-grid">
        ${cards}
      </div>
    </article>
  `;
}

function renderIceBurnerDetailBody(set: any): string {
  let piecesList = '';
  set.pieces.forEach((p: string) => {
    piecesList += `<li>${p}</li>`;
  });

  let signatureList = '';
  set.signature.forEach((s: string) => {
    signatureList += `<li>${s}</li>`;
  });

  return `
    <article class="ice-set-page">
      <header class="ice-set-heading">
        <h1>${set.name}</h1>
        <strong>${set.epithet}</strong>
        <p>${set.summary}</p>
      </header>
      <section>
        <h2>General Information</h2>
        <ul>
          <li><strong>Availability</strong>: ${set.availability}</li>
          <li><strong>Characters</strong>: ${set.characters.join(', ')}</li>
          <li><strong>Theme Palette</strong>: ${set.palette.join(', ')}</li>
        </ul>
      </section>
      <section>
        <h2>Costume Pieces</h2>
        <ul>
          ${piecesList}
        </ul>
      </section>
      <section>
        <h2>Signature Highlights</h2>
        <ul>
          ${signatureList}
        </ul>
      </section>
      <p><em>Archive Note: ${set.archiveNote}</em></p>
    </article>
  `;
}

// Resolve directory name in ESM
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Base Site URL configuration
const siteUrl = (process.env.VITE_SITE_URL || process.env.NEXT_PUBLIC_SITE_URL || 'https://onjoysword.top').replace(/\/$/, '');

console.log(`[SEO Generator] Using Base URL: ${siteUrl}`);

// Define all routes
interface RouteConfig {
  path: string;
  title: string;
  description: string;
  keywords: string[];
  jsonLd?: Record<string, any> | Record<string, any>[];
  ogImage?: string;
  bodyHtml?: string;
  priority: string;
  changefreq: string;
}

const siteNavigationSchema = {
  '@context': 'https://schema.org',
  '@graph': [
    {
      '@type': 'SiteNavigationElement',
      '@id': `${siteUrl}/#nav-home`,
      'name': 'Home',
      'url': `${siteUrl}/`
    },
    {
      '@type': 'SiteNavigationElement',
      '@id': `${siteUrl}/#nav-download`,
      'name': 'Download client',
      'url': `${siteUrl}/download`
    },
    {
      '@type': 'SiteNavigationElement',
      '@id': `${siteUrl}/#nav-install`,
      'name': 'Installation guide',
      'url': `${siteUrl}/download/install`
    },
    {
      '@type': 'SiteNavigationElement',
      '@id': `${siteUrl}/#nav-anime`,
      'name': 'Animated series',
      'url': `${siteUrl}/anime`
    },
    {
      '@type': 'SiteNavigationElement',
      '@id': `${siteUrl}/#nav-community`,
      'name': 'Community & Discord',
      'url': `${siteUrl}/community`
    },
    {
      '@type': 'SiteNavigationElement',
      '@id': `${siteUrl}/#nav-wiki`,
      'name': 'Player Wiki',
      'url': `${siteUrl}/wiki`
    }
  ]
};

const layoutHeaderSchema = {
  '@context': 'https://schema.org',
  '@type': 'WPHeader',
  'name': 'JoySword Portal Header',
  'description': 'Main navigation bar and game entry point registration links.'
};

const layoutFooterSchema = {
  '@context': 'https://schema.org',
  '@type': 'WPFooter',
  'copyrightYear': '2026',
  'copyrightHolder': {
    '@type': 'Organization',
    'name': 'JoySword Private Server Community'
  }
};

const sourceCodeSchema = {
  '@context': 'https://schema.org',
  '@type': 'SoftwareSourceCode',
  'name': 'JoySword Offline Client Launcher & Portal',
  'description': 'Historical game client configuration files and batch launcher scripts for local offline execution.',
  'programmingLanguage': {
    '@type': 'ComputerLanguage',
    'name': 'TypeScript',
    'url': 'https://www.typescriptlang.org/'
  },
  'codeRepository': 'https://onjoysword.top/community',
  'targetProduct': {
    '@type': 'SoftwareApplication',
    'name': 'JoySword Launcher',
    'operatingSystem': 'Windows 10, Windows 11'
  }
};

const homeBreadcrumb = {
  '@context': 'https://schema.org',
  '@type': 'BreadcrumbList',
  'itemListElement': [
    { '@type': 'ListItem', position: 1, 'name': 'Portal Home', 'item': `${siteUrl}/` }
  ]
};

const downloadBreadcrumb = {
  '@context': 'https://schema.org',
  '@type': 'BreadcrumbList',
  'itemListElement': [
    { '@type': 'ListItem', position: 1, 'name': 'Portal Home', 'item': `${siteUrl}/` },
    { '@type': 'ListItem', position: 2, 'name': 'Download', 'item': `${siteUrl}/download` }
  ]
};

const installBreadcrumb = {
  '@context': 'https://schema.org',
  '@type': 'BreadcrumbList',
  'itemListElement': [
    { '@type': 'ListItem', position: 1, 'name': 'Portal Home', 'item': `${siteUrl}/` },
    { '@type': 'ListItem', position: 2, 'name': 'Download', 'item': `${siteUrl}/download` },
    { '@type': 'ListItem', position: 3, 'name': 'Install Guide', 'item': `${siteUrl}/download/install` }
  ]
};

const animeBreadcrumb = {
  '@context': 'https://schema.org',
  '@type': 'BreadcrumbList',
  'itemListElement': [
    { '@type': 'ListItem', position: 1, 'name': 'Portal Home', 'item': `${siteUrl}/` },
    { '@type': 'ListItem', position: 2, 'name': 'Animated Series', 'item': `${siteUrl}/anime` }
  ]
};

const communityBreadcrumb = {
  '@context': 'https://schema.org',
  '@type': 'BreadcrumbList',
  'itemListElement': [
    { '@type': 'ListItem', position: 1, 'name': 'Portal Home', 'item': `${siteUrl}/` },
    { '@type': 'ListItem', position: 2, 'name': 'Community', 'item': `${siteUrl}/community` }
  ]
};

const wikiIndexBreadcrumb = {
  '@context': 'https://schema.org',
  '@type': 'BreadcrumbList',
  'itemListElement': [
    { '@type': 'ListItem', position: 1, 'name': 'Portal Home', 'item': `${siteUrl}/` },
    { '@type': 'ListItem', position: 2, 'name': 'Player Wiki', 'item': `${siteUrl}/wiki` }
  ]
};

const faqBreadcrumb = {
  '@context': 'https://schema.org',
  '@type': 'BreadcrumbList',
  'itemListElement': [
    { '@type': 'ListItem', position: 1, 'name': 'Portal Home', 'item': `${siteUrl}/` },
    { '@type': 'ListItem', position: 2, 'name': 'Player Wiki', 'item': `${siteUrl}/wiki` },
    { '@type': 'ListItem', position: 3, 'name': 'FAQs', 'item': `${siteUrl}/wiki/faq` }
  ]
};

const iceBurnerIndexBreadcrumb = {
  '@context': 'https://schema.org',
  '@type': 'BreadcrumbList',
  'itemListElement': [
    { '@type': 'ListItem', position: 1, 'name': 'Portal Home', 'item': `${siteUrl}/` },
    { '@type': 'ListItem', position: 2, 'name': 'Player Wiki', 'item': `${siteUrl}/wiki` },
    { '@type': 'ListItem', position: 3, 'name': 'Cash Shop', 'item': `${siteUrl}/wiki/cash-shop` },
    { '@type': 'ListItem', position: 4, 'name': 'Ice Burner Gallery', 'item': `${siteUrl}/wiki/cash-shop/ice-burner` }
  ]
};

const routes: RouteConfig[] = [];

// 1. Static pages
const websiteSchema = {
  '@context': 'https://schema.org',
  '@type': 'WebSite',
  'name': 'JoySword',
  'url': siteUrl,
  'description': 'Play JoySword, a community-hosted classic anime action MMORPG realm with fast combat, meaningful progression, and a detailed player wiki.',
  'potentialAction': {
    '@type': 'SearchAction',
    'target': `${siteUrl}/wiki?q={search_term_string}`,
    'query-input': 'required name=search_term_string'
  }
};

const playableCharacters = [
  { '@type': 'PlayableCharacter', 'name': 'Elsword', 'description': 'Close-range sword combatant' },
  { '@type': 'PlayableCharacter', 'name': 'Aisha', 'description': 'Wide-area elemental mage' },
  { '@type': 'PlayableCharacter', 'name': 'Rena', 'description': 'Long-range archer and martial artist' },
  { '@type': 'PlayableCharacter', 'name': 'Raven', 'description': 'Fast mechanical arm slash specialist' },
  { '@type': 'PlayableCharacter', 'name': 'Eve', 'description': 'Nasod summoner and electron blaster' },
  { '@type': 'PlayableCharacter', 'name': 'Chung', 'description': 'Heavy cannon guardian' },
  { '@type': 'PlayableCharacter', 'name': 'Ara', 'description': 'Spear martial artist' },
  { '@type': 'PlayableCharacter', 'name': 'Elesis', 'description': 'Fiery claymore knight' }
];

const gameSchema = {
  '@context': 'https://schema.org',
  '@type': 'VideoGame',
  'name': 'JoySword',
  'description': 'A community-hosted classic anime action MMORPG realm featuring high-speed action combat, job systems, and active multiplayer.',
  'genre': ['Action RPG', 'MMORPG', 'Anime'],
  'playMode': ['SinglePlayer', 'MultiPlayer'],
  'gamePlatform': ['Windows PC'],
  'applicationCategory': 'Game',
  'operatingSystem': 'Windows 10, Windows 11',
  'character': playableCharacters
};

const downloadSchema = {
  '@context': 'https://schema.org',
  '@type': 'SoftwareApplication',
  'name': 'JoySword Client & Launcher',
  'operatingSystem': 'Windows 10, Windows 11',
  'applicationCategory': 'GameApplication',
  'downloadUrl': 'https://manifest.onjoysword.top/releases/1.5.0/JoySword-Launcher-Setup-1.5.0-x64.exe',
  'fileSize': '93MB',
  'softwareVersion': '1.5.0',
  'offers': {
    '@type': 'Offer',
    'price': '0',
    'priceCurrency': 'USD'
  }
};

routes.push({
  path: '/',
  title: 'JoySword — Classic Anime Action MMORPG Realm',
  description: 'Play JoySword, a community-hosted classic anime action MMORPG realm with fast combat, meaningful progression, a secure account portal, and a detailed player wiki.',
  keywords: ['joysword', 'elsword', 'private server', 'anime mmorpg', 'classic elsword', 'offline elsword', 'action rpg', 'retro gaming', 'co-op', 'pvp'],
  jsonLd: [websiteSchema, gameSchema, homeBreadcrumb],
  bodyHtml: renderHomeBody(),
  priority: '1.0',
  changefreq: 'daily'
});

routes.push({
  path: '/download',
  title: 'Download the Windows Client | JoySword',
  description: 'Download the official JoySword game client and portable launcher for Windows. Secure Azure-hosted download links with integrity SHA-256 checksums.',
  keywords: ['download joysword', 'joysword download', 'elsword client download', 'joysword launcher', 'joysword zip', 'sha-256 checksum'],
  jsonLd: [downloadSchema, downloadBreadcrumb],
  bodyHtml: renderDownloadBody(),
  priority: '0.8',
  changefreq: 'weekly'
});

const howToSteps = [
  {
    title: 'Download the full client',
    copy: 'Open the official download page and choose “Full client + launcher.” Keep the ZIP in your Downloads folder until it finishes.',
    detail: 'All downloads are hosted securely on our R2 bucket. If an interrupted download will not resume, refresh the page.'
  },
  {
    title: 'Verify the download',
    copy: 'Compare the file’s SHA-256 result with the checksum displayed below the download button.',
    detail: 'Open PowerShell in Downloads and run the Get-FileHash command shown in the verification panel below.'
  },
  {
    title: 'Extract every file',
    copy: 'Right-click the ZIP, choose “Extract All,” and use a short writable path such as C:\\Games\\JoySword.',
    detail: 'Avoid extracting to Program Files, temporary folders, or cloud-synced folders like OneDrive.'
  },
  {
    title: 'Open the launcher',
    copy: 'Open the extracted JoySword folder and run “JoySword Launcher.exe.”',
    detail: 'The launcher should discover the neighboring data folder automatically. The folder is valid when data\\x2.exe exists inside it.'
  },
  {
    title: 'Repair and launch',
    copy: 'Let the launcher verify the installation, choose your display settings, then select Launch.',
    detail: 'Sign in using your configured credentials. The launcher automatically points the client to our public online servers.'
  }
];

const howToSchema = {
  '@context': 'https://schema.org',
  '@type': 'HowTo',
  name: 'Install the JoySword client and launcher on Windows',
  description: 'Download, verify, extract, configure, and launch the JoySword Windows client.',
  totalTime: 'PT20M',
  supply: [
    { '@type': 'HowToSupply', name: 'JoySword portal account' },
    { '@type': 'HowToSupply', name: 'JoySword full client ZIP' }
  ],
  tool: [{ '@type': 'HowToTool', name: 'Windows 10 or Windows 11 PC' }],
  step: howToSteps.map((step, index) => ({
    '@type': 'HowToStep',
    position: index + 1,
    name: step.title,
    text: `${step.copy} ${step.detail}`,
    url: `${siteUrl}/download/install#step-${index + 1}`
  }))
};

routes.push({
  path: '/download/install',
  title: 'How to Install JoySword on Windows | JoySword',
  description: 'Step-by-step installation guide for JoySword on Windows. Learn how to download, verify SHA-256 checksums, extract client folders, and configure the launcher.',
  keywords: ['install joysword', 'joysword guide', 'how to install elsword', 'extract joysword client', 'launcher troubleshooting', 'smartscreen warning'],
  jsonLd: [howToSchema, installBreadcrumb],
  bodyHtml: renderInstallBody(),
  priority: '0.8',
  changefreq: 'weekly'
});

const episodes = [
  { ep: 1, title: "El Search Party", desc: "Elsword and friends pursue the bandits who stole the El Crystal.", duration: "PT12M" },
  { ep: 2, title: "Suspicious Company", desc: "The party confronts engineered mechanical cave defenses.", duration: "PT12M" },
  { ep: 3, title: "A New Power", desc: "The warriors unlock their jobs and inner resonance.", duration: "PT12M" },
  { ep: 4, title: "Nasod King", desc: "The party confronts the massive Nasod Core robot.", duration: "PT12M" },
  { ep: 5, title: "The Southern Gate", desc: "Joining the Velder capital defense against demon portals.", duration: "PT12M" },
  { ep: 6, title: "Velder's Fall", desc: "Elsword stands alone to buy time for escaping citizens.", duration: "PT12M" },
  { ep: 7, title: "Temple of Frozen Water", desc: "Seeking the water sanctum in Hamel capital.", duration: "PT12M" },
  { ep: 8, title: "Water El Priest", desc: "Chung joins utilizing his heavy cannon.", duration: "PT12M" },
  { ep: 9, title: "Land of Sander", desc: "Navigating the wind sandstorms in Sander desert.", duration: "PT12M" },
  { ep: 10, title: "Demon King Ran", desc: "Ara confronts her corrupted brother Aren.", duration: "PT12M" },
  { ep: 11, title: "Sander's Storm", desc: "Sealing the Behemoth aboard the sand cruiser.", duration: "PT12M" },
  { ep: 12, title: "The Lady of El", desc: "The final confrontation to restore the El core.", duration: "PT12M" }
];

const seriesSchema = {
  '@context': 'https://schema.org',
  '@type': 'CreativeWorkSeries',
  'name': 'Elsword: El Lady',
  'description': 'A 12-episode animated series based on the global high-speed anime MMORPG following Elsword and the search party.',
  'genre': ['Fantasy', 'Action', 'Sci-Fi'],
  'numberOfEpisodes': 12,
  'author': {
    '@type': 'Organization',
    'name': 'KOG Games'
  },
  'publisher': {
    '@type': 'Organization',
    'name': 'Nexon'
  }
};

const videoSchemas = episodes.map((ep) => ({
  '@context': 'https://schema.org',
  '@type': 'VideoObject',
  'name': `Elsword: El Lady - Episode ${ep.ep}: ${ep.title}`,
  'description': ep.desc,
  'thumbnailUrl': `${siteUrl}/theater-poster.webp`,
  'uploadDate': '2026-07-01T00:00:00Z',
  'duration': ep.duration,
  'contentUrl': `${siteUrl}/anime`
}));

routes.push({
  path: '/anime',
  title: 'JoySword — Elsword: El Lady Animated Series',
  description: 'Watch the complete 12-episode Elsword: El Lady animated series in 1080p HD. Join the live watch party chat, read detailed episode summaries, and study the lore.',
  keywords: ['elsword anime', 'el lady anime', 'elsword animation', 'watch elsword series', 'el search party anime', 'dr movie elsword'],
  jsonLd: [seriesSchema, animeBreadcrumb, ...videoSchemas],
  bodyHtml: renderAnimeBody(),
  priority: '0.6',
  changefreq: 'monthly'
});

routes.push({
  path: '/community',
  title: 'Community Realm & Discord | JoySword',
  description: 'Join the JoySword developer community watch party. Connect with other players on Discord, test the interactive bot console, and review server logs and statuses.',
  keywords: ['joysword community', 'joysword discord', 'joysword bot console', 'private server community', 'retro gaming developers'],
  jsonLd: [sourceCodeSchema, communityBreadcrumb],
  bodyHtml: renderCommunityBody(),
  priority: '0.5',
  changefreq: 'weekly'
});

const wikiCollectionSchema = {
  '@context': 'https://schema.org',
  '@type': 'CollectionPage',
  'name': 'JoySword Player Wiki',
  'description': 'A comprehensive collection of guides, tutorials, FAQs, and database references for the JoySword classic anime action MMORPG.',
  'url': `${siteUrl}/wiki`
};

routes.push({
  path: '/wiki',
  title: 'Player Wiki | JoySword',
  description: 'JoySword Player Wiki. Access version-aware guides for every stage of play: client setup, character pathing, combat execution, absolute gear milestones, and FAQs.',
  keywords: ['joysword wiki', 'elsword wiki', 'joysword database', 'joysword progression', 'combat guide elsword', 'henir gear'],
  jsonLd: [wikiCollectionSchema, wikiIndexBreadcrumb],
  bodyHtml: renderWikiHomeBody(),
  priority: '0.7',
  changefreq: 'weekly'
});

// Dynamic Wiki Articles
wikiPages.forEach((page) => {
  let articleSchema: any;
  if (page.category === 'Start here' || page.sections.some((s: any) => s.steps)) {
    const steps = page.sections.find((s: any) => s.steps)?.steps || [];
    articleSchema = {
      '@context': 'https://schema.org',
      '@type': 'HowTo',
      'name': `${page.title} | JoySword Wiki`,
      'description': page.summary,
      'step': steps.map((s: any, idx: number) => ({
        '@type': 'HowToStep',
        'url': `${siteUrl}/wiki/${page.slug}#${page.sections.find((sec: any) => sec.steps)?.id || 'step'}-${idx + 1}`,
        'name': s.title,
        'text': s.text
      }))
    };
    if (steps.length === 0) {
      articleSchema = {
        '@context': 'https://schema.org',
        '@type': 'TechArticle',
        'headline': `${page.title} | JoySword Wiki`,
        'description': page.summary,
        'audience': { '@type': 'Audience', 'audienceType': page.audience },
        'timeRequired': page.readingTime ? `PT${page.readingTime.replace(/[^0-9]/g, '')}M` : undefined,
        'author': { '@type': 'Organization', name: 'JoySword Wiki' },
        'inLanguage': 'en'
      };
    }
  } else {
    articleSchema = {
      '@context': 'https://schema.org',
      '@type': 'TechArticle',
      'headline': `${page.title} | JoySword Wiki`,
      'description': page.summary,
      'audience': { '@type': 'Audience', 'audienceType': page.audience },
      'timeRequired': page.readingTime ? `PT${page.readingTime.replace(/[^0-9]/g, '')}M` : undefined,
      'author': { '@type': 'Organization', name: 'JoySword Wiki' },
      'inLanguage': 'en'
    };
  }

  const ogImage = page.heroImage || page.sections.find((s) => s.art?.src)?.art?.src || '/joysword_hero_banner.webp';

  const breadcrumbSchema = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    'itemListElement': [
      { '@type': 'ListItem', position: 1, 'name': 'Player Wiki', 'item': `${siteUrl}/wiki` },
      { '@type': 'ListItem', position: 2, 'name': page.shortTitle, 'item': `${siteUrl}/wiki/${page.slug}` }
    ]
  };

  const articleJsonLds = [articleSchema, breadcrumbSchema];
  if (page.slug === 'getting-started') {
    articleJsonLds.push(sourceCodeSchema);
  } else if (page.slug === 'equipment') {
    const alteraGearProduct = {
      '@context': 'https://schema.org',
      '@type': 'Product',
      'name': 'Altera Grendized Equipment Set',
      'description': 'Endgame Level 60 dungeon set with double element chance and speed attributes.',
      'offers': {
        '@type': 'Offer',
        'price': '0',
        'priceCurrency': 'USD',
        'availability': 'https://schema.org/InStock'
      }
    };
    const henirWeaponProduct = {
      '@context': 'https://schema.org',
      '@type': 'Product',
      'name': 'Henir\'s Remnant Weapon',
      'description': 'Endgame Level 65 classic weapon with double elemental trigger chance.',
      'offers': {
        '@type': 'Offer',
        'price': '0',
        'priceCurrency': 'USD',
        'availability': 'https://schema.org/InStock'
      }
    };
    articleJsonLds.push(alteraGearProduct, henirWeaponProduct);
  } else if (page.slug === 'characters') {
    articleJsonLds.push({
      '@context': 'https://schema.org',
      '@type': 'VideoGame',
      'name': 'JoySword characters',
      'character': playableCharacters
    });
  }

  routes.push({
    path: `/wiki/${page.slug}`,
    title: `${page.title} | JoySword Wiki`,
    description: page.summary,
    keywords: ['joysword wiki', 'joysword guide', page.slug, page.shortTitle.toLowerCase(), page.category.toLowerCase()],
    jsonLd: articleJsonLds,
    ogImage: ogImage,
    bodyHtml: renderWikiArticleBody(page),
    priority: '0.7',
    changefreq: 'weekly'
  });
});

// FAQ Page
const faqSchema = {
  '@context': 'https://schema.org',
  '@type': 'FAQPage',
  'mainEntity': faqItems.map((item) => ({
    '@type': 'Question',
    'name': item.question,
    'acceptedAnswer': {
      '@type': 'Answer',
      'text': item.answer
    }
  }))
};

routes.push({
  path: '/wiki/faq',
  title: 'Frequently Asked Questions | JoySword Wiki',
  description: 'Find answers to frequently asked questions about JoySword: account creation, local server setup, Windows installations, gameplay mechanics, and character progression.',
  keywords: ['joysword faq', 'joysword troubleshooting', 'joysword setup questions', 'elsword offline help'],
  jsonLd: [faqSchema, faqBreadcrumb],
  bodyHtml: renderWikiFaqBody(),
  priority: '0.7',
  changefreq: 'weekly'
});

// Cash shop gallery
const collectionJsonLd = {
  '@context': 'https://schema.org',
  '@type': 'CollectionPage',
  name: 'Rare Ice Burner Costume Gallery',
  description: 'Browse JoySword’s verified rare Ice Burner costume archive: Royal Blood, Shadow Incubus, Grace Fairy, Archangel, and El Search Party Officer.',
  url: `${siteUrl}/wiki/cash-shop/ice-burner`,
  hasPart: iceBurnerSets.map((set) => ({
    '@type': 'Article',
    name: set.name,
    url: `${siteUrl}/wiki/cash-shop/ice-burner/${set.slug}`,
    image: `${siteUrl}${set.image}`
  }))
};

const cashShopBreadcrumb = {
  '@context': 'https://schema.org',
  '@type': 'BreadcrumbList',
  itemListElement: [
    { '@type': 'ListItem', position: 1, name: 'Player Wiki', item: `${siteUrl}/wiki` },
    { '@type': 'ListItem', position: 2, name: 'Cash Shop', item: `${siteUrl}/wiki/cash-shop` },
    { '@type': 'ListItem', position: 3, name: 'Ice Burner Gallery', item: `${siteUrl}/wiki/cash-shop/ice-burner` }
  ]
};

routes.push({
  path: '/wiki/cash-shop/ice-burner',
  title: 'Rare Ice Burner Costume Gallery | JoySword',
  description: 'Browse JoySword’s verified rare Ice Burner costume archive: Royal Blood, Shadow Incubus, Grace Fairy, Archangel, and El Search Party Officer.',
  keywords: ['joysword ice burner', 'ice burner sets', 'rare elsword costumes', 'joysword cosmetics', 'royal blood elsword'],
  jsonLd: [collectionJsonLd, iceBurnerIndexBreadcrumb],
  bodyHtml: renderIceBurnerGalleryBody(),
  priority: '0.7',
  changefreq: 'weekly'
});

// Dynamic Ice Burners
iceBurnerSets.forEach((set) => {
  const costumeCanonicalPath = `/wiki/cash-shop/ice-burner/${set.slug}`;
  const articleJsonLd = {
    '@context': 'https://schema.org',
    '@type': 'Article',
    headline: `${set.name} Ice Burner Costume Set`,
    description: set.summary,
    image: [`${siteUrl}${set.image}`],
    mainEntityOfPage: `${siteUrl}${costumeCanonicalPath}`,
    dateModified: '2026-07-01',
    author: { '@type': 'Organization', name: 'JoySword Wiki' },
    publisher: { '@type': 'Organization', name: 'JoySword' }
  };
  const breadcrumbJsonLd = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Player Wiki', item: `${siteUrl}/wiki` },
      { '@type': 'ListItem', position: 2, name: 'Cash Shop', item: `${siteUrl}/wiki/cash-shop` },
      {
        '@type': 'ListItem',
        position: 3,
        name: 'Ice Burner Gallery',
        item: `${siteUrl}/wiki/cash-shop/ice-burner`
      },
      { '@type': 'ListItem', position: 4, name: set.name, item: `${siteUrl}${costumeCanonicalPath}` }
    ]
  };

  routes.push({
    path: costumeCanonicalPath,
    title: `${set.name} Ice Burner Costume Set | JoySword`,
    description: set.summary,
    keywords: ['joysword ice burner', set.name.toLowerCase(), `${set.slug} elsword`, 'rare elsword costumes', 'joysword cosmetics'],
    jsonLd: [articleJsonLd, breadcrumbJsonLd],
    ogImage: set.image,
    bodyHtml: renderIceBurnerDetailBody(set),
    priority: '0.7',
    changefreq: 'weekly'
  });
});


// ----------------------------------------------------
// Files Writing Processes
// ----------------------------------------------------

const buildDir = path.resolve(__dirname, '../dist');

if (!fs.existsSync(buildDir)) {
  console.error('[SEO Generator] Error: dist/ directory not found! Run npm run build first.');
  process.exit(1);
}

// A. Generate Sitemap
console.log('[SEO Generator] Generating sitemap.xml...');
let sitemapXml = `<?xml version="1.0" encoding="UTF-8"?>\n`;
sitemapXml += `<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"\n`;
sitemapXml += `        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"\n`;
sitemapXml += `        xmlns:xhtml="http://www.w3.org/1999/xhtml"\n`;
sitemapXml += `        xmlns:video="http://www.google.com/schemas/sitemap-video/1.1">\n`;

routes.forEach((route) => {
  sitemapXml += `  <url>\n`;
  sitemapXml += `    <loc>${siteUrl}${route.path === '/' ? '' : route.path}</loc>\n`;
  sitemapXml += `    <xhtml:link rel="alternate" hreflang="x-default" href="${siteUrl}${route.path === '/' ? '' : route.path}" />\n`;
  sitemapXml += `    <xhtml:link rel="alternate" hreflang="en" href="${siteUrl}${route.path === '/' ? '' : route.path}" />\n`;
  sitemapXml += `    <lastmod>${new Date().toISOString().split('T')[0]}</lastmod>\n`;
  sitemapXml += `    <changefreq>${route.changefreq}</changefreq>\n`;
  sitemapXml += `    <priority>${route.priority}</priority>\n`;
  
  // Image Node
  if (route.ogImage && route.ogImage !== '/joysword_hero_banner.webp') {
    const fullImageUrl = route.ogImage.startsWith('http') ? route.ogImage : `${siteUrl}${route.ogImage}`;
    sitemapXml += `    <image:image>\n`;
    sitemapXml += `      <image:loc>${fullImageUrl}</image:loc>\n`;
    sitemapXml += `      <image:title>${route.title.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')}</image:title>\n`;
    sitemapXml += `    </image:image>\n`;
  }

  // Video Node
  if (route.path === '/anime') {
    episodes.forEach((ep) => {
      sitemapXml += `    <video:video>\n`;
      sitemapXml += `      <video:thumbnail_loc>${siteUrl}/theater-poster.webp</video:thumbnail_loc>\n`;
      sitemapXml += `      <video:title>Episode ${ep.ep}: ${ep.title}</video:title>\n`;
      sitemapXml += `      <video:description>${ep.desc}</video:description>\n`;
      sitemapXml += `      <video:content_loc>${siteUrl}/anime</video:content_loc>\n`;
      sitemapXml += `      <video:duration>${12 * 60}</video:duration>\n`;
      sitemapXml += `    </video:video>\n`;
    });
  }
  
  sitemapXml += `  </url>\n`;
});

sitemapXml += `</urlset>\n`;
fs.writeFileSync(path.join(buildDir, 'sitemap.xml'), sitemapXml);
console.log('[SEO Generator] sitemap.xml generated successfully.');

// B. Generate Robots.txt
console.log('[SEO Generator] Generating robots.txt...');
const robotsTxt = `User-agent: *\nAllow: /\n\nSitemap: ${siteUrl}/sitemap.xml\n`;
fs.writeFileSync(path.join(buildDir, 'robots.txt'), robotsTxt);
console.log('[SEO Generator] robots.txt generated successfully.');

// C. Inlining Meta Tags to Subdirectories (Static Pre-rendering)
console.log('[SEO Generator] Performing Meta Tag injection and CSS/Font inlining...');

const templateHtmlPath = path.join(buildDir, 'index.html');
if (!fs.existsSync(templateHtmlPath)) {
  console.error('[SEO Generator] Error: dist/index.html template not found!');
  process.exit(1);
}
const templateHtml = fs.readFileSync(templateHtmlPath, 'utf8');

// Find and read the generated stylesheet
const assetsDir = path.join(buildDir, 'assets');
let criticalCss = '';
let cssFilename = '';
if (fs.existsSync(assetsDir)) {
  const files = fs.readdirSync(assetsDir);
  const cssFile = files.find((file) => file.endsWith('.css'));
  if (cssFile) {
    cssFilename = cssFile;
    criticalCss = fs.readFileSync(path.join(assetsDir, cssFile), 'utf8');
  }
}

// Find and pre-load all WOFF2 fonts
let fontPreloads = '\n  <!-- Font Preloads -->\n';
if (fs.existsSync(assetsDir)) {
  const files = fs.readdirSync(assetsDir);
  const fontFiles = files.filter((file) => file.endsWith('.woff2'));
  fontFiles.forEach((font) => {
    fontPreloads += `  <link rel="preload" href="/assets/${font}" as="font" type="font/woff2" crossorigin />\n`;
  });
}

routes.forEach((route) => {
  const isHome = route.path === '/';
  
  let html = templateHtml;

  // Inline CSS
  if (criticalCss && cssFilename) {
    // Replace stylesheet link with style block
    const cssRegex = new RegExp(`<link[^>]*rel=["']stylesheet["'][^>]*href=["'][^"']*assets/${cssFilename.replace(/\./g, '\\.')}["'][^>]*>`, 'i');
    html = html.replace(cssRegex, `<style>${criticalCss}</style>`);
  }

  // Inject Font Preloads
  html = html.replace('</head>', `${fontPreloads}</head>`);

  // Replace default title and description
  html = html.replace(/<title>[^<]*<\/title>/i, `<title>${route.title}</title>`);
  
  // Replace description if exists, or append it
  const descTag = `<meta name="description" content="${route.description}" />`;
  if (/<meta\s+name=["']description["'][^>]*>/i.test(html)) {
    html = html.replace(/<meta\s+name=["']description["'][^>]*>/i, descTag);
  } else {
    html = html.replace('</head>', `  ${descTag}\n</head>`);
  }

  // Generate dynamic SEO tags to inject before </head>
  let injectedHeadTags = '\n  <!-- Pre-rendered SEO Tags -->\n';
  
  // Keywords
  if (route.keywords && route.keywords.length > 0) {
    injectedHeadTags += `  <meta name="keywords" content="${route.keywords.join(', ')}" />\n`;
  }
  
  // Robots
  injectedHeadTags += `  <meta name="robots" content="index, follow" />\n`;
  
  // Canonical
  injectedHeadTags += `  <link rel="canonical" href="${siteUrl}${route.path === '/' ? '' : route.path}" />\n`;
  
  // Open Graph
  const ogImgSrc = route.ogImage || '/joysword_hero_banner.webp';
  const fullOgImage = ogImgSrc.startsWith('http') ? ogImgSrc : `${siteUrl}${ogImgSrc}`;

  injectedHeadTags += `  <meta property="og:title" content="${route.title}" />\n`;
  injectedHeadTags += `  <meta property="og:description" content="${route.description}" />\n`;
  injectedHeadTags += `  <meta property="og:url" content="${siteUrl}${route.path === '/' ? '' : route.path}" />\n`;
  injectedHeadTags += `  <meta property="og:type" content="${route.path.startsWith('/wiki') ? 'article' : 'website'}" />\n`;
  injectedHeadTags += `  <meta property="og:image" content="${fullOgImage}" />\n`;
  injectedHeadTags += `  <meta property="og:image_alt" content="${route.title}" />\n`;
  injectedHeadTags += `  <meta property="og:site_name" content="JoySword" />\n`;
  
  // Twitter & Locales
  injectedHeadTags += `  <meta name="twitter:card" content="summary_large_image" />\n`;
  injectedHeadTags += `  <meta name="twitter:title" content="${route.title}" />\n`;
  injectedHeadTags += `  <meta name="twitter:description" content="${route.description}" />\n`;
  injectedHeadTags += `  <meta name="twitter:image" content="${fullOgImage}" />\n`;
  injectedHeadTags += `  <meta name="twitter:site" content="@JoySwordOnline" />\n`;
  injectedHeadTags += `  <meta name="twitter:creator" content="@JoySwordOnline" />\n`;
  
  injectedHeadTags += `  <meta property="og:locale" content="en_US" />\n`;
  injectedHeadTags += `  <meta property="og:locale:alternate" content="ko_KR" />\n`;
  injectedHeadTags += `  <meta property="og:locale:alternate" content="zh_TW" />\n`;
  injectedHeadTags += `  <meta property="og:locale:alternate" content="ja_JP" />\n`;
  
  // RSS Feed link
  injectedHeadTags += `  <link rel="alternate" type="application/rss+xml" title="JoySword Wiki RSS Feed" href="${siteUrl}/feed.xml" />\n`;

  // JSON-LD
  let routeSchemas: any[] = [];
  if (route.jsonLd) {
    if (Array.isArray(route.jsonLd)) {
      routeSchemas = [...route.jsonLd];
    } else {
      routeSchemas = [route.jsonLd];
    }
  }
  
  // Append global layout schemas to all pages
  routeSchemas.push(siteNavigationSchema, layoutHeaderSchema, layoutFooterSchema);
  
  routeSchemas.forEach((schema) => {
    injectedHeadTags += `  <script type="application/ld+json">${JSON.stringify(schema)}</script>\n`;
  });

  html = html.replace('</head>', `${injectedHeadTags}</head>`);

  // Inject body HTML inside root container wrapped in corresponding layout elements
  if (route.bodyHtml) {
    let finalBodyHtml = '';
    if (route.path.startsWith('/wiki')) {
      finalBodyHtml = `${renderHeaderHtml(route.path)}${renderWikiLayoutHtml(route.bodyHtml, route.path)}${renderFooterHtml()}`;
    } else {
      finalBodyHtml = `${renderHeaderHtml(route.path)}${route.bodyHtml}${renderFooterHtml()}`;
    }
    html = html.replace('<div id="root"></div>', `<div id="root">${finalBodyHtml}</div>`);
  }

  if (isHome) {
    fs.writeFileSync(templateHtmlPath, html);
    console.log(`[SEO Generator] Injected SEO tags and body HTML directly into dist/index.html (Home)`);
  } else {
    // Generate route folder
    const routeFolder = path.join(buildDir, route.path);
    fs.mkdirSync(routeFolder, { recursive: true });
    
    // Write index.html to sub-route directory
    fs.writeFileSync(path.join(routeFolder, 'index.html'), html);
    console.log(`[SEO Generator] Pre-rendered SEO HTML and body content: dist${route.path}/index.html`);
  }
});

// D. Generate RSS Feed (feed.xml)
console.log('[SEO Generator] Generating feed.xml (RSS Feed)...');
let rssXml = `<?xml version="1.0" encoding="UTF-8" ?>\n`;
rssXml += `<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">\n`;
rssXml += `<channel>\n`;
rssXml += `  <title>JoySword Online Portal &amp; Player Wiki</title>\n`;
rssXml += `  <link>${siteUrl}</link>\n`;
rssXml += `  <description>Latest game guides, costume database entries, and technical document updates from the JoySword realm.</description>\n`;
rssXml += `  <language>en-us</language>\n`;
rssXml += `  <lastBuildDate>${new Date().toUTCString()}</lastBuildDate>\n`;
rssXml += `  <atom:link href="${siteUrl}/feed.xml" rel="self" type="application/rss+xml" />\n`;

// Add dynamic wiki pages to feed
wikiPages.forEach((page) => {
  rssXml += `  <item>\n`;
  rssXml += `    <title>${page.title.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')}</title>\n`;
  rssXml += `    <link>${siteUrl}/wiki/${page.slug}</link>\n`;
  rssXml += `    <description>${page.summary.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')}</description>\n`;
  rssXml += `    <pubDate>Mon, 06 Jul 2026 12:00:00 GMT</pubDate>\n`;
  rssXml += `    <guid>${siteUrl}/wiki/${page.slug}</guid>\n`;
  rssXml += `  </item>\n`;
});

// Add dynamic Ice Burner sets to feed
iceBurnerSets.forEach((set) => {
  rssXml += `  <item>\n`;
  rssXml += `    <title>${set.name.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')} Costume Set</title>\n`;
  rssXml += `    <link>${siteUrl}/wiki/cash-shop/ice-burner/${set.slug}</link>\n`;
  rssXml += `    <description>${set.summary.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')}</description>\n`;
  rssXml += `    <pubDate>Mon, 06 Jul 2026 12:00:00 GMT</pubDate>\n`;
  rssXml += `    <guid>${siteUrl}/wiki/cash-shop/ice-burner/${set.slug}</guid>\n`;
  rssXml += `  </item>\n`;
});

rssXml += `</channel>\n`;
rssXml += `</rss>\n`;

fs.writeFileSync(path.join(buildDir, 'feed.xml'), rssXml);
console.log('[SEO Generator] feed.xml generated successfully.');

console.log('[SEO Generator] Complete SEO assets and static metadata injection finished.');
