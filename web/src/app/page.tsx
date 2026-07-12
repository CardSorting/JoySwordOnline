'use client';

import { Link } from 'react-router-dom';
import { useState, useEffect } from 'react';
import { ServiceStatus } from '@/components/ServiceStatus';
import { PortalHeader } from '@/components/PortalHeader';
import { useSectionNavigator } from '@/lib/navigation';
import { SEO } from '@/components/SEO';

type CharacterKey = 'elsword' | 'aisha' | 'rena';
const characterKeys: CharacterKey[] = ['elsword', 'aisha', 'rena'];

type Character = {
  name: string;
  epithet: string;
  role: string;
  avatar: string;
  splash: string;
  element: string;
  elementColor: string;
  summary: string;
  combatStyle: string;
  weapon: string;
  complexity: string;
  statPower: string;
  statDefense: string;
  statSpeed: string;
  mechanicName: string;
  mechanicDesc: string;
};

const characters: Record<CharacterKey, Character> = {
  elsword: {
    name: 'Elsword',
    epithet: 'The Knight Recruit',
    role: 'Melee fighter specializing in sword combinations and defensive stance.',
    avatar: '/character_avatars/elsword-face.png',
    splash: '/character_splashes/elsword-splash.png',
    element: 'Fire',
    elementColor: '#ff5b47',
    summary: 'A fast, close-range sword fighter with stable defenses and accessible combat routes.',
    combatStyle: 'Vanguard Melee',
    weapon: 'Demonic Claymore',
    complexity: 'Normal',
    statPower: '95%',
    statDefense: '80%',
    statSpeed: '60%',
    mechanicName: 'Sword Aura',
    mechanicDesc: 'Charge the Vitality/Destruction bars to unlock enhanced speed or damage.'
  },
  aisha: {
    name: 'Aisha',
    epithet: 'The Mage',
    role: 'Ranged spellcaster focusing on elemental area damage and mana management.',
    avatar: '/character_avatars/aisha-face.png',
    splash: '/character_splashes/aisha-splash.png',
    element: 'Cosmic',
    elementColor: '#ab77ff',
    summary: 'A glass-cannon spellcaster who relies on positioning, mana recovery, and teleport escapes.',
    combatStyle: 'Elemental Spellcaster',
    weapon: 'Archmage Staff',
    complexity: 'High',
    statPower: '100%',
    statDefense: '35%',
    statSpeed: '70%',
    mechanicName: 'Mana Recovery',
    mechanicDesc: 'Stand still to accelerate MP recovery during neutral periods.'
  },
  rena: {
    name: 'Rena',
    epithet: 'The Ranger',
    role: 'Mobile ranged specialist utilizing bow combos, double jumps, and wind spirits.',
    avatar: '/character_avatars/rena-face.png',
    splash: '/character_splashes/rena-splash.png',
    element: 'Wind',
    elementColor: '#5effb0',
    summary: 'A fast, double-jumping marksman who transitions between long-range pressure and kick combos.',
    combatStyle: 'Wind Ranger / Marksman',
    weapon: 'Magical Composite Bow',
    complexity: 'Medium',
    statPower: '85%',
    statDefense: '50%',
    statSpeed: '95%',
    mechanicName: "Nature's Force",
    mechanicDesc: 'Run or slide to build spirit bars for bonus movement speed.'
  }
};

