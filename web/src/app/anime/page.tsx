'use client';

import { Link } from 'react-router-dom';
import { useState, useEffect } from 'react';
import { PortalHeader } from '@/components/PortalHeader';
import { SEO } from '@/components/SEO';

type Episode = {
  id: number;
  title: string;
  subTitle: string;
  duration: string;
  embedId?: string;
  searchQuery?: string;
  thumbnail: string;
  summary: string;
};

type ChatMessage = {
  id: string;
  user: string;
  avatarColor: string;
  text: string;
  timestamp: string;
};

const episodes: Episode[] = [
  {
    id: 1,
    title: 'Episode 1: El Search Party',
    subTitle: 'The Journey Begins',
    duration: '11:42',
    embedId: '_RDq1hoCo90',
    thumbnail: '/theater-poster.png',
    summary: 'Elsword and the El Search Party encounter the powerful demon combatants while trying to secure the stolen El Crystal.'
  },
  {
    id: 2,
    title: 'Episode 2: Suspicious Company',
    subTitle: 'The Bandit Chase',
    duration: '12:05',
    embedId: 'j_QNCGdkGOo',
    thumbnail: '/character_splashes/elsword-splash.png',
    summary: 'Following the trail of Banthus, the party enters the dark caves, confronting engineered mechanical defenses.'
  },
  {
    id: 3,
    title: 'Episode 3: A New Power',
    subTitle: 'Class Advancement',
    duration: '11:58',
    embedId: 'DHPWtmZ3USs',
    thumbnail: '/character_splashes/aisha-splash.png',
    summary: 'Pushed to their limits, the warriors unlock their inner resonance and achieve their first job promotions.'
  },
  {
    id: 4,
    title: 'Episode 4: Nasod King',
    subTitle: 'The Foundry Core',
    duration: '12:15',
    embedId: '1W_90q1sV2M',
    thumbnail: '/character_splashes/rena-splash.png',
    summary: 'The party flies to the Altera floating continent, confronting the massive Nasod Core and the robotic king.'
  },
  {
    id: 5,
    title: 'Episode 5: The Southern Gate',
    subTitle: 'Velder Empire Defense',
    duration: '11:50',
    embedId: 'VltvqxcM2B8',
    thumbnail: '/regions/ruben.png',
    summary: 'Returning to the continent, the search party joins the defense of Velder capital city against dark demon invasions.'
  },
  {
    id: 6,
    title: 'Episode 6: Velder\'s Fall',
    subTitle: 'The Demon Overlord',
    duration: '12:30',
    embedId: 'x_XZANMUAhw',
    thumbnail: '/regions/elder.png',
    summary: 'As the castle gates crumble, Elsword stands alone against the dark portals to buy time for the citizens to escape.'
  },
  {
    id: 7,
    title: 'Episode 7: Temple of Frozen Water',
    subTitle: 'The priestess of Hamel',
    duration: '11:45',
    embedId: 'fCztq8_ChqI',
    thumbnail: '/regions/altera.png',
    summary: 'Traveling to the water capital Hamel, the group seeks the frozen sanctum to revive the water energy.'
  },
  {
    id: 8,
    title: 'Episode 8: Water El Priest',
    subTitle: 'The Shadow Guardian',
    duration: '12:10',
    embedId: 'fvm2yNAPsFw',
    thumbnail: '/regions/velder.png',
    summary: 'Chung joins the party, utilizing his Freiturnier heavy cannon to repel Helputt, his demonized father.'
  },
  {
    id: 9,
    title: 'Episode 9: Land of Sander',
    subTitle: 'The Wind Sandstorms',
    duration: '11:55',
    embedId: 'AZQYoKaC4bk',
    thumbnail: '/character_avatars/elsword-face.png',
    summary: 'In the desert lands of Sander, the wind energy fluctuates wildly as giant beasts emerge from the dunes.'
  },
  {
    id: 10,
    title: 'Episode 10: Demon King Ran',
    subTitle: 'Ara\'s Brotherhood',
    duration: '12:40',
    embedId: 'J6raTAr9WI4',
    thumbnail: '/character_avatars/aisha-face.png',
    summary: 'Ara confronts her brother Aren, who has been corrupted into the demon commander Ran.'
  },
  {
    id: 11,
    title: 'Episode 11: Sander\'s Storm',
    subTitle: 'The Behemoth Awakes',
    duration: '12:02',
    embedId: 'QLCpjuDU79k',
    thumbnail: '/character_avatars/rena-face.png',
    summary: 'The search party boards a sand wind cruiser to seal the awakening Behemoth before it destroys Sander.'
  },
  {
    id: 12,
    title: 'Episode 12: The Lady of El',
    subTitle: 'Fate of the Goddess',
    duration: '13:15',
    embedId: 'zR7yCEgBBpg',
    thumbnail: '/theater-poster.png',
    summary: 'The final confrontation at the core of the El. Elsword makes a ultimate decision to restore balance to the world.'
  }
];

