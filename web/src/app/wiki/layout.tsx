import { Outlet, Link } from 'react-router-dom';
import { PortalHeader } from '@/components/PortalHeader';
import { WikiSidebar } from '@/components/wiki/WikiSidebar';

export default function WikiLayout() {
  return (
    <main className="wiki-root" id="main-content">
      <PortalHeader />
      <div className="wiki-layout">
        <WikiSidebar />
        <div className="wiki-main" id="wiki-main">
          <Outlet />
        </div>
      </div>
      <footer className="wiki-footer">
        <p>JoySword historical-build player guide · Realm-specific facts reviewed July 2026</p>
        <div>
          <a href="https://elsword.koggames.com/" target="_blank" rel="noreferrer">Official Elsword site</a>
          <span>·</span>
          <Link to="/wiki/faq">FAQ</Link>
        </div>
      </footer>
    </main>
  );
}
