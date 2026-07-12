import { Link } from 'react-router-dom';
import { MobileMenu } from './MobileMenu';
import { useSectionNavigator } from '@/lib/navigation';

export function PortalHeader() {
  const navigateToSection = useSectionNavigator();

  return (
    <header className="site-header">
      <Link className="brand" to="/" aria-label="JoySword home">
        <span className="brand-mark" aria-hidden="true">
          <img
            src="/joysword-icon-64.webp"
            alt="JoySword logo"
            width={43}
            height={43}
            loading="eager"
          />
        </span>
        <span className="brand-copy">
          <strong>JoySword</strong>
          <small>Private realm</small>
        </span>
      </Link>

      <nav className="desktop-nav" aria-label="Primary navigation">
        <a href="/" onClick={(e) => { e.preventDefault(); navigateToSection('features'); }}>Features</a>
        <a href="/" onClick={(e) => { e.preventDefault(); navigateToSection('characters'); }}>Characters</a>
        <a href="/" onClick={(e) => { e.preventDefault(); navigateToSection('exploration'); }}>World Map</a>
        <Link to="/anime">Anime</Link>
        <Link to="/community">Community</Link>
        <Link to="/download">Download</Link>
        <Link to="/wiki">Wiki</Link>
        <Link to="/account">Account</Link>
      </nav>

      <MobileMenu />
      <Link className="nav-cta" to="/register">
        Play free <span aria-hidden="true">→</span>
      </Link>
    </header>
  );
}
