import { useParams, Navigate, Link } from 'react-router-dom';
import { useEffect } from 'react';
import { getWikiPage, wikiPages } from '@/content/wiki';
import { SEO } from '@/components/SEO';
import { absoluteUrl } from '@/lib/site';

function relatedTitle(slug: string) {
  if (slug === 'faq') {
    return 'Frequently asked questions';
  }
  return getWikiPage(slug)?.title ?? slug;
}

export default function WikiArticlePage() {
  const { slug } = useParams<{ slug: string }>();
  const hashIndex = slug ? slug.indexOf('#') : -1;
  const realSlug = hashIndex !== -1 ? slug!.slice(0, hashIndex) : slug;
  const targetSection = hashIndex !== -1 ? slug!.slice(hashIndex + 1) : '';

  const page = realSlug ? getWikiPage(realSlug) : undefined;

  useEffect(() => {
    if (targetSection) {
      setTimeout(() => {
        const element = document.getElementById(targetSection);
        if (element) {
          element.scrollIntoView({ behavior: 'smooth' });
        }
      }, 100);
    }
  }, [page, targetSection]);

  const handleTocClick = (e: React.MouseEvent, id: string) => {
    e.preventDefault();
    const element = document.getElementById(id);
    if (element) {
      element.scrollIntoView({ behavior: 'smooth' });
    }
  };

  if (!page) {
    return <Navigate to="/wiki" replace />;
  }

  const pageIndex = wikiPages.findIndex((item) => item.slug === page.slug);
  const previous = pageIndex > 0 ? wikiPages[pageIndex - 1] : undefined;
  const next = pageIndex < wikiPages.length - 1 ? wikiPages[pageIndex + 1] : undefined;

  const ogImage = page.heroImage || page.sections.find(s => s.art?.src)?.art?.src || '/joysword_hero_banner.webp';

  const articleSchema = {
    '@context': 'https://schema.org',
    '@type': 'TechArticle',
    'headline': `${page.title} | JoySword Wiki`,
    'description': page.summary,
    'audience': {
      '@type': 'Audience',
      'audienceType': page.audience
    },
    'timeRequired': page.readingTime ? `PT${page.readingTime.replace(/[^0-9]/g, '')}M` : undefined,
    'author': {
      '@type': 'Organization',
      'name': 'JoySword Wiki'
    },
    'inLanguage': 'en',
    'image': [absoluteUrl(ogImage)]
  };

  const breadcrumbSchema = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    'itemListElement': [
      { '@type': 'ListItem', position: 1, 'name': 'Player Wiki', 'item': absoluteUrl('/wiki') },
      { '@type': 'ListItem', position: 2, 'name': page.shortTitle, 'item': absoluteUrl(`/wiki/${page.slug}`) }
    ]
  };

  return (
    <article className="wiki-article">
      <SEO
        title={`${page.title} | JoySword Wiki`}
        description={page.summary}
        keywords={['joysword wiki', 'joysword guide', page.slug, page.shortTitle.toLowerCase(), page.category.toLowerCase()]}
        ogImage={ogImage}
        jsonLd={[articleSchema, breadcrumbSchema]}
      />
      <header className="wiki-article-header">
        <div className="wiki-breadcrumb">
          <Link to="/wiki">Player Wiki</Link><i>/</i><strong>{page.shortTitle}</strong>
        </div>
        <p className="wiki-kicker">{page.category}</p>
        <h1>{page.title}</h1>
        <p>{page.summary}</p>
        <div className="wiki-article-meta">
          <span>Audience: {page.audience}</span>
          <span>Reading time: {page.readingTime}</span>
          <span>Reviewed July 2026</span>
        </div>
      </header>

      {page.slug === 'cash-shop' ? (
        <Link className="ice-burner-entry-banner" to="/wiki/cash-shop/ice-burner">
          <span>
            <small>New collector archive</small>
            <strong>Rare Ice Burner Costume Gallery</strong>
            <p>Five verified collections · Five dedicated fashion plates</p>
          </span>
          <i aria-hidden="true">Break the seal →</i>
        </Link>
      ) : null}

      <div className="wiki-article-grid">
        <div className="wiki-article-body">
          {page.sections.map((section, sectionIndex) => (
            <section id={section.id} key={section.id}>
              <div className="wiki-section-number" aria-hidden="true">
                {String(sectionIndex + 1).padStart(2, '0')}
              </div>
              <h2>{section.title}</h2>
              {section.intro ? <p className="wiki-section-intro">{section.intro}</p> : null}
              {section.paragraphs?.map((paragraph) => <p key={paragraph}>{paragraph}</p>)}

              {section.art ? (
                <figure className="wiki-collector-plate">
                  <img
                    src={section.art.src}
                    alt={section.art.alt}
                    width={1254}
                    height={1254}
                  />
                  <figcaption>{section.art.caption}</figcaption>
                </figure>
              ) : null}

              {section.steps ? (
                <ol className="wiki-steps">
                  {section.steps.map((item, index) => (
                    <li key={item.title}>
                      <span>{String(index + 1).padStart(2, '0')}</span>
                      <div><strong>{item.title}</strong><p>{item.text}</p></div>
                    </li>
                  ))}
                </ol>
              ) : null}

              {section.bullets ? (
                <div className="wiki-definition-list">
                  {section.bullets.map((item) => (
                    <div key={item.title}>
                      <i aria-hidden="true" />
                      <p><strong>{item.title}</strong>{item.text}</p>
                    </div>
                  ))}
                </div>
              ) : null}

              {section.table ? (
                <div className="wiki-table-scroll">
                  <table>
                    <thead>
                      <tr>
                        {section.table.columns.map((column) => <th scope="col" key={column}>{column}</th>)}
                      </tr>
                    </thead>
                    <tbody>
                      {section.table.rows.map((row, index) => (
                        <tr key={`${section.id}-${index}`}>
                          {row.map((cell, cellIndex) =>
                            cellIndex === 0 ? (
                              <th scope="row" key={cellIndex}>{cell}</th>
                            ) : (
                              <td key={cellIndex}>{cell}</td>
                            )
                          )}
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              ) : null}

              {section.note ? (
                <aside className={`wiki-callout ${section.note.tone}`}>
                  <span aria-hidden="true">
                    {section.note.tone === 'warning' ? '!' : section.note.tone === 'tip' ? '✦' : 'i'}
                  </span>
                  <div><strong>{section.note.title}</strong><p>{section.note.text}</p></div>
                </aside>
              ) : null}
            </section>
          ))}

          <section className="wiki-related">
            <p className="wiki-kicker">Continue learning</p>
            <h2>Related guides</h2>
            <div>
              {page.related.map((slug) => (
                <Link to={slug === 'faq' ? '/wiki/faq' : `/wiki/${slug}`} key={slug}>
                  <span>{relatedTitle(slug)}</span><i aria-hidden="true">→</i>
                </Link>
              ))}
            </div>
          </section>

          <nav className="wiki-page-pagination" aria-label="Adjacent wiki guides">
            {previous ? (
              <Link to={`/wiki/${previous.slug}`}>
                <small>Previous guide</small><span>← {previous.shortTitle}</span>
              </Link>
            ) : <span />}
            {next ? (
              <Link to={`/wiki/${next.slug}`}>
                <small>Next guide</small><span>{next.shortTitle} →</span>
              </Link>
            ) : <span />}
          </nav>
        </div>

        <aside className="wiki-toc" aria-label="On this page">
          <small>On this page</small>
          <nav>
            {page.sections.map((section) => (
              <a href="/" onClick={(e) => handleTocClick(e, section.id)} key={section.id}>{section.title}</a>
            ))}
          </nav>
          <Link to="/wiki/faq">Still have a question? <span>FAQ →</span></Link>
        </aside>
      </div>
    </article>
  );
}
