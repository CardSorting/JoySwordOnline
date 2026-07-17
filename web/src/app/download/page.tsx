import { Link } from 'react-router-dom';
import { DownloadCards } from '@/components/DownloadCards';
import { PortalHeader } from '@/components/PortalHeader';
import { SEO } from '@/components/SEO';

const installSteps = [
  ['Download', 'Choose the full client for a new installation.'],
  ['Extract', 'Move the ZIP to a writable folder such as C:\\Games, then extract everything.'],
  ['Launch', 'Run JoySword Launcher.exe and apply launcher updates if prompted.'],
  ['Sign in', 'Use the default server credentials or standard launcher settings to enter the game.']
];

export default function DownloadPage() {
  const handleScroll = (e: React.MouseEvent<HTMLAnchorElement>, id: string) => {
    e.preventDefault();
    const element = document.getElementById(id);
    if (element) {
      element.scrollIntoView({ behavior: 'smooth' });
    }
  };

  const downloadSchema = {
    '@context': 'https://schema.org',
    '@type': 'SoftwareApplication',
    'name': 'JoySword Client & Launcher',
    'operatingSystem': 'Windows 10, Windows 11',
    'applicationCategory': 'GameApplication',
    'downloadUrl': 'https://manifest.onjoysword.top/releases/1.4.0/JoySword-Launcher-Setup-1.4.0-x64.exe',
    'fileSize': '93MB',
    'softwareVersion': '1.4.0',
    'offers': {
      '@type': 'Offer',
      'price': '0',
      'priceCurrency': 'USD'
    }
  };

  return (
    <main className="site-shell download-page" id="main-content">
      <SEO
        title="Download the Windows Client | JoySword"
        description="Download the official JoySword game client and portable launcher for Windows. Secure Azure-hosted download links with integrity SHA-256 checksums."
        keywords={['download joysword', 'joysword download', 'elsword client download', 'joysword launcher', 'joysword zip', 'sha-256 checksum']}
        jsonLd={downloadSchema}
      />
      <PortalHeader />

      <section className="download-hero">
        <p className="eyebrow"><span /> Official release channel</p>
        <h1>Enter the realm.</h1>
        <p>
          Download the current JoySword Windows release directly from our protected
          Azure storage. Every artifact includes a published SHA-256 checksum.
        </p>
        <div className="download-hero-actions">
          <a className="button button-primary" href="/" onClick={(e) => handleScroll(e, 'downloads')}>
            Choose a download <span aria-hidden="true">↓</span>
          </a>
          <Link className="button button-secondary" to="/download/install">
            Installation guide <span aria-hidden="true">→</span>
          </Link>
        </div>
        <div className="download-trust-row" aria-label="Release assurances">
          <span><i /> Azure-hosted</span>
          <span><i /> Time-limited secure link</span>
          <span><i /> Integrity checksum</span>
        </div>
      </section>

      <section className="download-content" id="downloads" aria-label="Available downloads">
        <DownloadCards />
      </section>

      <section className="download-install">
        <div className="section-intro centered">
          <p className="eyebrow"><span /> Installation</p>
          <h2>From download to <em>battle.</em></h2>
        </div>
        <ol className="download-steps">
          {installSteps.map(([title, copy], index) => (
            <li key={title}>
              <span>0{index + 1}</span>
              <div>
                <strong>{title}</strong>
                <p>{copy}</p>
              </div>
            </li>
          ))}
        </ol>
        <aside className="download-notice">
          <span aria-hidden="true">!</span>
          <div>
            <strong>Windows SmartScreen notice</strong>
            <p>
              The community launcher is not commercially code-signed, so Windows may
              display a warning. Confirm the filename and SHA-256 checksum on this page
              before choosing “Run anyway.” Never download JoySword from a third-party mirror.
            </p>
          </div>
        </aside>
        <div className="download-guide-link">
          <div>
            <strong>Need detailed setup instructions?</strong>
            <p>Follow the complete Windows guide for extraction, launcher installation, folder selection, verification, and troubleshooting.</p>
          </div>
          <Link className="button button-secondary" to="/download/install">
            Open installation guide <span aria-hidden="true">→</span>
          </Link>
        </div>
      </section>

      <section className="download-account-cta">
        <div>
          <p className="eyebrow"><span /> Before you launch</p>
          <h2>Need help getting started?</h2>
          <p>Read the wiki or check our step-by-step FAQ to get details on configurations, settings, and requirements.</p>
        </div>
        <div>
          <Link className="button button-primary" to="/wiki">
            Explore the Wiki <span aria-hidden="true">→</span>
          </Link>
          <Link className="button button-secondary" to="/wiki/faq">
            Read the FAQ
          </Link>
        </div>
      </section>
    </main>
  );
}
