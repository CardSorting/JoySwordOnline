import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { PortalHeader } from '@/components/PortalHeader';
import { SEO } from '@/components/SEO';

interface DiscordChannel {
  id: string;
  name: string;
  category: string;
}

interface MockMessage {
  author: string;
  avatarColor: string;
  role: string;
  text: string;
  time: string;
}

const mockChannels: DiscordChannel[] = [
  { id: 'announcements', name: 'announcements', category: 'INFORMATION' },
  { id: 'dev-chat', name: 'dev-chat', category: 'DEVELOPMENT' },
  { id: 'ai-arena', name: 'ai-arena', category: 'DEVELOPMENT' },
  { id: 'lfg-matchmaker', name: 'lfg-matchmaker', category: 'JOYSWORD REALM' },
  { id: 'market-board', name: 'market-board', category: 'JOYSWORD REALM' },
];

const mockChatHistory: Record<string, MockMessage[]> = {
  announcements: [
    { author: 'MarieCoder', avatarColor: '#ff5f56', role: 'Lead Developer', text: 'Welcome to the new R2 download portal! If you experience 404s, standard clean path routing is now live without the hash character.', time: 'Today at 10:12 AM' },
    { author: 'MarieCoder', avatarColor: '#ff5f56', role: 'Lead Developer', text: 'Client version 1.0.0 is fully verified. Check out the automated checksum validations on our official download page.', time: 'Today at 10:15 AM' }
  ],
  'dev-chat': [
    { author: 'MarieCoder', avatarColor: '#ff5f56', role: 'Lead Developer', text: 'Hey team, I just pushed a fix to correct the Lua encoding headers. No more garbled client script outputs.', time: 'Yesterday at 4:32 PM' },
    { author: 'HexGamer', avatarColor: '#ffbd2e', role: 'Developer', text: 'Sweet! Does it fix the costume item description layout in the cash shop as well?', time: 'Yesterday at 4:40 PM' },
    { author: 'MarieCoder', avatarColor: '#ff5f56', role: 'Lead Developer', text: 'Yes, the client sync script handles the cash shop catalog directly from the database schema now.', time: 'Yesterday at 4:42 PM' }
  ],
  'ai-arena': [
    { author: 'NeuralCore', avatarColor: '#27c93f', role: 'AI Engineer', text: 'Has anyone experimented with training a local transformer model on the Elsword combat action frames?', time: 'Today at 11:05 AM' },
    { author: 'MarieCoder', avatarColor: '#ff5f56', role: 'Lead Developer', text: 'We actually have a custom bot hook that processes dungeon run statistics and rates performance using linear regressions.', time: 'Today at 11:15 AM' },
    { author: 'ByteSlinger', avatarColor: '#9b83ff', role: 'Dev Member', text: 'That is crazy! Hooking that up to a Discord web-hook would make guild competitions next-level.', time: 'Today at 11:20 AM' }
  ],
  'lfg-matchmaker': [
    { author: 'ElswordFan', avatarColor: '#77e9ff', role: 'Player', text: 'Need a Rena or Aisha for Altera Core raid! We are running a Level 65 cap lobby.', time: 'Today at 12:45 PM' },
    { author: 'AishaPvP', avatarColor: '#ffbd2e', role: 'Player', text: 'I am down. Invite me: `lobby-9340`', time: 'Today at 12:47 PM' }
  ],
  'market-board': [
    { author: 'BanthusSlayer', avatarColor: '#ff5f56', role: 'Player', text: 'Selling Banthus Necklace. Drop rates were brutal but I got one! Offer in magic stones.', time: 'Today at 1:15 PM' },
    { author: 'ChungTank', avatarColor: '#27c93f', role: 'Player', text: 'Would you trade for a Freiturnier heavy armor plating?', time: 'Today at 1:22 PM' }
  ]
};

