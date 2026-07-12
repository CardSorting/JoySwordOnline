import { Link } from 'react-router-dom';
import { PortalHeader } from '@/components/PortalHeader';
import { SEO } from '@/components/SEO';

export default function NotFoundPage() {
  return (
    <main className="site-shell download-page" id="main-content" style={{ minHeight: '100vh', display: 'flex', flexDirection: 'column' }}>
      <SEO
        title="Page Not Found | JoySword"
        description="The requested page could not be found on the JoySword private server portal. Return home or browse our player wiki guides."
        noIndex={true}
      />
      <PortalHeader />

      <section className="download-hero" style={{ flex: '1', display: 'flex', flexDirection: 'column', justifyContent: 'center', alignItems: 'center', textAlign: 'center', padding: '8rem 2rem' }}>
        <div className="store-page-backdrop" aria-hidden="true" style={{ opacity: 0.15 }}>
          <img
            src="/joysword_hero_banner.webp"
            alt=""
            style={{ position: 'absolute', width: '100%', height: '100%', top: 0, left: 0, objectFit: 'cover' }}
            loading="eager"
          />
        </div>

        <p className="eyebrow" style={{ textTransform: 'uppercase', letterSpacing: '0.2em', color: '#ff5b47' }}>
          <span style={{ backgroundColor: '#ff5b47' }} /> Error 404
        </p>
        <h1 style={{ fontSize: '4.5rem', margin: '1rem 0', fontWeight: '800', background: 'linear-gradient(to right, #fff, #a5b4fc)', WebkitBackgroundClip: 'text', WebkitTextFillColor: 'transparent' }}>
          Lost in the <em>El Resonance.</em>
        </h1>
        <p style={{ maxWidth: '560px', margin: '0 auto 2.5rem', fontSize: '1.2rem', color: '#94a3b8', lineHeight: '1.7' }}>
          The sector you are trying to access does not exist or has been shifted in the timeline. Return to the main entry point or seek support in the archives.
        </p>

        <div className="download-hero-actions" style={{ display: 'flex', gap: '1rem', flexWrap: 'wrap', justifyContent: 'center' }}>
          <Link className="button button-primary" to="/" style={{ padding: '0.8rem 2rem' }}>
            Back to portal home
          </Link>
          <Link className="button button-secondary" to="/wiki" style={{ padding: '0.8rem 2rem' }}>
            Search player wiki
          </Link>
        </div>
      </section>

      <footer className="site-footer" style={{ borderTop: '1px solid rgba(255,255,255,0.05)', padding: '2rem 0', marginTop: 'auto' }}>
        <div className="footer-bottom" style={{ textAlign: 'center', color: '#64748b' }}>
          <p>JoySword Private Server · Diagnostic Code 404 · Section Offline</p>
        </div>
      </footer>
    </main>
  );
}