const features = [
  {
    number: '01',
    title: 'Precision combat',
    copy: 'Combine light attacks, heavy launchers, and special active skills with a real-time knockdown system.',
    icon: (
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round">
        <path d="M14.5 17.5L3 6V3h3l11.5 11.5M17.5 14.5L19 13l2 2-1.5 1.5M13 19l-1.5 1.5-2-2 1.5-1.5" />
        <circle cx="19" cy="19" r="1" />
        <circle cx="5" cy="5" r="1" />
      </svg>
    )
  },
  {
    number: '02',
    title: '8 classic characters',
    copy: 'Elsword, Aisha, Rena, Raven, Eve, Chung, Ara, and Elesis—each with unique job progression paths.',
    icon: (
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round">
        <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2" />
        <circle cx="9" cy="7" r="4" />
        <path d="M23 21v-2a4 4 0 0 0-3-3.87" />
        <path d="M16 3.13a4 4 0 0 1 0 7.75" />
      </svg>
    )
  },
  {
    number: '03',
    title: 'Level 65 progression',
    copy: 'Relive classic equipment milestones: Altera dungeons, Henir’s Time and Space, and the absolute armory.',
    icon: (
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round">
        <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5" />
      </svg>
    )
  },
  {
    number: '04',
    title: 'Zero database reliance',
    copy: 'Offline-ready. Serves client downloads and comprehensive guides completely statically.',
    icon: (
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round">
        <rect x="3" y="11" width="18" height="11" rx="2" ry="2" />
        <path d="M7 11V7a5 5 0 0 1 10 0v4" />
      </svg>
    )
  },
  {
    number: '05',
    title: 'Private client updates',
    copy: 'The JoySword launcher syncs verified system configurations and diagnostic fixes locally.',
    icon: (
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round">
        <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z" />
        <path d="M9 11l2 2 4-4" />
      </svg>
    )
  },
  {
    number: '06',
    title: 'Community world',
    copy: 'Join a player-focused realm where every party, rivalry, and shared victory shapes the experience.',
    icon: (
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round">
        <circle cx="12" cy="12" r="10" />
        <path d="M2 12h20M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z" />
      </svg>
    )
  }
];

type RegionKey = 'ruben' | 'elder' | 'altera' | 'velder';
const regionKeys: RegionKey[] = ['ruben', 'elder', 'altera', 'velder'];

type Region = {
  name: string;
  subtitle: string;
  level: string;
  image: string;
  description: string;
  coordinate: string;
  dungeons: string[];
  drops: string[];
};

const regions: Record<RegionKey, Region> = {
  ruben: {
    name: 'Ruben',
    subtitle: 'Forest of the El',
    level: 'Lv. 1 - 10',
    image: '/regions/ruben.png',
    description: 'A tranquil woodland sanctuary powered by the pure life energy of the Ruben El. The starting ground for rookie adventurers.',
    coordinate: 'X: 104.22 // Y: 12.80',
    dungeons: ["El's Tree", 'Forest Ruins'],
    drops: ["El's Essence", 'Rookie Blade', 'El Fragment']
  },
  elder: {
    name: 'Elder',
    subtitle: 'Suburbs and Castle Town',
    level: 'Lv. 11 - 20',
    image: '/regions/elder.png',
    description: "A grand merchant city controlled by Wally's mechanical castle army. Home to hidden rogue bands and experimental machinery.",
    coordinate: 'X: 145.60 // Y: -24.11',
    dungeons: ['Banthus\' Cave', 'Wally\'s Castle'],
    drops: ['Banthus Necklace', 'Wally\'s Ring', 'Nasod Core']
  },
  altera: {
    name: 'Altera',
    subtitle: 'Floating Nasod Continent',
    level: 'Lv. 35 - 45',
    image: '/regions/altera.png',
    description: 'A massive floating metallic continent in the clouds, ruled by the highly advanced mechanical Nasod race.',
    coordinate: 'X: 302.80 // Y: 180.45',
    dungeons: ['Black Crow Ship', 'Altera Core'],
    drops: ['Type-H Weapon', 'Core Fragment', 'Altera Jet Engine']
  },
  velder: {
    name: 'Velder',
    subtitle: 'Imperial Capital City',
    level: 'Lv. 46 - 55',
    image: '/regions/velder.png',
    description: 'The majestic capital city of the Velder Empire, currently overrun by dark portals and demon commanders.',
    coordinate: 'X: 422.90 // Y: -88.75',
    dungeons: ['Velder Suburbs', 'Southern Gate'],
    drops: ['Imperial Cape', 'Dark El', 'Demon Commander Badge']
  }
};

