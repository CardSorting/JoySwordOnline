import { Link } from 'react-router-dom';
import { PortalHeader } from '@/components/PortalHeader';
import { ServiceStatus } from '@/components/ServiceStatus';
import { StoreInstallPanel } from '@/components/StoreInstallPanel';
import { StoreMediaGallery } from '@/components/StoreMediaGallery';
import { siteUrl } from '@/lib/site';
import { SEO } from '@/components/SEO';

const fullInstallSteps = [
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

const launcherInstallSteps = [
  ['Confirm the client exists', 'The launcher-only option requires an extracted client folder containing data\\x2.exe.'],
  ['Download the installer', 'Choose “Launcher only” on the official download page.'],
  ['Run Setup', 'Open JoySword-Launcher-Setup-…-x64.exe and choose an installation folder.'],
  ['Use the shortcut', 'Start JoySword Launcher from the desktop or Start menu shortcut created by Setup.'],
  ['Select the game folder', 'When prompted, choose the JoySword folder that directly contains the data folder.'],
  ['Verify, repair, and launch', 'Run Verify. If the endpoint check warns, run Repair before launching the client.']
];

const troubleshooting = [
  {
    problem: 'Windows says the app is unrecognized',
    answer: 'Confirm the filename and SHA-256 checksum first. In SmartScreen, select More info, verify the publisher warning is expected for this unsigned community build, then choose Run anyway.'
  },
  {
    problem: 'The launcher cannot find JoySword',
    answer: 'Select the folder directly above data—not the data folder itself. The expected path is JoySword\\data\\x2.exe.'
  },
  {
    problem: 'The launcher opens but Launch fails',
    answer: 'Move the client to C:\\Games\\JoySword, make sure extraction completed, then run Verify and Repair. Avoid launching from a ZIP, Program Files, or OneDrive.'
  },
  {
    problem: 'A server-status warning appears',
    answer: 'Check your internet connection and retry after a minute. The launcher needs the public Login, Game, and Channel services to be reachable.'
  },
  {
    problem: 'The file will not open on macOS',
    answer: 'JoySword and its launcher are Windows applications. Use a supported 64-bit Windows 10 or Windows 11 computer.'
  }
];

const systemRequirements = [
  ['OS', 'Windows 10 64-bit', 'Windows 11 64-bit'],
  ['Processor', 'Intel Core i3 / Ryzen 3', 'Intel Core i5 / Ryzen 5'],
  ['Memory', '4 GB RAM', '8 GB RAM'],
  ['Graphics', 'DirectX 11, 1 GB VRAM', 'DirectX 11, 2 GB VRAM'],
  ['Storage', '20 GB available', '30 GB available on SSD'],
  ['Network', 'Broadband connection', 'Low-latency broadband']
];

export default function InstallGuidePage() {
  const structuredData = {
    '@context': 'https://schema.org',
    '@type': 'HowTo',
    name: 'Install the JoySword client and launcher on Windows',
    description:
      'Download, verify, extract, configure, and launch the JoySword Windows client.',
    totalTime: 'PT20M',
    supply: [
      { '@type': 'HowToSupply', name: 'JoySword portal account' },
      { '@type': 'HowToSupply', name: 'JoySword full client ZIP' }
    ],
    tool: [{ '@type': 'HowToTool', name: 'Windows 10 or Windows 11 PC' }],
    step: fullInstallSteps.map((step, index) => ({
      '@type': 'HowToStep',
      position: index + 1,
      name: step.title,
      text: `${step.copy} ${step.detail}`,
      url: `${siteUrl}/download/install#step-${index + 1}`
    }))
  };

  return (
    <main className="site-shell download-page install-guide-page" id="main-content">
      <SEO
        title="How to Install JoySword on Windows | JoySword"
        description="Step-by-step installation guide for JoySword on Windows. Learn how to download, verify SHA-256 checksums, extract client folders, and configure the launcher."
        keywords={['install joysword', 'joysword guide', 'how to install elsword', 'extract joysword client', 'launcher troubleshooting', 'smartscreen warning']}
        jsonLd={structuredData}
      />
      <PortalHeader />

      <div className="store-page-backdrop" aria-hidden="true">
        <img
          src="/joysword_hero_banner.webp"
          alt=""
          style={{ position: 'absolute', width: '100%', height: '100%', top: 0, left: 0, objectFit: 'cover' }}
          loading="eager"
        />
      </div>

      <section className="store-product">
        <nav className="store-breadcrumb" aria-label="Breadcrumb">
          <Link to="/">All games</Link>
          <span aria-hidden="true">›</span>
          <Link to="/#features">MMORPG</Link>
          <span aria-hidden="true">›</span>
          <strong>JoySword</strong>
        </nav>

        <div className="store-title-row">
          <div>
            <p>Community-hosted online realm</p>
            <h1>JoySword</h1>
          </div>
          <Link to="/wiki">Player wiki</Link>
        </div>

        <div className="store-product-grid">
          <StoreMediaGallery />

          <aside className="store-product-summary" aria-label="JoySword summary">
            <div className="store-summary-brand">
              <img
                src="/joysword-icon-192.webp"
                alt=""
                width={72}
                height={72}
              />
              <div>
                <small>JoySword Online</small>
                <strong>Forge your legend</strong>
              </div>
            </div>
            <p>
              Enter a persistent anime action MMORPG realm with fast combo combat,
              classic character progression, party dungeons, PvP, and community-hosted
              online services.
            </p>

            <div className="store-status-line">
              <span>Realm status</span>
              <ServiceStatus />
            </div>

            <dl className="store-product-meta">
              <div>
                <dt>Recent update</dt>
                <dd>July 2026</dd>
              </div>
              <div>
                <dt>Developer</dt>
                <dd>JoySword Community</dd>
              </div>
              <div>
                <dt>Platform</dt>
                <dd>Windows 64-bit</dd>
              </div>
            </dl>

            <div className="store-tags" aria-label="Game tags">
              <span>Action RPG</span>
              <span>MMORPG</span>
              <span>Anime</span>
              <span>Online PvP</span>
              <span>Co-op</span>
            </div>
          </aside>
        </div>

        <StoreInstallPanel />

        <div className="store-jump-nav">
          <a href="#about">About</a>
          <a href="#full-install">Install guide</a>
          <a href="#system-requirements">System requirements</a>
          <a href="#troubleshooting">Support</a>
        </div>
      </section>

      <div className="install-guide-layout">
        <aside className="install-guide-nav">
          <strong>On this page</strong>
          <nav aria-label="Installation guide sections">
            <a href="#choose-download">Choose a download</a>
            <a href="#full-install">New installation</a>
            <a href="#verify">Verify the file</a>
            <a href="#launcher-only">Launcher only</a>
            <a href="#first-launch">First launch</a>
            <a href="#system-requirements">Requirements</a>
            <a href="#troubleshooting">Troubleshooting</a>
          </nav>
          <div>
            <span aria-hidden="true">i</span>
            <p>This client does not support macOS. Installation must be completed on Windows.</p>
          </div>
        </aside>

        <article className="install-guide-content">
          <section id="about" className="guide-section store-about-section">
            <p className="guide-kicker">About this game</p>
            <h2>High-speed combat. Classic progression. One living realm.</h2>
            <p>
              JoySword restores a classic action-MMORPG experience around responsive
              combos, expressive character paths, collectible equipment, and shared
              adventures. Create one portal account, download the current release, and
              use the launcher to keep your client pointed at the Azure-hosted realm.
            </p>
            <div className="store-feature-strip">
              <div>
                <span aria-hidden="true">⚔</span>
                <strong>Combo combat</strong>
                <small>Launchers, aerial attacks, cancels, and finishers</small>
              </div>
              <div>
                <span aria-hidden="true">◆</span>
                <strong>Online realm</strong>
                <small>Persistent accounts, parties, progression, and PvP</small>
              </div>
              <div>
                <span aria-hidden="true">✦</span>
                <strong>Distinct heroes</strong>
                <small>Character paths, builds, equipment, and collections</small>
              </div>
            </div>
          </section>

          <section id="choose-download" className="guide-section">
            <p className="guide-kicker">Available packages</p>
            <h2>Choose the correct release</h2>
            <p>
              Most players should use the complete package. The smaller installer is only
              for a computer that already has the current JoySword game data.
            </p>
            <div className="install-choice-grid">
              <article className="install-choice recommended">
                <span>Recommended</span>
                <small>New players and clean installs</small>
                <h3>Full client + launcher</h3>
                <p>Includes the game data, portable launcher, launch helper, and current Azure configuration.</p>
                <Link to="/download">Choose full client <span aria-hidden="true">→</span></Link>
              </article>
              <article className="install-choice">
                <small>Existing client installations</small>
                <h3>Launcher only</h3>
                <p>Installs desktop and Start menu shortcuts, then connects to an existing client folder.</p>
                <a href="#launcher-only">Read launcher setup <span aria-hidden="true">↓</span></a>
              </article>
            </div>
          </section>

          <section id="full-install" className="guide-section">
            <p className="guide-kicker">Recommended path</p>
            <h2>Set up a new installation</h2>
            <div className="install-timeline">
              {fullInstallSteps.map((step, index) => (
                <article id={`step-${index + 1}`} key={step.title}>
                  <span className="install-step-number">{String(index + 1).padStart(2, '0')}</span>
                  <div>
                    <h3>{step.title}</h3>
                    <p>{step.copy}</p>
                    <small>{step.detail}</small>
                  </div>
                </article>
              ))}
            </div>
          </section>

          <section id="verify" className="guide-section">
            <p className="guide-kicker">Integrity check</p>
            <h2>Verify the file before extracting</h2>
            <p>
              The checksum proves the file on your computer matches the release published
              by JoySword. Copy the SHA-256 value from the download card, then compare it
              with the PowerShell result.
            </p>
            <div className="verification-terminal" aria-label="PowerShell checksum command">
              <div>
                <span /><span /><span />
                <strong>Windows PowerShell</strong>
              </div>
              <code>Get-FileHash .\JoySword-Client-*.zip -Algorithm SHA256</code>
            </div>
            <aside className="guide-callout">
              <span aria-hidden="true">✓</span>
              <p><strong>The values must match exactly.</strong> Delete the file and download it again if even one character differs.</p>
            </aside>
          </section>

          <section id="launcher-only" className="guide-section">
            <p className="guide-kicker">Existing client path</p>
            <h2>Install only the launcher</h2>
            <ol className="launcher-setup-list">
              {launcherInstallSteps.map(([title, copy], index) => (
                <li key={title}>
                  <span>{index + 1}</span>
                  <div>
                    <strong>{title}</strong>
                    <p>{copy}</p>
                  </div>
                </li>
              ))}
            </ol>
            <div className="folder-example">
              <strong>Correct folder structure</strong>
              <code>
                C:\Games\JoySword{'\n'}
                ├── JoySword Launcher.exe{'\n'}
                ├── scripts\launch-client.ps1{'\n'}
                └── data\x2.exe
              </code>
            </div>
          </section>

          <section id="first-launch" className="guide-section">
            <p className="guide-kicker">Launcher workflow</p>
            <h2>Verify, repair, then play</h2>
            <div className="first-launch-grid">
              <div>
                <span>1</span>
                <strong>Select the JoySword folder</strong>
                <p>Choose the folder containing data, not data itself.</p>
              </div>
              <div>
                <span>2</span>
                <strong>Run Verify</strong>
                <p>Confirm the executable, launch helper, display file, endpoint, and services.</p>
              </div>
              <div>
                <span>3</span>
                <strong>Run Repair if needed</strong>
                <p>The launcher safely restores the Azure endpoint and selected display settings.</p>
              </div>
              <div>
                <span>4</span>
                <strong>Select Launch</strong>
                <p>Use your server's default credentials or offline account settings.</p>
              </div>
            </div>
            <aside className="download-notice">
              <span aria-hidden="true">!</span>
              <div>
                <strong>Do not start x2.exe directly</strong>
                <p>
                  Always start through JoySword Launcher. It verifies the server address,
                  applies your display settings, and supplies the required client launch token.
                </p>
              </div>
            </aside>
          </section>

          <section id="system-requirements" className="guide-section">
            <p className="guide-kicker">System requirements</p>
            <h2>Windows</h2>
            <div className="store-requirements">
              <div className="store-requirement-head">
                <span>Component</span>
                <strong>Minimum</strong>
                <strong>Recommended</strong>
              </div>
              {systemRequirements.map(([component, minimum, recommended]) => (
                <div className="store-requirement-row" key={component}>
                  <span>{component}</span>
                  <p>{minimum}</p>
                  <p>{recommended}</p>
                </div>
              ))}
            </div>
            <p className="store-requirement-note">
              Requires a JoySword Windows client and local or server database components.
              macOS and Linux are not supported.
            </p>
          </section>

          <section id="troubleshooting" className="guide-section">
            <p className="guide-kicker">Common problems</p>
            <h2>Troubleshooting</h2>
            <div className="install-faq">
              {troubleshooting.map((item) => (
                <details key={item.problem}>
                  <summary>{item.problem}</summary>
                  <p>{item.answer}</p>
                </details>
              ))}
            </div>
          </section>

          <section className="install-finish">
            <p className="eyebrow"><span /> Ready to begin</p>
            <h2>Get the verified Windows release.</h2>
            <p>Download from JoySword, extract the full package, and let the launcher handle the connection.</p>
            <div>
              <Link className="button button-primary" to="/download">
                Go to downloads <span aria-hidden="true">→</span>
              </Link>
              <Link className="button button-secondary" to="/wiki">
                Explore the Wiki
              </Link>
            </div>
          </section>
        </article>
      </div>
    </main>
  );
}
