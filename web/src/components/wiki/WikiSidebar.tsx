'use client';

import { Link, useLocation } from 'react-router-dom';
import { getIceBurnerSetPath, iceBurnerSets } from '@/content/iceBurnerSets';
import { wikiNav, type WikiCategory } from '@/content/wiki';

const categories: WikiCategory[] = ['Start here', 'Core guide', 'Advanced', 'Reference'];

export function WikiSidebar() {
  const { pathname } = useLocation();

  return (
    <aside className="wiki-sidebar" aria-label="Wiki navigation">
      <div className="wiki-sidebar-heading">
        <span><i>JS</i></span>
        <div>
          <strong>Player Wiki</strong>
          <small>Historical build · Lv. 65</small>
        </div>
      </div>

      <nav>
        {categories.map((category) => (
          <div className="wiki-nav-group" key={category}>
            <small>{category}</small>
            {wikiNav
              .filter((item) => item.category === category)
              .map((item) => {
                const isActive =
                  item.href === '/wiki'
                    ? pathname === '/wiki'
                    : pathname === item.href || pathname.startsWith(`${item.href}/`);

                return (
                  <Link
                    className={isActive ? 'is-active' : ''}
                    to={item.href}
                    aria-current={isActive ? 'page' : undefined}
                    key={item.href}
                  >
                    <span>{item.label}</span>
                    <i aria-hidden="true">›</i>
                  </Link>
                );
              })}
          </div>
        ))}
        {pathname.startsWith('/wiki/cash-shop') ? (
          <div className="wiki-nav-group wiki-subnav-group">
            <small>Ice Burner archive</small>
            <Link
              className={pathname === '/wiki/cash-shop/ice-burner' ? 'is-active' : ''}
              to="/wiki/cash-shop/ice-burner"
            >
              <span>Rare set gallery</span><i aria-hidden="true">›</i>
            </Link>
            {iceBurnerSets.map((set) => {
              const href = getIceBurnerSetPath(set.slug);
              const isActive = pathname === href;
              return (
                <Link
                  className={isActive ? 'is-active' : ''}
                  to={href}
                  aria-current={isActive ? 'page' : undefined}
                  key={set.slug}
                >
                  <span>{set.name}</span><i aria-hidden="true">›</i>
                </Link>
              );
            })}
          </div>
        ) : null}
      </nav>

      <div className="wiki-sidebar-note">
        <i className="live-dot" />
        <div>
          <strong>Realm-specific</strong>
          <p>Modern retail mechanics may differ.</p>
        </div>
      </div>
    </aside>
  );
}
