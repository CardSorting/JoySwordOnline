'use client';

import { Link } from 'react-router-dom';
import { useEffect, useMemo, useRef, useState } from 'react';
import {
  getIceBurnerSetPath,
  iceBurnerSets
} from '@/content/iceBurnerSets';
import {
  faqItems,
  wikiPages,
  type WikiCategory
} from '@/content/wiki';

type Filter = 'All' | WikiCategory;

const filters: Filter[] = ['All', 'Start here', 'Core guide', 'Advanced', 'Reference'];

export function WikiExplorer() {
  const [query, setQuery] = useState('');
  const [filter, setFilter] = useState<Filter>('All');
  const searchRef = useRef<HTMLInputElement>(null);

  const normalizedQuery = query.trim().toLowerCase();

  useEffect(() => {
    function focusSearch(event: KeyboardEvent) {
      const target = event.target as HTMLElement;
      const isTyping =
        target.tagName === 'INPUT' ||
        target.tagName === 'TEXTAREA' ||
        target.isContentEditable;

      if (event.key === '/' && !isTyping) {
        event.preventDefault();
        searchRef.current?.focus();
      }
    }

    window.addEventListener('keydown', focusSearch);
    return () => window.removeEventListener('keydown', focusSearch);
  }, []);
  const pages = useMemo(
    () =>
      wikiPages.filter((page) => {
        const matchesFilter = filter === 'All' || page.category === filter;
        const haystack = [
          page.title,
          page.summary,
          page.audience,
          ...page.sections.flatMap((section) => [
            section.title,
            section.intro ?? '',
            ...(section.paragraphs ?? []),
            ...(section.bullets ?? []).flatMap((item) => [item.title, item.text])
          ])
        ]
          .join(' ')
          .toLowerCase();
        return matchesFilter && (!normalizedQuery || haystack.includes(normalizedQuery));
      }),
    [filter, normalizedQuery]
  );

  const matchingFaqs = normalizedQuery
    ? faqItems
        .filter((item) =>
          `${item.question} ${item.answer} ${item.category}`
            .toLowerCase()
            .includes(normalizedQuery)
        )
        .slice(0, 4)
    : [];
  const matchingCostumeSets = normalizedQuery
    ? iceBurnerSets.filter((set) =>
        [
          set.name,
          set.epithet,
          set.summary,
          set.poolType,
          ...set.characters,
          ...set.pieces
        ]
          .join(' ')
          .toLowerCase()
          .includes(normalizedQuery)
      )
    : [];

  return (
    <section className="wiki-explorer" aria-labelledby="browse-wiki">
      <div className="wiki-section-heading">
        <div>
          <p className="wiki-kicker">Knowledge library</p>
          <h2 id="browse-wiki">Browse every guide</h2>
        </div>
        <span>{wikiPages.length + 1} curated sections</span>
      </div>

      <div className="wiki-search-shell">
        <span aria-hidden="true">⌕</span>
        <label className="sr-only" htmlFor="wiki-search">Search the JoySword wiki</label>
        <input
          ref={searchRef}
          id="wiki-search"
          type="search"
          placeholder="Search combat, gear, characters, connection issues…"
          value={query}
          onChange={(event) => setQuery(event.target.value)}
        />
        {query ? (
          <button type="button" onClick={() => setQuery('')}>Clear</button>
        ) : (
          <kbd>/</kbd>
        )}
      </div>

      <div className="wiki-filter-row" aria-label="Filter guides">
        {filters.map((item) => (
          <button
            className={filter === item ? 'is-active' : ''}
            type="button"
            aria-pressed={filter === item}
            onClick={() => setFilter(item)}
            key={item}
          >
            {item}
          </button>
        ))}
      </div>

      {pages.length ? (
        <div className="wiki-guide-grid">
          {pages.map((page) => (
            <Link className="wiki-guide-card" to={`/wiki/${page.slug}`} key={page.slug}>
              <div className="wiki-guide-card-top">
                <span>{page.icon}</span>
                <small>{page.category}</small>
              </div>
              <h3>{page.title}</h3>
              <p>{page.summary}</p>
              <div>
                <span>{page.audience}</span>
                <span>{page.readingTime}</span>
              </div>
              <i aria-hidden="true">Read guide →</i>
            </Link>
          ))}
        </div>
      ) : (
        <div className="wiki-empty-state">
          <strong>No guide matched that search.</strong>
          <p>Try a broader term or clear the category filter.</p>
        </div>
      )}

      {matchingFaqs.length ? (
        <div className="wiki-inline-results">
          <div className="wiki-section-heading compact">
            <h3>FAQ matches</h3>
            <Link to={`/wiki/faq?q=${encodeURIComponent(query)}`}>Search all FAQ →</Link>
          </div>
          {matchingFaqs.map((item) => (
            <Link to={`/wiki/faq?q=${encodeURIComponent(query)}`} key={item.question}>
              <small>{item.category}</small>
              <span>{item.question}</span>
            </Link>
          ))}
        </div>
      ) : null}

      {matchingCostumeSets.length ? (
        <div className="wiki-inline-results">
          <div className="wiki-section-heading compact">
            <h3>Rare costume matches</h3>
            <Link to="/wiki/cash-shop/ice-burner">View full gallery →</Link>
          </div>
          {matchingCostumeSets.map((set) => (
            <Link to={getIceBurnerSetPath(set.slug)} key={set.slug}>
              <small>{set.poolType}</small>
              <span>{set.name} — {set.epithet}</span>
            </Link>
          ))}
        </div>
      ) : null}
    </section>
  );
}
