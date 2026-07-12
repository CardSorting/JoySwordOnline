import { Link } from 'react-router-dom';
import { WikiExplorer } from '@/components/wiki/WikiExplorer';
import { faqItems, progressionMilestones } from '@/content/wiki';
import { SEO } from '@/components/SEO';

export default function WikiHomePage() {
  const wikiCollectionSchema = {
    '@context': 'https://schema.org',
    '@type': 'CollectionPage',
    'name': 'JoySword Player Wiki',
    'description': 'A comprehensive collection of guides, tutorials, FAQs, and database references for the JoySword classic anime action MMORPG.',
    'url': 'https://launcher.onjoysword.top/wiki'
  };

  return (
    <>
      <SEO
        title="Player Wiki | JoySword"
        description="JoySword Player Wiki. Access version-aware guides for every stage of play: client setup, character pathing, combat execution, absolute gear milestones, and FAQs."
        keywords={['joysword wiki', 'elsword wiki', 'joysword database', 'joysword progression', 'combat guide elsword', 'henir gear']}
        jsonLd={wikiCollectionSchema}
      />
      <section className="wiki-hero">
        <div className="wiki-edition-ribbon">
          <small>Collector’s edition</small>
          <strong>Vol. 01</strong>
        </div>
        <div className="wiki-breadcrumb"><span>JoySword</span><i>/</i><strong>Player Wiki</strong></div>
        <p className="wiki-kicker">The ultimate realm field guide</p>
        <h1>Learn the realm.<br /><em>Master your path.</em></h1>
        <p>
          A version-aware guide for every stage of JoySword—from a first Windows
          setup to level-65 builds, endgame execution, and competitive play.
        </p>
        <div className="wiki-hero-meta">
          <span><i className="live-dot" /> Historical build verified</span>
          <span>8 base characters</span>
          <span>Level 65 capstone</span>
          <span>{faqItems.length} FAQ answers</span>
        </div>
      </section>

      <section className="wiki-paths" aria-labelledby="choose-path">
        <div className="wiki-section-heading">
          <div>
            <p className="wiki-kicker">Recommended routes</p>
            <h2 id="choose-path">Choose where you are now</h2>
          </div>
        </div>
        <div className="wiki-path-grid">
          <Link to="/wiki/getting-started">
            <small>New adventurer</small>
            <strong>Start from zero</strong>
            <p>Install, connect, create a character, and complete a confident first session.</p>
            <span>Begin the tutorial →</span>
          </Link>
          <Link to="/wiki/progression">
            <small>Returning player</small>
            <strong>Find the next goal</strong>
            <p>Re-enter the level 1–65 route, claim missed milestones, and rebuild your loadout.</p>
            <span>View progression →</span>
          </Link>
          <Link to="/wiki/combat#practice">
            <small>Experienced player</small>
            <strong>Optimize execution</strong>
            <p>Refine movement, resource value, boss windows, PvP confirms, and review habits.</p>
            <span>Study mastery →</span>
          </Link>
        </div>
      </section>

      <section className="cashshop-spotlight">
        <div className="cashshop-spotlight-copy">
          <p className="wiki-kicker">Secret vault unlocked</p>
          <span className="rarity-stamp">Legendary feature</span>
          <h2>The Collector’s Vault</h2>
          <p>
            Ice revelations. Fox spirits. Lost fashion sets. Seven shelves of
            Time and Space equipment. JoySword’s restored cash shop now has the
            guidebook chapter it deserves.
          </p>
          <div>
            <span>Premium archive</span>
            <span>Pets & mounts</span>
            <span>Henir armory</span>
          </div>
          <Link to="/wiki/cash-shop">Break the seal <i aria-hidden="true">→</i></Link>
        </div>
      </section>

      <WikiExplorer />

      <section className="wiki-milestone-preview">
        <div className="wiki-section-heading">
          <div>
            <p className="wiki-kicker">Realm progression</p>
            <h2>Your road to level 65</h2>
          </div>
          <Link to="/wiki/progression#milestones">Full progression guide →</Link>
        </div>
        <div className="milestone-track" aria-label="Progression milestones">
          {progressionMilestones.map(([level, reward]) => (
            <div key={level}>
              <span>Lv. {level}</span>
              <i />
              <p>{reward}</p>
            </div>
          ))}
        </div>
      </section>

      <section className="wiki-scope-panel">
        <div>
          <p className="wiki-kicker">Built for accuracy</p>
          <h2>Version-aware by design</h2>
        </div>
        <p>
          JoySword uses a historical client with realm-specific progression. This wiki
          separates verified local behavior from general Elsword fundamentals and
          explicitly warns when modern retail information may not apply.
        </p>
        <Link to="/wiki/faq">Read common questions →</Link>
      </section>
    </>
  );
}