const sampleComments = [
  "Elsword's new class looks insane!",
  "Banthus necklace drop rates are still 0.1% lol",
  "Aisha's teleport spam in PvP is so annoying",
  "Nostalgic Velder BGM hits different",
  "Altera Core dungeon raid anyone?",
  "Henir's Time and Space is so hard to solo",
  "Wait, Rena can double jump and glide?!",
  "Who is hyped for the Level 65 cap?",
  "That cut-in animation was epic!",
  "KOG Games really cooked with the anime animation",
  "Wait, they finally animated the skills!",
  "The water priestess looks amazing in Hamel arc",
  "Can we talk about the soundtrack?!",
  "Ara best girl indeed!",
  "Classic 65 milestones represent!",
  "Anyone running local servers offline?",
  "The patches synced perfectly",
  "Raven's arm is drawn so detailed here!",
  "Eve's robotic expressions are too cute",
  "Wait, did Elesis just use visual cut-ins?!",
  "Chung's heavy artillery mode when?",
  "I remember spending hours in Altera Plains back in the day",
  "DR Movie really nailed the character designs",
  "Ran is still one of the best antagonists",
  "Fox fire mode Ara is absolutely overpowered",
  "Is the local diagnostics launcher safe to run?",
  "Yep, server passed diagnostics 100%",
  "Banthus getting away again, standard",
  "Can we talk about the Hamel dungeon soundtrack?"
];

const usernames = [
  "RenaMain99", "ElboyPro", "AishaMage", "NasodEve",
  "RavenClaw", "ChungCannon", "AraFox", "ElesisSaber",
  "HenirGod", "RubenAdventurer", "VelderKnight", "HamelGuard"
];

const colors = ["#ff5b5b", "#5bff5b", "#5b92ff", "#ffdf5b", "#ff5bff", "#5bffff", "#ffb25b", "#ab77ff"];