export default function CommunityPage() {
  const [consoleInput, setConsoleInput] = useState('');
  const [consoleLogs, setConsoleLogs] = useState<string[]>([
    'Welcome to the JoySword Bot Console.',
    'Type !status, !online, !patch, or !help to query the realm database.'
  ]);
  const [activeChannel, setActiveChannel] = useState<string>('announcements');

  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  const handleConsoleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    const cmd = consoleInput.trim().toLowerCase();
    if (!cmd) return;

    let reply = '';
    if (cmd === '!status') {
      reply = '> [SYSTEM] Game Server 52.238.194.187 is ONLINE. Port 9400 active.';
    } else if (cmd === '!online') {
      reply = '> [STATISTICS] 1,420 players active. 8 character classes configured. 12 active guilds.';
    } else if (cmd === '!patch') {
      reply = '> [INTEGRITY] Client v1.0.0 files verified. Diagnostics: OK. Latest setup R2 releases ready.';
    } else if (cmd === '!help') {
      reply = '> [COMMANDS] Available queries: !status | !online | !patch | !help';
    } else {
      reply = `> Command '${consoleInput}' not recognized. Type !help for options.`;
    }

    setConsoleLogs((prev) => [...prev, `user@joysword:~$ ${consoleInput}`, reply]);
    setConsoleInput('');

    // Auto scroll console
    setTimeout(() => {
      const el = document.getElementById('console-log-scroll');
      if (el) el.scrollTop = el.scrollHeight;
    }, 50);
  };

  return (
    <main className="site-shell community-page" id="main-content">
      <SEO
        title="Community Realm & Discord | JoySword"
        description="Join the JoySword developer community watch party. Connect with other players on Discord, test the interactive bot console, and review server logs and statuses."
        keywords={['joysword community', 'joysword discord', 'joysword bot console', 'private server community', 'retro gaming developers']}
      />
      <PortalHeader />

      <section className="community-hero">
        <div className="community-hero-glow" />
        <div className="community-hero-content">
          <p className="eyebrow"><span /> Managed by MarieCoder & Local Developers</p>
          <h1>The Software Dev Watch Party</h1>
          <p>
            Connect with a community of software engineers, AI researchers, and gamers. We host retro custom servers, 
            experiment with AI models, study network protocols, and play classic multiplayer together.
          </p>
          <div className="community-actions">
            <a 
              className="button button-primary discord-btn" 
              href="https://discord.gg/tUPWgEWPPC" 
              target="_blank" 
              rel="noopener noreferrer"
            >
              <svg viewBox="0 0 24 24" fill="currentColor" width="20" height="20" aria-hidden="true" style={{ marginRight: '0.6rem' }}>
                <path d="M20.317 4.37a19.791 19.791 0 0 0-4.885-1.515.074.074 0 0 0-.079.037c-.21.375-.444.864-.608 1.25a18.27 18.27 0 0 0-5.487 0 12.64 12.64 0 0 0-.617-1.25.077.077 0 0 0-.079-.037A19.736 19.736 0 0 0 3.677 4.37a.07.07 0 0 0-.032.027C.533 9.046-.32 13.58.099 18.057a.082.082 0 0 0 .031.057 19.9 19.9 0 0 0 5.993 3.03.078.078 0 0 0 .084-.028c.462-.63.874-1.295 1.226-1.994.021-.041.001-.09-.041-.106a13.094 13.094 0 0 1-1.873-.894.077.077 0 0 1-.008-.128c.126-.093.252-.19.372-.287a.075.075 0 0 1 .077-.011c3.92 1.793 8.18 1.793 12.061 0a.073.073 0 0 1 .078.009c.12.099.246.195.373.289a.077.077 0 0 1-.006.127 12.299 12.299 0 0 1-1.873.894.077.077 0 0 1-.041.107c.36.698.772 1.362 1.225 1.993a.076.076 0 0 0 .084.028 19.839 19.839 0 0 0 6.002-3.03.077.077 0 0 0 .032-.054c.5-5.177-.838-9.674-3.549-13.66a.061.061 0 0 0-.031-.03zM8.02 15.33c-1.183 0-2.157-1.085-2.157-2.419 0-1.333.956-2.419 2.156-2.419 1.21 0 2.176 1.096 2.157 2.42 0 1.333-.956 2.418-2.156 2.418zm7.975 0c-1.183 0-2.157-1.085-2.157-2.419 0-1.333.955-2.419 2.156-2.419 1.21 0 2.176 1.096 2.157 2.42 0 1.333-.946 2.418-2.156 2.418z" />
              </svg>
              Join the Discord Server
            </a>
            <Link className="button button-secondary" to="/download">
              Download Client <span aria-hidden="true">→</span>
            </Link>
          </div>
        </div>
      </section>

      {/* Community Stats row */}
      <section className="community-stats-bar">
        <div className="stats-container">
          <div className="stat-card">
            <h3>MarieCoder</h3>
            <p>Lead System Engineer</p>
          </div>
          <div className="stat-card">
            <h3>Gaming & AI</h3>
            <p>Core Community Focus</p>
          </div>
          <div className="stat-card">
            <h3>1,420 Active</h3>
            <p>Verified Server Players</p>
          </div>
          <div className="stat-card">
            <h3>Offline Ready</h3>
            <p>Configured Local Guides</p>
          </div>
        </div>
      </section>

      <section className="community-content">
        <div className="community-grid">
          {/* Discord Guild Interface Mockup */}
          <div className="discord-mock-card">
            <div className="discord-mock-header">
              <div className="discord-guild-meta">
                <span className="discord-guild-avatar">JS</span>
                <strong>JoySword Developer Hub</strong>
              </div>
              <span className="discord-badge-active">Online</span>
            </div>
            
            <div className="discord-mock-layout">
              {/* Channel List */}
              <div className="discord-channels-list">
                {['announcements', 'dev-chat', 'ai-arena', 'lfg-matchmaker', 'market-board'].map((chName) => {
                  const ch = mockChannels.find(c => c.id === chName);
                  if (!ch) return null;
                  return (
                    <button
                      key={ch.id}
                      className={`discord-channel-btn ${activeChannel === ch.id ? 'is-active' : ''}`}
                      onClick={() => setActiveChannel(ch.id)}
                      type="button"
                    >
                      <span className="channel-hash">#</span>
                      {ch.name}
                    </button>
                  );
                })}
              </div>

              {/* Chat View */}
              <div className="discord-chat-view">
                <div className="discord-chat-messages">
                  {(mockChatHistory[activeChannel] || []).map((msg, index) => (
                    <div className="discord-msg-row" key={index}>
                      <span className="discord-msg-avatar" style={{ backgroundColor: msg.avatarColor }}>
                        {msg.author.charAt(0)}
                      </span>
                      <div className="discord-msg-content">
                        <div className="discord-msg-meta">
                          <strong className="discord-msg-author">{msg.author}</strong>
                          <span className="discord-msg-role">{msg.role}</span>
                          <span className="discord-msg-time">{msg.time}</span>
                        </div>
                        <p className="discord-msg-text">{msg.text}</p>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </div>

          {/* Interactive Bot Console */}
          <div className="community-card bot-console-card">
            <div className="card-header">
              <span className="terminal-dot red" />
              <span className="terminal-dot yellow" />
              <span className="terminal-dot green" />
              <h4>JoySword Bot Console</h4>
            </div>
            <div className="console-body" id="console-log-scroll">
              {consoleLogs.map((log, idx) => (
                <div 
                  key={idx} 
                  className={`console-log-line ${
                    log.startsWith('>') 
                      ? 'system-reply' 
                      : log.startsWith('user') 
                        ? 'user-command' 
                        : 'system-welcome'
                  }`}
                >
                  {log}
                </div>
              ))}
            </div>
            <form onSubmit={handleConsoleSubmit} className="console-input-bar">
              <span className="console-prompt">user@joysword:~$</span>
              <input
                type="text"
                placeholder="Type command here..."
                value={consoleInput}
                onChange={(e) => setConsoleInput(e.target.value)}
                maxLength={40}
              />
              <button type="submit" aria-label="Run query">↵</button>
            </form>
          </div>
        </div>

        {/* Improved Call-to-Actions for Community Registration */}
        <div className="community-cta-banner">
          <div className="cta-banner-glow" />
          <div className="cta-banner-content">
            <h2>Ready to participate?</h2>
            <p>
              Get access to custom client patches, share local offline server files, 
              and code diagnostic extensions with MarieCoder and the development group.
            </p>
            <div className="cta-banner-buttons">
              <a 
                className="button button-primary discord-btn" 
                href="https://discord.gg/tUPWgEWPPC" 
                target="_blank" 
                rel="noopener noreferrer"
              >
                Join Developer Discord
              </a>
              <Link className="button button-secondary" to="/wiki">
                Explore Game Wiki
              </Link>
            </div>
          </div>
        </div>
      </section>

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
    </main>
  );
}
