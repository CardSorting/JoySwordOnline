import { Link } from 'react-router-dom';
import {
  getIceBurnerSetPath,
  iceBurnerSets
} from '@/content/iceBurnerSets';
import { absoluteUrl } from '@/lib/site';
import { SEO } from '@/components/SEO';

const canonicalPath = '/wiki/cash-shop/ice-burner';

export default function IceBurnerGalleryPage() {
  const collectionJsonLd = {
    '@context': 'https://schema.org',
    '@type': 'CollectionPage',
    name: 'Rare Ice Burner Costume Gallery',
    description: 'Browse JoySword’s verified rare Ice Burner costume archive: Royal Blood, Shadow Incubus, Grace Fairy, Archangel, and El Search Party Officer.',
    url: absoluteUrl(canonicalPath),
    hasPart: iceBurnerSets.map((set) => ({
      '@type': 'Article',
      name: set.name,
      url: absoluteUrl(getIceBurnerSetPath(set.slug)),
      image: absoluteUrl(set.image)
    }))
  };
  const breadcrumbJsonLd = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: [
      { '@type': 'ListItem', position: 1, name: 'Player Wiki', item: absoluteUrl('/wiki') },
      { '@type': 'ListItem', position: 2, name: 'Cash Shop', item: absoluteUrl('/wiki/cash-shop') },
      { '@type': 'ListItem', position: 3, name: 'Ice Burner Gallery', item: absoluteUrl(canonicalPath) }
    ]
  };

  return (
    <article className="ice-archive">
      <SEO
        title="Rare Ice Burner Costume Gallery | JoySword"
        description="Browse JoySword’s verified rare Ice Burner costume archive: Royal Blood, Shadow Incubus, Grace Fairy, Archangel, and El Search Party Officer."
        keywords={['joysword ice burner', 'ice burner sets', 'rare elsword costumes', 'joysword cosmetics', 'royal blood elsword']}
        jsonLd={[collectionJsonLd, breadcrumbJsonLd]}
      />

      <header className="ice-archive-hero">
        <div className="wiki-breadcrumb">
          <Link to="/wiki">Player Wiki</Link><i>/</i>
          <Link to="/wiki/cash-shop">Cash Shop</Link><i>/</i>
          <strong>Ice Burner Gallery</strong>
        </div>
        <span className="rarity-stamp">Rare archive · 5 verified sets</span>
        <p className="wiki-kicker">Sealed collection file</p>
        <h1>Ice Burner<br /><em>Costume Gallery</em></h1>
        <p>
          Five rare collections reconstructed from the permanent pool tables,
          active premium shelf, and historical item templates—each with its own
          collector-grade fashion plate.
        </p>
        <div className="wiki-hero-meta">
          <span>3 permanent-pool collections</span>
          <span>2 featured Ara sculptures</span>
          <span>Concept art clearly labeled</span>
        </div>
      </header>

      <section className="ice-archive-intro">
        <div>
          <p className="wiki-kicker">How to read the archive</p>
          <h2>Verified data. Editorial wonder.</h2>
        </div>
        <p>
          Set names, supported characters, pieces, and availability come from the
          local JoySword data. Gallery plates are original editorial interpretations,
          not literal screenshots or guarantees of exact in-game appearance.
        </p>
      </section>

      <section className="ice-set-grid" aria-label="Rare Ice Burner costume sets">
        {iceBurnerSets.map((set, index) => (
          <Link to={getIceBurnerSetPath(set.slug)} key={set.slug}>
            <div className="ice-set-card-image">
              <img
                src={set.image}
                alt={set.imageAlt || set.name}
                style={{ position: 'absolute', width: '100%', height: '100%', top: 0, left: 0, objectFit: 'cover' }}
                loading="lazy"
              />
              <span>{String(index + 1).padStart(2, '0')}</span>
            </div>
            <div className="ice-set-card-copy">
              <small>{set.poolType}</small>
              <h2>{set.name}</h2>
              <strong>{set.epithet}</strong>
              <p>{set.summary}</p>
              <div>
                <span>{set.characters.length} supported {set.characters.length === 1 ? 'character' : 'characters'}</span>
                <span>{set.pieces.length} documented pieces</span>
              </div>
              <i>Open collection file →</i>
            </div>
          </Link>
        ))}
      </section>

      <aside className="wiki-callout warning ice-archive-callout">
        <span aria-hidden="true">!</span>
        <div>
          <strong>Collector’s disclosure</strong>
          <p>
            Ice Burner contents are randomized. This archive documents known set
            families and does not promise a result or invent unavailable probability data.
          </p>
        </div>
      </aside>
    </article>
  );
}