export default function AnimePage() {
  const [activeEp, setActiveEp] = useState<Episode>(episodes[0]);
  const [activeTab, setActiveTab] = useState<'episodes' | 'more' | 'about'>('episodes');
  const [chatMessages, setChatMessages] = useState<ChatMessage[]>([
    { id: '1', user: 'ElboyPro', avatarColor: '#ff5b5b', text: 'This animation looks so clean!', timestamp: '11:34 AM' },
    { id: '2', user: 'AishaMage', avatarColor: '#ff5bff', text: 'Love the El Crystal storyline details.', timestamp: '11:34 AM' },
    { id: '3', user: 'RenaMain99', avatarColor: '#5bff5b', text: 'Double jumps look epic in the anime.', timestamp: '11:35 AM' }
  ]);
  const [userMsg, setUserMsg] = useState('');
  const [isDimmed, setIsDimmed] = useState(false);
  const [autoAdvance, setAutoAdvance] = useState(true);
  const [showChat, setShowChat] = useState(true);

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  // Generate simulated chat messages in real time
  useEffect(() => {
    const interval = setInterval(() => {
      const randomUser = usernames[Math.floor(Math.random() * usernames.length)];
      const randomColor = colors[Math.floor(Math.random() * colors.length)];
      const randomText = sampleComments[Math.floor(Math.random() * sampleComments.length)];
      const time = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
      
      setChatMessages((prev) => [
        ...prev.slice(-18), // keep last 20 messages
        {
          id: Math.random().toString(),
          user: randomUser,
          avatarColor: randomColor,
          text: randomText,
          timestamp: time
        }
      ]);
    }, 4000);

    return () => clearInterval(interval);
  }, []);

  // Auto scroll chat to bottom
  useEffect(() => {
    const chatContainer = document.getElementById('chat-scroll-area');
    if (chatContainer) {
      chatContainer.scrollTop = chatContainer.scrollHeight;
    }
  }, [chatMessages]);

  const handleSendChat = (e: React.FormEvent) => {
    e.preventDefault();
    if (!userMsg.trim()) return;
    const time = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
    setChatMessages((prev) => [
      ...prev,
      {
        id: Math.random().toString(),
        user: 'You',
        avatarColor: '#5bffff',
        text: userMsg,
        timestamp: time
      }
    ]);
    setUserMsg('');
  };

  const seriesSchema = {
    '@context': 'https://schema.org',
    '@type': 'CreativeWorkSeries',
    'name': 'Elsword: El Lady',
    'description': 'A 12-episode animated series based on the global high-speed anime MMORPG following Elsword and the search party.',
    'genre': ['Fantasy', 'Action', 'Sci-Fi'],
    'numberOfEpisodes': 12,
    'author': {
      '@type': 'Organization',
      'name': 'KOG Games'
    },
    'publisher': {
      '@type': 'Organization',
      'name': 'Nexon'
    }
  };

  return (
    <div className="portal-layout">
      <SEO
        title="JoySword — Elsword: El Lady Animated Series"
        description="Watch the complete 12-episode Elsword: El Lady animated series in 1080p HD. Join the live watch party chat, read detailed episode summaries, and study the lore."
        keywords={['elsword anime', 'el lady anime', 'elsword animation', 'watch elsword series', 'el search party anime', 'dr movie elsword']}
        jsonLd={seriesSchema}
      />
      <PortalHeader />

      {/* Lights Shroud Backdrop */}
      {isDimmed && <div className="theater-lights-shroud" onClick={() => setIsDimmed(false)} />}

      {/* Netflix-Style Hero Banner */}
      <section className="netflix-hero-banner">
        <div className="netflix-hero-backdrop">
          <img src="/theater-poster.png" alt="" />
          <div className="netflix-hero-gradient" />
        </div>
        
        <div className="netflix-hero-content">
          <div className="netflix-badge-row">
            <span className="netflix-n-badge text-gold">KOG GAMES</span>
            <span className="netflix-x-badge">×</span>
            <span className="netflix-n-badge">NEXON</span>
            <span className="netflix-series-badge">SERIES</span>
          </div>
          <h1>ELSWORD: <em>EL LADY</em></h1>
          <div className="netflix-meta-row">
            <span className="match-score">98% Match</span>
            <span className="year-badge">2016</span>
            <span className="maturity-rating">13+</span>
            <span className="season-count">12 Episodes</span>
            <span className="hd-badge">HD</span>
          </div>
          <p className="netflix-hero-summary">
            When the life-giving El Crystal is shattered and stolen, Elsword leads a chosen search party of warriors across the continent. Faced with ancient mechanical Nasods and invading demon lords, they must reclaim the crystal before their world fades into absolute darkness.
          </p>
          <div className="netflix-action-btns">
            <button 
              className="netflix-play-btn"
              onClick={() => {
                const playerElement = document.getElementById('anime-player');
                if (playerElement) {
                  playerElement.scrollIntoView({ behavior: 'smooth' });
                }
              }}
            >
              <span className="play-icon">▶</span> Play Episode 1
            </button>
            <a
              href="https://www.youtube.com/playlist?list=PLp9T7scbkepMpLyQzO4VeYns2S2u0eDuZ"
              target="_blank"
              rel="noopener noreferrer"
              className="netflix-list-btn"
            >
              <span className="plus-icon">✦</span> Nexon Playlist
            </a>
          </div>
        </div>
      </section>

      <main className="anime-page-container">
        {/* Immersive Video Screen */}
        <section id="anime-player" className={`netflix-player-section ${isDimmed ? 'is-theater-dimmed' : ''}`}>
          <div className="netflix-player-container">
            
            <div className={`theater-screen-layout ${!showChat ? 'is-chat-hidden' : ''}`}>
              
              {/* Left stage: Video Player Frame */}
              <div className="theater-left-stage">
                <div className="anime-player-wrapper">
                  {activeEp.embedId ? (
                    <iframe
                      src={`https://www.youtube.com/embed/${activeEp.embedId}?autoplay=1&rel=0`}
                      title={activeEp.title}
                      frameBorder="0"
                      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                      referrerPolicy="strict-origin-when-cross-origin"
                      allowFullScreen
                      className="anime-iframe"
                    />
                  ) : (
                    <div className="anime-placeholder-frame">
                      <div className="placeholder-backdrop" />
                      <div className="placeholder-content">
                        <span className="placeholder-badge">EXTERNAL VIDEO SOURCE</span>
                        <h3>{activeEp.title}</h3>
                        <p>This episode is hosted on Nexon Korea official servers.</p>
                        <a
                          href={`https://www.youtube.com/results?search_query=${encodeURIComponent(activeEp.searchQuery || '')}`}
                          target="_blank"
                          rel="noopener noreferrer"
                          className="anime-search-btn"
                        >
                          Watch on YouTube <span aria-hidden="true">↗</span>
                        </a>
                      </div>
                    </div>
                  )}
                </div>

                {/* Theater Control Panel Bar */}
                <div className="theater-control-panel">
                  <div className="control-left">
                    <button 
                      className={`control-btn ${isDimmed ? 'active' : ''}`}
                      onClick={() => setIsDimmed(!isDimmed)}
                      type="button"
                    >
                      💡 {isDimmed ? 'Lights On' : 'Lights Dim'}
                    </button>
                    <button 
                      className={`control-btn ${!showChat ? 'active' : ''}`}
                      onClick={() => setShowChat(!showChat)}
                      type="button"
                    >
                      💬 {showChat ? 'Hide Chat' : 'Show Chat'}
                    </button>
                    <label className="autoplay-switch">
                      <input 
                        type="checkbox" 
                        checked={autoAdvance}
                        onChange={(e) => setAutoAdvance(e.target.checked)}
                      />
                      <span>Autoplay Next</span>
                    </label>
                    {activeEp.id < episodes.length && (
                      <button 
                        className="control-btn next-ep-quick-btn"
                        onClick={() => {
                          const next = episodes[activeEp.id];
                          setActiveEp(next);
                          const playerElement = document.getElementById('anime-player');
                          if (playerElement) {
                            playerElement.scrollIntoView({ behavior: 'smooth' });
                          }
                        }}
                        type="button"
                      >
                        Next Episode ➔
                      </button>
                    )}
                  </div>
                  <div className="control-right">
                    <span className="tech-stat">1080P HD</span>
                    <span className="tech-stat">KOREAN AUDIO</span>
                    <span className="tech-stat">ENG SUBS</span>
                  </div>
                </div>
              </div>

              {/* Right stage: Live Chat Room */}
              {showChat && (
                <div className="theater-live-chat-panel">
                  <div className="chat-header">
                    <div className="chat-header-title">
                      <span className="live-dot" />
                      <h4>Live Watch Party</h4>
                    </div>
                    <span className="watcher-count">1,420 watching</span>
                  </div>
                  
                  <div className="chat-body" id="chat-scroll-area">
                    {chatMessages.map((msg) => (
                      <div key={msg.id} className="chat-message-row">
                        <span 
                          className="chat-avatar-dot" 
                          style={{ backgroundColor: msg.avatarColor }}
                        />
                        <div className="chat-message-content">
                          <div className="chat-user-meta">
                            <strong className="chat-username">{msg.user}</strong>
                            <span className="chat-time">{msg.timestamp}</span>
                          </div>
                          <p className="chat-text">{msg.text}</p>
                        </div>
                      </div>
                    ))}
                  </div>

                  <form onSubmit={handleSendChat} className="chat-footer-input">
                    <input 
                      type="text" 
                      placeholder="Type a message..." 
                      value={userMsg}
                      onChange={(e) => setUserMsg(e.target.value)}
                      maxLength={100}
                    />
                    <button type="submit" aria-label="Send message">
                      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                        <path strokeLinecap="round" strokeLinejoin="round" d="M6 12L3.269 3.126A59.768 59.768 0 0121.485 12 59.77 59.77 0 013.27 20.876L5.999 12zm0 0h7.5" />
                      </svg>
                    </button>
                  </form>
                </div>
              )}

            </div>

            <div className="netflix-player-details">
              <div className="player-details-main">
                <span className="netflix-episode-tag">PLAYING EPISODE {activeEp.id}</span>
                <h2>{activeEp.title}</h2>
                <span className="netflix-meta-subtitle">{activeEp.subTitle} ({activeEp.duration})</span>
                <p className="netflix-episode-summary">{activeEp.summary}</p>
              </div>

              {activeEp.id < episodes.length && (
                <div className="player-details-next">
                  <span className="next-up-label">NEXT UP</span>
                  <button
                    className="netflix-next-ep-card"
                    onClick={() => {
                      const next = episodes[activeEp.id];
                      setActiveEp(next);
                      const playerElement = document.getElementById('anime-player');
                      if (playerElement) {
                        playerElement.scrollIntoView({ behavior: 'smooth' });
                      }
                    }}
                    type="button"
                  >
                    <div className="next-ep-thumbnail">
                      <img src={episodes[activeEp.id].thumbnail} alt="" />
                      <div className="next-ep-play-overlay">
                        <span>PLAY NEXT</span>
                      </div>
                    </div>
                    <div className="next-ep-meta">
                      <strong>Episode {episodes[activeEp.id].id}</strong>
                      <span>{episodes[activeEp.id].subTitle}</span>
                    </div>
                  </button>
                </div>
              )}
            </div>
          </div>
        </section>

        {/* Netflix Tab Selectors */}
        <div className="netflix-tabs-bar">
          <button
            className={`netflix-tab-btn ${activeTab === 'episodes' ? 'is-active' : ''}`}
            onClick={() => setActiveTab('episodes')}
            type="button"
          >
            Episodes
          </button>
          <button
            className={`netflix-tab-btn ${activeTab === 'more' ? 'is-active' : ''}`}
            onClick={() => setActiveTab('more')}
            type="button"
          >
            More Like This
          </button>
          <button
            className={`netflix-tab-btn ${activeTab === 'about' ? 'is-active' : ''}`}
            onClick={() => setActiveTab('about')}
            type="button"
          >
            About
          </button>
        </div>

        {/* Tab 1: Episodes Grid */}
        {activeTab === 'episodes' && (
          <section className="netflix-episodes-section">
            <div className="netflix-episodes-grid">
              {episodes.map((ep) => (
                <button
                  key={ep.id}
                  className={`netflix-episode-card ${activeEp.id === ep.id ? 'is-active' : ''}`}
                  onClick={() => {
                    setActiveEp(ep);
                    const playerElement = document.getElementById('anime-player');
                    if (playerElement) {
                      playerElement.scrollIntoView({ behavior: 'smooth' });
                    }
                  }}
                  type="button"
                >
                  <div className="episode-card-visual">
                    <img src={ep.thumbnail} alt="" loading="lazy" />
                    <div className="episode-card-overlay">
                      <span className="card-play-icon">▶</span>
                    </div>
                    <span className="episode-card-duration">{ep.duration}</span>
                  </div>
                  <div className="episode-card-info">
                    <div className="episode-card-meta">
                      <span className="episode-card-title">{ep.title}</span>
                    </div>
                    <p className="episode-card-summary">{ep.summary}</p>
                  </div>
                </button>
              ))}
            </div>
          </section>
        )}

        {/* Tab 2: More Like This */}
        {activeTab === 'more' && (
          <section className="netflix-more-section">
            <div className="netflix-more-grid">
              <div className="netflix-more-card">
                <div className="more-card-visual">
                  <img src="/theater-poster.png" alt="" />
                  <span className="more-badge">FREE INSTALL</span>
                </div>
                <div className="more-card-info">
                  <h4>Play JoySword Offline</h4>
                  <p>Download the fully configured launcher, diagnostic toolkit, and local sandbox database packages.</p>
                  <Link to="/download" className="more-card-btn">Deploy Client →</Link>
                </div>
              </div>

              <div className="netflix-more-card">
                <div className="more-card-visual">
                  <img src="/character_splashes/elsword-splash.png" alt="" />
                  <span className="more-badge">WIKI</span>
                </div>
                <div className="more-card-info">
                  <h4>Character Database</h4>
                  <p>Browse full class directories, combat statistics, job requirements, and unique spell guides.</p>
                  <Link to="/wiki" className="more-card-btn">View Wiki →</Link>
                </div>
              </div>

              <div className="netflix-more-card">
                <div className="more-card-visual">
                  <img src="/regions/altera.png" alt="" />
                  <span className="more-badge">MAPS</span>
                </div>
                <div className="more-card-info">
                  <h4>Tactical Map Sectors</h4>
                  <p>Study regional dungeon maps, coordinate nodes, and boss drop archives from Ruben to Velder.</p>
                  <Link to="/" className="more-card-btn" onClick={() => window.scrollTo({ top: 1800, behavior: 'smooth' })}>Inspect Map →</Link>
                </div>
              </div>
            </div>
          </section>
        )}

        {/* Tab 3: About */}
        {activeTab === 'about' && (
          <section className="netflix-about-section">
            <div className="netflix-about-grid">
              <div className="about-col">
                <h3>Elsword: El Lady</h3>
                <p className="about-synopsis">
                  Based on the global high-speed anime MMORPG, this animated adaptation follows Elsword and the search party as they pursue the bandits who shattered the life-sustaining El Crystal.
                </p>
              </div>
              <div className="about-col metadata-col">
                <div className="about-meta-item">
                  <span className="meta-label">Game Producer / Creator:</span>
                  <span className="meta-value">KOG Games</span>
                </div>
                <div className="about-meta-item">
                  <span className="meta-label">Game Publisher:</span>
                  <span className="meta-value">Nexon</span>
                </div>
                <div className="about-meta-item">
                  <span className="meta-label">Animation Studio:</span>
                  <span className="meta-value">DR Movie</span>
                </div>
                <div className="about-meta-item">
                  <span className="meta-label">Voice Cast:</span>
                  <span className="meta-value">Elsword, Aisha, Rena, Raven, Eve, Chung, Ara, Elesis</span>
                </div>
                <div className="about-meta-item">
                  <span className="meta-label">Genres:</span>
                  <span className="meta-value">Anime Series, Fantasy, Sci-Fi Robot Fights, High-Speed Action</span>
                </div>
                <div className="about-meta-item">
                  <span className="meta-label">Themes:</span>
                  <span className="meta-value">Exciting, Action-packed, Heartwarming Friendship</span>
                </div>
              </div>
            </div>
          </section>
        )}
      </main>

      <footer className="site-footer">
        <div className="footer-main">
          <Link className="brand footer-brand" to="/">
            <span className="brand-mark" aria-hidden="true">
              <img src="/joysword-icon-64.webp" alt="" width={43} height={43} />
            </span>
            <span className="brand-copy">
              <strong>JoySword</strong>
              <small>Forge your legend</small>
            </span>
          </Link>
          <p className="footer-copy">
            A community-hosted online private server for players who still believe the
            best adventures are shared.
          </p>
        </div>
        <div className="footer-bottom">
          <p>JoySword is a fan-operated private server. All referenced game properties belong to their respective owners.</p>
          <Link to="/">Back to home →</Link>
        </div>
      </footer>
    </div>
  );
}