export default function HomePage() {
  const [activeCharacter, setActiveCharacter] = useState<CharacterKey>('elsword');
  const [activeRegion, setActiveRegion] = useState<RegionKey>('ruben');
  const navigateToSection = useSectionNavigator();
  const [mouseOffset, setMouseOffset] = useState({ x: 0, y: 0 });
  const [isHovered, setIsHovered] = useState(false);

  const handleMouseMove = (e: React.MouseEvent<HTMLDivElement>) => {
    const card = e.currentTarget;
    const rect = card.getBoundingClientRect();
    const x = (e.clientX - rect.left) / rect.width - 0.5;
    const y = (e.clientY - rect.top) / rect.height - 0.5;
    setMouseOffset({ x, y });
  };

  const handleMouseLeave = () => {
    setIsHovered(false);
    setMouseOffset({ x: 0, y: 0 });
  };

  const handleMouseEnter = () => {
    setIsHovered(true);
  };

  useEffect(() => {
    const sectionId = window.localStorage.getItem('scrollToSection');
    if (sectionId) {
      window.localStorage.removeItem('scrollToSection');
      setTimeout(() => {
        const element = document.getElementById(sectionId);
        if (element) {
          element.scrollIntoView({ behavior: 'smooth' });
        }
      }, 100);
    }
  }, []);

  const selectedCharacter = characters[activeCharacter];

  function handleCharacterKeyDown(event: React.KeyboardEvent<HTMLButtonElement>, key: CharacterKey) {
    if (!['ArrowLeft', 'ArrowRight', 'Home', 'End'].includes(event.key)) return;
    event.preventDefault();
    const currentIndex = characterKeys.indexOf(key);
    const nextIndex = event.key === 'Home'
      ? 0
      : event.key === 'End'
        ? characterKeys.length - 1
        : (currentIndex + (event.key === 'ArrowRight' ? 1 : -1) + characterKeys.length)
          % characterKeys.length;
    const nextKey = characterKeys[nextIndex];
    setActiveCharacter(nextKey);
    document.getElementById(`character-tab-${nextKey}`)?.focus();
  }

  const websiteSchema = {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    'name': 'JoySword',
    'url': 'https://launcher.onjoysword.top',
    'description': 'Play JoySword, a community-hosted classic anime action MMORPG realm with fast combat, meaningful progression, and a detailed player wiki.',
    'potentialAction': {
      '@type': 'SearchAction',
      'target': 'https://launcher.onjoysword.top/wiki?q={search_term_string}',
      'query-input': 'required name=search_term_string'
    }
  };

  const gameSchema = {
    '@context': 'https://schema.org',
    '@type': 'VideoGame',
    'name': 'JoySword',
    'description': 'A community-hosted classic anime action MMORPG realm featuring high-speed action combat, job systems, and active multiplayer.',
    'genre': ['Action RPG', 'MMORPG', 'Anime'],
    'playMode': ['SinglePlayer', 'MultiPlayer'],
    'gamePlatform': ['Windows PC'],
    'applicationCategory': 'Game',
    'operatingSystem': 'Windows 10, Windows 11'
  };

  return (
    <main className="site-shell" id="main-content">
      <SEO
        title="JoySword — Classic Anime Action MMORPG Realm"
        description="Play JoySword, a community-hosted classic anime action MMORPG realm with fast combat, meaningful progression, a secure account portal, and a detailed player wiki."
        keywords={['joysword', 'elsword', 'private server', 'anime mmorpg', 'classic elsword', 'offline elsword', 'action rpg', 'retro gaming', 'co-op', 'pvp']}
        jsonLd={[websiteSchema, gameSchema]}
      />
      <PortalHeader />

      <section id="home" className="hero-section">
        <div className="hero-backdrop" aria-hidden="true">
          <img
            className="hero-backdrop-image"
            src="/joysword_hero_banner.webp"
            alt=""
            style={{ position: 'absolute', width: '100%', height: '100%', top: 0, left: 0, objectFit: 'cover' }}
            loading="eager"
          />
        </div>
        <div className="hero-particles" aria-hidden="true" />

        <div className="hero-content">
          <p className="eyebrow">
            <span /> Online anime action MMORPG
          </p>
          <h1>Joy<span>Sword</span></h1>
          <p className="hero-tagline">Your legend. Your blade. Your world.</p>
          <p className="hero-copy">
            Enter a community-hosted private server where high-speed combat, classic
            progression, and unforgettable heroes meet in one living online realm.
          </p>

          <div className="hero-actions">
            <Link className="button button-primary" to="/download">
              Download client <span aria-hidden="true">↓</span>
            </Link>
            <a className="button button-secondary" href="#exploration" onClick={(e) => { e.preventDefault(); navigateToSection('exploration'); }}>
              World map
            </a>
          </div>

          <div className="server-badges" aria-label="Server status">
            <ServiceStatus />
            <span><i className="shield-icon" /> Private Server</span>
          </div>
        </div>

        <aside className="realm-card" aria-label="Realm status">
          <div className="realm-card-heading"><span>Service status</span></div>
          <strong>JoySword Online</strong>
          <p>Adventure server</p>
          <div className="realm-stat">
             <span>Server Status</span>
             <b>Online</b>
          </div>
          <Link to="/download">Get client <span aria-hidden="true">↗</span></Link>
        </aside>

        <a className="scroll-cue" href="#features" aria-label="Explore JoySword features">
          <span>Explore</span>
          <i />
        </a>
      </section>

      <section id="features" className="features-section">
        <div className="section-intro centered">
          <p className="eyebrow"><span /> Cinematic Archives</p>
          <h2>Experience the <em>realm in action.</em></h2>
          <p>Watch the official promo trailer showcasing classic combat progression and anime visual impacts.</p>
        </div>

        <div className="hoyoverse-theater-container">
          <div className="hoyoverse-theater-frame">
            <div className="theater-glowing-backdrop" />
            <div className="theater-inner-frame">
              <iframe
                src="https://www.youtube.com/embed/mCwikZcLws8?si=axM5jo4mKBhefv3n&rel=0"
                title="Elsword Official Promo Trailer"
                frameBorder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                referrerPolicy="strict-origin-when-cross-origin"
                allowFullScreen
                className="theater-iframe"
              />
              <div className="theater-corner-braces">
                <div className="brace brace-tl" />
                <div className="brace brace-tr" />
                <div className="brace brace-bl" />
                <div className="brace brace-br" />
              </div>
            </div>
          </div>

          <div className="hoyoverse-theater-meta">
            <div className="meta-left">
              <span className="meta-badge">PROMO LOG // 001</span>
              <h3>Official Elsword Gameplay Trailer</h3>
              <p>
                Witness the high-octane battle systems, branching class paths, and party combat dynamics that 
                defined a generation of anime side-scrolling action.
              </p>
            </div>
            <div className="meta-right">
              <div className="meta-spec-item">
                <small>SOURCE</small>
                <span>YOUTUBE ENCRYPTED</span>
              </div>
              <div className="meta-spec-item">
                <small>QUALITY</small>
                <span>HD 1080P // 60FPS</span>
              </div>
              <div className="meta-spec-item">
                <small>STATUS</small>
                <span className="status-online"><span className="status-pulse" /> LIVE SYNC</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section id="characters" className="characters-section">
        <div className="section-intro centered">
          <p className="eyebrow"><span /> Characters</p>
          <h2>Forge your <em>fighting path.</em></h2>
          <p>Explore three core options designed for combat mastery.</p>
        </div>

        <div className="hoyoverse-showcase-container" style={{ '--element-color': selectedCharacter.elementColor } as React.CSSProperties}>
          
          {/* Left Panel: Character details */}
          <div className="hoyoverse-details-panel">
            <div className="hoyoverse-element-badge">
              <span className="hoyoverse-element-dot" />
              {selectedCharacter.element} / {selectedCharacter.name}
            </div>
            <h2>{selectedCharacter.name}</h2>
            <p className="hoyoverse-epithet">{selectedCharacter.epithet}</p>
            <p className="hoyoverse-role-summary">{selectedCharacter.role}</p>
            
            <div className="hoyoverse-stats-matrix">
              <div className="hoyoverse-stat-card">
                <span className="hoyoverse-stat-label">Combat Style</span>
                <strong className="hoyoverse-stat-val">{selectedCharacter.combatStyle}</strong>
              </div>
              <div className="hoyoverse-stat-card">
                <span className="hoyoverse-stat-label">Signature Weapon</span>
                <strong className="hoyoverse-stat-val">{selectedCharacter.weapon}</strong>
              </div>
              <div className="hoyoverse-stat-card">
                <span className="hoyoverse-stat-label">Complexity</span>
                <strong className="hoyoverse-stat-val" style={{ color: selectedCharacter.complexity === 'High' ? '#ff5b47' : selectedCharacter.complexity === 'Medium' ? '#ffd500' : '#5effb0' }}>
                  {selectedCharacter.complexity}
                </strong>
              </div>
            </div>

            <div className="hoyoverse-gauges-section">
              <div className="hoyoverse-gauge-row">
                <span className="hoyoverse-gauge-label">POWER</span>
                <div className="hoyoverse-gauge-track">
                  <div className="hoyoverse-gauge-fill" style={{ width: selectedCharacter.statPower }} />
                </div>
                <span className="hoyoverse-gauge-value">{selectedCharacter.statPower}</span>
              </div>
              <div className="hoyoverse-gauge-row">
                <span className="hoyoverse-gauge-label">DEFENSE</span>
                <div className="hoyoverse-gauge-track">
                  <div className="hoyoverse-gauge-fill" style={{ width: selectedCharacter.statDefense }} />
                </div>
                <span className="hoyoverse-gauge-value">{selectedCharacter.statDefense}</span>
              </div>
              <div className="hoyoverse-gauge-row">
                <span className="hoyoverse-gauge-label">SPEED</span>
                <div className="hoyoverse-gauge-track">
                  <div className="hoyoverse-gauge-fill" style={{ width: selectedCharacter.statSpeed }} />
                </div>
                <span className="hoyoverse-gauge-value">{selectedCharacter.statSpeed}</span>
              </div>
            </div>

            <div className="hoyoverse-mechanic-card">
              <div className="hoyoverse-mechanic-header">
                <span className="hoyoverse-mechanic-badge">CORE</span>
                <strong>{selectedCharacter.mechanicName}</strong>
              </div>
              <p>{selectedCharacter.mechanicDesc}</p>
            </div>

            {/* Selector Tablist */}
            <div className="hoyoverse-character-tablist" role="tablist" aria-label="JoySword base character selection">
              {characterKeys.map((key) => (
                <button
                  id={`character-tab-${key}`}
                  className={`hoyoverse-tab-btn ${activeCharacter === key ? 'is-active' : ''}`}
                  type="button"
                  role="tab"
                  aria-selected={activeCharacter === key}
                  onClick={() => setActiveCharacter(key)}
                  onKeyDown={(e) => handleCharacterKeyDown(e, key)}
                  key={key}
                  style={{ '--element-color': characters[key].elementColor } as React.CSSProperties}
                >
                  <img
                    src={characters[key].avatar}
                    alt={`${characters[key].name} avatar`}
                    width={32}
                    height={32}
                  />
                  <span>{characters[key].name}</span>
                </button>
              ))}
            </div>
          </div>

          {/* Right Panel: Parallax 3D Card */}
          <div 
            className="hoyoverse-parallax-card-container"
            onMouseMove={handleMouseMove}
            onMouseLeave={handleMouseLeave}
            onMouseEnter={handleMouseEnter}
          >
            <div 
              className="hoyoverse-parallax-card"
              style={{
                transform: isHovered 
                  ? `perspective(1000px) rotateX(${mouseOffset.y * -12}deg) rotateY(${mouseOffset.x * 12}deg)` 
                  : 'perspective(1000px) rotateX(0deg) rotateY(0deg)'
              }}
            >
              {/* Background Layer with elements */}
              <div 
                className="hoyoverse-card-layer hoyoverse-bg-layer"
                style={{
                  transform: isHovered
                    ? `translate3d(${mouseOffset.x * -8}px, ${mouseOffset.y * -8}px, 0px)`
                    : 'translate3d(0, 0, 0)'
                }}
              >
                <div className="hoyoverse-element-circle" />
              </div>

              {/* Character Splash Image Layer */}
              <div 
                className="hoyoverse-card-layer hoyoverse-splash-layer"
                style={{
                  transform: isHovered
                    ? `translate3d(${mouseOffset.x * 15}px, ${mouseOffset.y * 15}px, 20px) scale(1.04)`
                    : 'translate3d(0, 0, 0) scale(1)'
                }}
              >
                <img 
                  className="hoyoverse-splash-image" 
                  src={selectedCharacter.splash} 
                  alt={selectedCharacter.name} 
                  loading="lazy"
                />
              </div>

              {/* Foreground Card Frame, Corners, and Elements */}
              <div 
                className="hoyoverse-card-layer hoyoverse-fg-layer"
                style={{
                  transform: isHovered
                    ? `translate3d(${mouseOffset.x * 25}px, ${mouseOffset.y * 25}px, 40px)`
                    : 'translate3d(0, 0, 0)'
                }}
              >
                <div className="hoyoverse-card-frame">
                  <div className="hoyoverse-card-corner hoyoverse-card-corner-tl" />
                  <div className="hoyoverse-card-corner hoyoverse-card-corner-tr" />
                  <div className="hoyoverse-card-corner hoyoverse-card-corner-bl" />
                  <div className="hoyoverse-card-corner hoyoverse-card-corner-br" />
                </div>

                {/* Elemental Spark particles */}
                <div className="hoyoverse-particles-container">
                  {Array.from({ length: 12 }, (_, i) => ({
                    id: i,
                    x: `${(i * 9) + 4}%`,
                    size: `${(i % 3) * 2 + 3}px`,
                    opacity: 0.3 + (i % 5) * 0.1,
                    duration: `${5 + (i % 4)}s`,
                    delay: `${(i % 3) * 1.5}s`
                  })).map((p) => (
                    <div
                      key={p.id}
                      className="hoyoverse-particle"
                      style={{
                        '--x': p.x,
                        '--size': p.size,
                        '--opacity': p.opacity,
                        '--duration': p.duration,
                        animationDelay: p.delay,
                      } as React.CSSProperties}
                    />
                  ))}
                </div>
              </div>

            </div>
          </div>

        </div>
      </section>

      <section id="exploration" className="exploration-section">
        <div className="section-intro centered">
          <p className="eyebrow"><span /> World Archives</p>
          <h2>Map of the <em>El Crystal.</em></h2>
          <p>Explore classic tactical sectors, drop tables, and dungeon coordinates across the continent.</p>
        </div>

        <div className="hoyoverse-exploration-container">
          {/* Left panel: Vertical Region List */}
          <div className="hoyoverse-region-list" role="tablist" aria-label="World regions">
            {regionKeys.map((key) => (
              <button
                key={key}
                className={`hoyoverse-region-btn ${activeRegion === key ? 'is-active' : ''}`}
                onClick={() => setActiveRegion(key)}
                type="button"
                role="tab"
                aria-selected={activeRegion === key}
              >
                <div className="region-btn-indicator" />
                <div className="region-btn-meta">
                  <span className="region-btn-level">{regions[key].level}</span>
                  <span className="region-btn-name">{regions[key].name}</span>
                </div>
              </button>
            ))}
          </div>

          {/* Right panel: Immersive Map Detail Display */}
          <div className="hoyoverse-region-display">
            {/* Visual Frame */}
            <div className="region-visual-frame">
              <img
                src={regions[activeRegion].image}
                alt={regions[activeRegion].name}
                className="region-background-img"
              />
              <div className="region-visual-overlay" />
              
              {/* Radar Coordinate HUD */}
              <div className="region-radar-hud">
                <span className="radar-coord">{regions[activeRegion].coordinate}</span>
                <span className="radar-grid">SECTOR APPROVED</span>
              </div>
            </div>

            {/* Lore/Specs Details */}
            <div className="region-details-card">
              <div className="region-details-header">
                <h3>{regions[activeRegion].name}</h3>
                <span className="region-details-sub">{regions[activeRegion].subtitle}</span>
              </div>
              <p className="region-description">{regions[activeRegion].description}</p>

              {/* Dungeons & Drops details */}
              <div className="region-extra-grid">
                <div className="region-extra-col">
                  <strong>NOTABLE DUNGEONS</strong>
                  <div className="region-pill-container">
                    {regions[activeRegion].dungeons.map((dun) => (
                      <span key={dun} className="region-pill dungeon-pill">⚔️ {dun}</span>
                    ))}
                  </div>
                </div>
                <div className="region-extra-col">
                  <strong>RARE EQUIPMENT & REWARDS</strong>
                  <div className="region-pill-container">
                    {regions[activeRegion].drops.map((drop) => (
                      <span key={drop} className="region-pill drop-pill">💎 {drop}</span>
                    ))}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Cinematic Download Callout */}
        <div className="hoyoverse-download-callout">
          <div className="callout-glow-back" />
          <div className="callout-inner">
            <div className="callout-icon-box">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5">
                <path strokeLinecap="round" strokeLinejoin="round" d="M3 16.5v2.25A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75V16.5M16.5 12L12 16.5m0 0L7.5 12m4.5 4.5V3" />
              </svg>
            </div>
            <div className="callout-text-meta">
              <small>System Deployment</small>
              <strong>Official Community Installer Package</strong>
              <p>Download the production client patch launcher and local server stack files.</p>
            </div>
            <Link className="hoyoverse-cta-btn" to="/download">
              Acquire Client Assets <i aria-hidden="true">→</i>
            </Link>
          </div>
        </div>
      </section>

      <footer className="site-footer">
        <div className="footer-main">
          <a className="brand footer-brand" href="/" onClick={(e) => { e.preventDefault(); navigateToSection('home'); }}>
            <span className="brand-mark" aria-hidden="true">
              <img src="/joysword-icon-64.webp" alt="JoySword logo" width={43} height={43} />
            </span>
            <span className="brand-copy">
              <strong>JoySword</strong>
              <small>Forge your legend</small>
            </span>
          </a>

          <p className="footer-copy">
            A community-hosted online private server for players who still believe the
            best adventures are shared.
          </p>

          <nav aria-label="Footer navigation">
            <div>
              <small>Explore</small>
              <a href="/" onClick={(e) => { e.preventDefault(); navigateToSection('features'); }}>Features</a>
              <a href="/" onClick={(e) => { e.preventDefault(); navigateToSection('characters'); }}>Characters</a>
              <a href="/" onClick={(e) => { e.preventDefault(); navigateToSection('exploration'); }}>World Map</a>
              <Link to="/wiki">Player Wiki</Link>
            </div>
            <div>
              <small>Play</small>
              <Link to="/download">Get the Client</Link>
              <a href="/" onClick={(e) => { e.preventDefault(); navigateToSection('home'); }}>Server Status</a>
            </div>
          </nav>
        </div>

        <div className="footer-bottom">
          <p>JoySword is a fan-operated private server. All referenced game properties belong to their respective owners.</p>
          <a href="/" onClick={(e) => { e.preventDefault(); navigateToSection('home'); }}>Back to top ↑</a>
        </div>
      </footer>
    </main>
  );
}
