import { useParams, Navigate, Link } from 'react-router-dom';
import {
  getIceBurnerSet,
  getIceBurnerSetPath,
  iceBurnerSets
} from '@/content/iceBurnerSets';
import { absoluteUrl } from '@/lib/site';
import { SEO } from '@/components/SEO';

export default function CostumeSetPage() {
  const { setSlug } = useParams<{ setSlug: string }>();
  const set = setSlug ? getIceBurnerSet(setSlug) : undefined;

  if (!set) {
    return <Navigate to="/wiki/cash-shop/ice-burner" replace />;
  }

  const setIndex = iceBurnerSets.findIndex((item) => item.slug === set.slug);
  const previous = iceBurnerSets[(setIndex - 1 + iceBurnerSets.length) % iceBurnerSets.length];
  const next = iceBurnerSets[(setIndex + 1) % iceBurnerSets.length];
  const canonicalPath = getIceBurnerSetPath(set.slug);
  const articleJsonLd = {
    '@context': 'https://schema.org',
    '@type': 'Article',
    headline: `${set.name} Ice Burner Costume Set`,
    description: set.summary,
    image: [absoluteUrl(set.image)],
    mainEntityOfPage: absoluteUrl(canonicalPath),
    dateModified: '2026-07-01',
    author: { '@type': 'Organization', name: 'JoySword Wiki' },
    publisher: { '@type': 'Organization', name: 'JoySword' }
  };
  const breadcrumbJsonLd = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Player Wiki', item: absoluteUrl('/wiki') },
      { '@type': 'ListItem', position: 2, name: 'Cash Shop', item: absoluteUrl('/wiki/cash-shop') },
      {
        '@type': 'ListItem',
        position: 3,
        name: 'Ice Burner Gallery',
        item: absoluteUrl('/wiki/cash-shop/ice-burner')
      },
      { '@type': 'ListItem', position: 4, name: set.name, item: absoluteUrl(canonicalPath) }
    ]
  };

  return (
    <article className="ice-set-page">
      <SEO
        title={`${set.name} Ice Burner Costume Set | JoySword`}
        description={set.summary}
        keywords={['joysword ice burner', set.name.toLowerCase(), `${set.slug} elsword`, 'rare elsword costumes', 'joysword cosmetics']}
        ogImage={set.image}
        jsonLd={[articleJsonLd, breadcrumbJsonLd]}
      />

      <div className="wiki-breadcrumb">
        <Link to="/wiki">Player Wiki</Link><i>/</i>
        <Link to="/wiki/cash-shop">Cash Shop</Link><i>/</i>
        <Link to="/wiki/cash-shop/ice-burner">Ice Burner</Link><i>/</i>
        <strong>{set.name}</strong>
      </div>

      <header className="ice-set-heading">
        <div>
          <span className="rarity-stamp">{set.poolType}</span>
          <p className="wiki-kicker">Rare costume file · {String(setIndex + 1).padStart(2, '0')}</p>
          <h1>{set.name}</h1>
          <strong>{set.epithet}</strong>
          <p>{set.summary}</p>
        </div>
        <dl>
          <div><dt>Availability</dt><dd>{set.availability}</dd></div>
          <div><dt>Characters</dt><dd>{set.characters.join(', ')}</dd></div>
          <div><dt>Documented pieces</dt><dd>{set.pieces.length}</dd></div>
          <div><dt>Archive status</dt><dd>Verified locally</dd></div>
        </dl>
      </header>

      <figure className="ice-set-hero-plate">
        <img
          src={set.image}
          alt={set.imageAlt}
          width={1536}
          height={1024}
          loading="eager"
        />
        <figcaption>
          <span>Collector fashion plate</span>
          Original editorial interpretation · In-game models remain authoritative
        </figcaption>
      </figure>

      <section className="ice-set-details">
        <div className="ice-set-palette">
          <p className="wiki-kicker">Color story</p>
          <h2>Signature palette</h2>
          <div>
            {set.palette.map((color, index) => (
              <span key={color}>
                <i style={{ backgroundColor: set.paletteHex[index] }} aria-hidden="true" />
                {color}
              </span>
            ))}
          </div>
        </div>

        <div className="ice-set-pieces">
          <p className="wiki-kicker">Archive checklist</p>
          <h2>Documented pieces</h2>
          <ul>
            {set.pieces.map((piece) => <li key={piece}><i aria-hidden="true">◇</i>{piece}</li>)}
          </ul>
        </div>
      </section>

      <section className="ice-set-signature">
        <div>
          <p className="wiki-kicker">Why collectors remember it</p>
          <h2>Set signatures</h2>
        </div>
        <div>
          {set.signature.map((point, index) => (
            <article key={point}>
              <span>{String(index + 1).padStart(2, '0')}</span>
              <p>{point}</p>
            </article>
          ))}
        </div>
      </section>

      <aside className="wiki-callout info ice-set-evidence">
        <span aria-hidden="true">i</span>
        <div><strong>Archive evidence</strong><p>{set.archiveNote}</p></div>
      </aside>

      <nav className="ice-set-pagination" aria-label="Other rare costume sets">
        <Link to={getIceBurnerSetPath(previous.slug)}>
          <small>Previous set</small><span>← {previous.name}</span>
        </Link>
        <Link to="/wiki/cash-shop/ice-burner">
          <small>Collection index</small><span>All rare sets</span>
        </Link>
        <Link to={getIceBurnerSetPath(next.slug)}>
          <small>Next set</small><span>{next.name} →</span>
        </Link>
      </nav>
    </article>
  );
}
