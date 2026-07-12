import { Link, useLocation } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { useSectionNavigator } from '@/lib/navigation';

const links = [
  { href: '/#features', label: 'Features' },
  { href: '/#characters', label: 'Characters' },
  { href: '/#exploration', label: 'World map' },
  { href: '/anime', label: 'Anime series' },
  { href: '/community', label: 'Community' },
  { href: '/download', label: 'Download' },
  { href: '/wiki', label: 'Player wiki' }
];

export function MobileMenu() {
  const { pathname } = useLocation();
  const [isOpen, setIsOpen] = useState(false);
  const navigateToSection = useSectionNavigator();

  useEffect(() => setIsOpen(false), [pathname]);

  useEffect(() => {
    function handleKeyDown(event: KeyboardEvent) {
      if (event.key === 'Escape') setIsOpen(false);
    }
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, []);

  const handleLinkClick = (e: React.MouseEvent<HTMLAnchorElement>, href: string) => {
    setIsOpen(false);
    if (href.startsWith('/#')) {
      e.preventDefault();
      const sectionId = href.replace('/#', '');
      navigateToSection(sectionId);
    }
  };

  return (
    <div className="mobile-menu">
      <button
        className="mobile-menu-trigger"
        type="button"
        aria-expanded={isOpen}
        aria-controls="mobile-navigation"
        aria-label={isOpen ? 'Close navigation menu' : 'Open navigation menu'}
        onClick={() => setIsOpen((current) => !current)}
      >
        <span />
        <span />
        <span />
      </button>
      <nav
        className={`mobile-navigation ${isOpen ? 'is-open' : ''}`}
        id="mobile-navigation"
        aria-label="Mobile navigation"
        aria-hidden={!isOpen}
      >
        {links.map((link) => (
          <Link
            to={link.href}
            tabIndex={isOpen ? 0 : -1}
            onClick={(e) => handleLinkClick(e, link.href)}
            key={link.href}
          >
            {link.label}<span aria-hidden="true">→</span>
          </Link>
        ))}
      </nav>
    </div>
  );
}
