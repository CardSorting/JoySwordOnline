'use client';

import { Link, useSearchParams } from 'react-router-dom';
import { useMemo, useState } from 'react';
import { faqItems, type FaqItem } from '@/content/wiki';

type FaqFilter = 'All' | FaqItem['category'];

const categories: FaqFilter[] = [
  'All',
  'Setup',
  'Gameplay',
  'Progression',
  'Cash Shop',
  'PvP',
  'Troubleshooting'
];

export function FaqExplorer() {
  const [searchParams] = useSearchParams();
  const [query, setQuery] = useState(searchParams.get('q') ?? '');
  const [category, setCategory] = useState<FaqFilter>('All');
  const normalizedQuery = query.trim().toLowerCase();

  const results = useMemo(
    () =>
      faqItems.filter((item) => {
        const matchesCategory = category === 'All' || item.category === category;
        const matchesQuery =
          !normalizedQuery ||
          `${item.question} ${item.answer}`.toLowerCase().includes(normalizedQuery);
        return matchesCategory && matchesQuery;
      }),
    [category, normalizedQuery]
  );

  return (
    <div className="faq-explorer">
      <div className="wiki-search-shell">
        <span aria-hidden="true">⌕</span>
        <label className="sr-only" htmlFor="faq-search">Search frequently asked questions</label>
        <input
          id="faq-search"
          type="search"
          placeholder="Search setup, progression, PvP…"
          value={query}
          onChange={(event) => setQuery(event.target.value)}
        />
        {query ? <button type="button" onClick={() => setQuery('')}>Clear</button> : null}
      </div>

      <div className="wiki-filter-row" aria-label="Filter frequently asked questions">
        {categories.map((item) => (
          <button
            className={category === item ? 'is-active' : ''}
            type="button"
            aria-pressed={category === item}
            onClick={() => setCategory(item)}
            key={item}
          >
            {item}
          </button>
        ))}
      </div>

      <p className="faq-result-count" aria-live="polite">
        {results.length} {results.length === 1 ? 'answer' : 'answers'}
      </p>

      <div className="faq-list">
        {results.map((item) => (
          <details key={item.question}>
            <summary>
              <span>
                <small>{item.category}</small>
                {item.question}
              </span>
              <i aria-hidden="true">+</i>
            </summary>
            <div>
              <p>{item.answer}</p>
              {item.links?.map((link) => (
                <Link to={link.href} key={link.href}>{link.label} →</Link>
              ))}
            </div>
          </details>
        ))}
      </div>

      {!results.length ? (
        <div className="wiki-empty-state">
          <strong>No answer matched that search.</strong>
          <p>Try a shorter phrase or choose All categories.</p>
        </div>
      ) : null}
    </div>
  );
}
