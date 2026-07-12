import { useCallback, useEffect, useMemo, useState } from 'react';
import type {
  DiagnosticCheck,
  LauncherContent,
  LauncherPhase,
  LauncherSettings,
  LauncherStatus,
} from '../shared/contracts';

const DEFAULT_SETTINGS: LauncherSettings = {
  resolution: '1280x720',
  fullscreen: false,
  closeOnLaunch: false,
  gameRoot: null,
};

const DEFAULT_CONTENT: LauncherContent = {
  schema: 'joysword.launcher-content/v1',
  eyebrow: 'THE SWORD AWAKENS',
  title: 'Enter the fracture.',
  summary: 'Connect to the restored JoySword world hosted securely on Azure.',
  featured: { tag: 'SYSTEM', title: 'Azure realm', description: 'Production client routing is active.' },
  notices: [],
};

type View = 'home' | 'settings' | 'diagnostics';

function BrandMark() {
  return (
    <span className="brand-mark" aria-hidden="true">
      <svg viewBox="0 0 48 48" fill="none">
        <path d="M29.5 4 17 23.5l5.5 3.5L35 8l-5.5-4Z" />
        <path d="m20.5 25.5-6 10 5 7.5 6.5-15-5.5-2.5Z" />
        <path d="m25 27 8.5-7.5 1.5 5-8 7-2-4.5Z" />
      </svg>
    </span>
  );
}

function ChromeIcon({ name }: { name: 'home' | 'gear' | 'pulse' | 'folder' | 'logs' | 'refresh' }) {
  const paths = {
    home: <><path d="m4 11 8-7 8 7" /><path d="M6.5 10v9h11v-9M10 19v-5h4v5" /></>,
    gear: <><circle cx="12" cy="12" r="3" /><path d="M19 13.5v-3l-2.2-.7-.5-1.2 1.1-2-2.1-2.1-2 1.1-1.2-.5L11.5 3h-3l-.7 2.2-1.2.5-2-1.1-2.1 2.1 1.1 2-.5 1.2-2.1.6v3l2.2.7.5 1.2-1.1 2 2.1 2.1 2-1.1 1.2.5.6 2.1h3l.7-2.2 1.2-.5 2 1.1 2.1-2.1-1.1-2 .5-1.2 2.1-.6Z" /></>,
    pulse: <path d="M2 13h4l2-6 3.5 11 3-8 1.5 3h6" />,
    folder: <path d="M3 6.5h7l2 2h9v10H3v-12Z" />,
    logs: <><path d="M5 3h11l3 3v15H5V3Z" /><path d="M15.5 3v4h3.5M8 11h8M8 15h8" /></>,
    refresh: <><path d="M19 8V3l-2 2a9 9 0 1 0 2.3 9" /><path d="M19 3h-5" /></>,
  } as const;
  return <svg className="chrome-icon" viewBox="0 0 24 24" fill="none" aria-hidden="true">{paths[name]}</svg>;
}

function TitleBar() {
  return (
    <header className="titlebar">
      <div className="title-drag">
        <BrandMark />
        <div className="brand-copy"><strong>JOYSWORD</strong><small>CLIENT ARCHIVE</small></div>
        <span className="build-chip">AZURE EDITION</span>
      </div>
      <div className="window-controls">
        <button type="button" aria-label="Minimize" onClick={() => window.joySword.windowMinimize()}><span>—</span></button>
        <button type="button" aria-label="Maximize or restore" onClick={() => window.joySword.windowToggleMaximize()}><span>□</span></button>
        <button className="close" type="button" aria-label="Close" onClick={() => window.joySword.windowClose()}><span>×</span></button>
      </div>
    </header>
  );
}

function ServiceRail({ status }: { status: LauncherStatus | null }) {
  return (
    <div className="service-rail" aria-label="Backend service status">
      <span className="rail-label">NETWORK</span>
      <div className="service-list">
        {(status?.services ?? []).map((service) => (
          <span className="service-item" key={service.id} title={`${service.name}: ${service.host}:${service.port}`}>
            <i className={service.online ? 'online' : ''} />{service.name}
          </span>
        ))}
        {!status && <span className="service-item"><i />Checking endpoints</span>}
      </div>
      <time>{status ? new Date(status.checkedAt).toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' }) : '--:--'}</time>
    </div>
  );
}

function PlayButton({ phase, installed, onClick }: { phase: LauncherPhase; installed: boolean; onClick(): void }) {
  const copy = phase === 'launching' ? 'INITIALIZING' : phase === 'running' ? 'FOCUS GAME' : installed ? 'PLAY' : 'LOCATE GAME';
  return (
    <button className={`play-button phase-${phase}`} type="button" onClick={onClick} disabled={phase === 'launching'}>
      <span className="play-sheen" />
      <span className="play-glyph" aria-hidden="true">{phase === 'launching' ? <i className="spinner" /> : '▶'}</span>
      <span className="play-copy"><strong>{copy}</strong><small>{phase === 'server-warning' ? 'SERVICES NOT READY' : 'CLIENT ACCESS'}</small></span>
      <span className="play-end" aria-hidden="true">›</span>
    </button>
  );
}

function HomeView({
  content,
  status,
  phase,
  message,
  onPlay,
}: {
  content: LauncherContent;
  status: LauncherStatus | null;
  phase: LauncherPhase;
  message: string;
  onPlay(): void;
}) {
  return (
    <main className="home-view">
      <section className="hero-copy">
        <p className="eyebrow"><span />{content.eyebrow}</p>
        <h1><span>JOY</span>SWORD</h1>
        <h2>{content.title}</h2>
        <p className="hero-summary">{content.summary}</p>
        <div className="play-area">
          <PlayButton phase={phase} installed={Boolean(status?.clientInstalled)} onClick={onPlay} />
          <div className={`launch-note ${phase === 'error' ? 'error' : ''}`} aria-live="polite">
            <i />{message || (status?.gameRoot ? `ROOT  /  ${status.gameRoot}` : 'SELECT YOUR JOYSWORD INSTALLATION')}
          </div>
        </div>
      </section>

      <aside className="news-deck" aria-label="Latest notices">
        <div className="feature-card glass-panel">
          <span className="feature-index">01</span>
          <div><small>{content.featured.tag}</small><strong>{content.featured.title}</strong><p>{content.featured.description}</p></div>
          <span className="feature-arrow">↗</span>
        </div>
        <div className="notice-panel glass-panel">
          <div className="panel-heading"><span>TRANSMISSIONS</span><small>LOCAL FEED</small></div>
          {content.notices.slice(0, 3).map((notice) => (
            <article key={notice.id}>
              <span>{notice.category}</span><strong>{notice.title}</strong><time>{notice.date}</time>
            </article>
          ))}
        </div>
      </aside>
    </main>
  );
}

function SettingsView({ settings, onChange, onChooseRoot, onOpenData }: {
  settings: LauncherSettings;
  onChange(next: LauncherSettings): void;
  onChooseRoot(): void;
  onOpenData(): void;
}) {
  return (
    <main className="utility-view">
      <div className="utility-heading"><p>CLIENT CONTROL</p><h2>Settings</h2><span>Display and launch behavior are applied before the client starts.</span></div>
      <section className="settings-grid">
        <div className="settings-card glass-panel">
          <div className="card-title"><span>01</span><div><strong>Display profile</strong><small>CLIENT VIDEO CONFIGURATION</small></div></div>
          <label className="field-label" htmlFor="resolution">Resolution</label>
          <div className="select-shell">
            <select id="resolution" value={settings.resolution} onChange={(event) => onChange({ ...settings, resolution: event.target.value as LauncherSettings['resolution'] })}>
              <option value="1024x768">1024 × 768</option>
              <option value="1280x720">1280 × 720</option>
              <option value="1600x900">1600 × 900</option>
              <option value="1920x1080">1920 × 1080</option>
              <option value="2560x1440">2560 × 1440</option>
            </select>
          </div>
          <Toggle label="Fullscreen" hint="Start the game in exclusive fullscreen" checked={settings.fullscreen} onChange={(checked) => onChange({ ...settings, fullscreen: checked })} />
          <Toggle label="Close after launch" hint="Exit this launcher when the game starts" checked={settings.closeOnLaunch} onChange={(checked) => onChange({ ...settings, closeOnLaunch: checked })} />
        </div>
        <div className="settings-card glass-panel">
          <div className="card-title"><span>02</span><div><strong>Installation</strong><small>LOCAL ARCHIVE LOCATION</small></div></div>
          <label className="field-label">JoySword root</label>
          <div className="path-box"><span>{settings.gameRoot ?? 'No installation selected'}</span></div>
          <button className="secondary-button" type="button" onClick={onChooseRoot}><ChromeIcon name="folder" />Choose folder</button>
          <button className="text-button" type="button" onClick={onOpenData}>Open client data folder <span>↗</span></button>
          <div className="setting-note"><i />The selected folder must contain <code>data\x2.exe</code>.</div>
        </div>
      </section>
    </main>
  );
}

function Toggle({ label, hint, checked, onChange }: { label: string; hint: string; checked: boolean; onChange(value: boolean): void }) {
  return (
    <label className="toggle-row">
      <span><strong>{label}</strong><small>{hint}</small></span>
      <input type="checkbox" checked={checked} onChange={(event) => onChange(event.target.checked)} />
      <i aria-hidden="true" />
    </label>
  );
}

function DiagnosticsView({ checks, running, version, onVerify, onRepair, onLogs }: {
  checks: DiagnosticCheck[];
  running: boolean;
  version: string;
  onVerify(): void;
  onRepair(): void;
  onLogs(): void;
}) {
  return (
    <main className="utility-view diagnostics-view">
      <div className="utility-heading"><p>SYSTEM INTEGRITY</p><h2>Diagnostics</h2><span>Checks the client archive and JoySword Azure endpoints.</span></div>
      <section className="diagnostics-layout">
        <div className="checks-panel glass-panel">
          <div className="checks-header"><span>VERIFICATION MATRIX</span><small>LAUNCHER {version}</small></div>
          {checks.length === 0 && <div className="empty-checks">Run verification to inspect the local client.</div>}
          {checks.map((check) => (
            <div className="check-row" key={check.id}>
              <span className={`check-state ${check.state}`} aria-label={check.state}>{check.state === 'pass' ? '✓' : check.state === 'warn' ? '!' : '×'}</span>
              <div><strong>{check.label}</strong><small>{check.detail}</small></div>
              <span className="check-code">{check.state.toUpperCase()}</span>
            </div>
          ))}
        </div>
        <aside className="diagnostic-actions glass-panel">
          <span className="action-number">SYS/04</span>
          <h3>Archive tools</h3>
          <p>Repair applies the Azure endpoint to loose and packed client configs, updates supported display fields, and preserves a backup.</p>
          <button className="secondary-button" type="button" disabled={running} onClick={onVerify}><ChromeIcon name="refresh" />{running ? 'Checking…' : 'Run verification'}</button>
          <button className="secondary-button dim" type="button" disabled={running} onClick={onRepair}><ChromeIcon name="gear" />Repair Azure client</button>
          <button className="text-button" type="button" onClick={onLogs}><ChromeIcon name="logs" />Open client scripts <span>↗</span></button>
        </aside>
      </section>
    </main>
  );
}

function WarningDialog({ offlineCount, onCancel, onContinue }: { offlineCount: number; onCancel(): void; onContinue(): void }) {
  return (
    <div className="dialog-scrim" role="presentation" onMouseDown={(event) => { if (event.currentTarget === event.target) onCancel(); }}>
      <div className="warning-dialog glass-panel" role="alertdialog" aria-modal="true" aria-labelledby="warning-title">
        <span className="warning-mark">!</span>
        <p>CONNECTION WARNING</p>
        <h2 id="warning-title">Azure services are not ready.</h2>
        <span>{offlineCount} public endpoint{offlineCount === 1 ? ' is' : 's are'} unavailable. JoySword can still launch, but login may fail until Azure is reachable.</span>
        <div><button className="secondary-button dim" type="button" onClick={onCancel}>Cancel</button><button className="secondary-button" type="button" onClick={onContinue}>Launch anyway</button></div>
      </div>
    </div>
  );
}

export default function App() {
  const [view, setView] = useState<View>('home');
  const [settings, setSettings] = useState(DEFAULT_SETTINGS);
  const [content, setContent] = useState(DEFAULT_CONTENT);
  const [status, setStatus] = useState<LauncherStatus | null>(null);
  const [phase, setPhase] = useState<LauncherPhase>('checking');
  const [message, setMessage] = useState('SCANNING CLIENT ARCHIVE');
  const [warningOpen, setWarningOpen] = useState(false);
  const [checks, setChecks] = useState<DiagnosticCheck[]>([]);
  const [checking, setChecking] = useState(false);
  const [version, setVersion] = useState('1.0.0');

  const refreshStatus = useCallback(async () => {
    try {
      const next = await window.joySword.getStatus();
      setStatus(next);
      setPhase((current) => current === 'launching' ? current : next.phase);
      if (!next.clientInstalled) {
        setMessage('JOYSWORD INSTALLATION NOT FOUND');
      } else {
        setMessage(next.clientRunning ? 'CLIENT PROCESS ACTIVE' : next.allRequiredOnline ? 'AZURE REALM ONLINE' : 'AZURE SERVICES REQUIRE ATTENTION');
      }
    } catch (error) {
      setPhase('error');
      setMessage(error instanceof Error ? error.message : 'STATUS CHECK FAILED');
    }
  }, []);

  useEffect(() => {
    Promise.all([window.joySword.getSettings(), window.joySword.getContent(), window.joySword.getLauncherVersion()])
      .then(([saved, loadedContent, loadedVersion]) => {
        setSettings(saved);
        setContent(loadedContent);
        setVersion(loadedVersion);
      })
      .catch(() => setMessage('LAUNCHER METADATA UNAVAILABLE'));
    void refreshStatus();
    const timer = window.setInterval(refreshStatus, 8000);
    return () => window.clearInterval(timer);
  }, [refreshStatus]);

  const saveSettings = useCallback((next: LauncherSettings) => {
    setSettings(next);
    void window.joySword.saveSettings(next).then(setSettings);
  }, []);

  const launch = useCallback(async () => {
    setWarningOpen(false);
    setPhase('launching');
    setMessage('AUTHORIZING CLIENT PROCESS');
    try {
      const result = await window.joySword.launchClient(settings);
      setMessage(result.message.toUpperCase());
      setPhase(result.ok ? 'running' : 'error');
      window.setTimeout(refreshStatus, 1200);
    } catch (error) {
      setPhase('error');
      setMessage(error instanceof Error ? error.message : 'CLIENT LAUNCH FAILED');
    }
  }, [refreshStatus, settings]);

  const handlePlay = useCallback(async () => {
    if (!status?.clientInstalled) {
      const root = await window.joySword.chooseGameRoot();
      if (root) {
        setSettings((current) => ({ ...current, gameRoot: root }));
        await refreshStatus();
      }
      return;
    }
    void launch();
  }, [launch, refreshStatus, status]);

  const runVerify = useCallback(async () => {
    setChecking(true);
    try { setChecks(await window.joySword.verifyInstallation()); }
    finally { setChecking(false); }
  }, []);

  const runRepair = useCallback(async () => {
    setChecking(true);
    try {
      const result = await window.joySword.repairClientSettings(settings);
      setMessage(result.message.toUpperCase());
      setChecks(await window.joySword.verifyInstallation());
    } finally { setChecking(false); }
  }, [settings]);

  const offlineCount = useMemo(() => status?.services.filter((service) => !service.online).length ?? 0, [status]);

  return (
    <div className="launcher-shell">
      <div className="hero-art" aria-hidden="true" />
      <div className="ambient-grid" aria-hidden="true" />
      <TitleBar />
      <nav className="side-nav" aria-label="Launcher sections">
        <button className={view === 'home' ? 'active' : ''} type="button" onClick={() => setView('home')}><ChromeIcon name="home" /><span>Home</span></button>
        <button className={view === 'settings' ? 'active' : ''} type="button" onClick={() => setView('settings')}><ChromeIcon name="gear" /><span>Settings</span></button>
        <button className={view === 'diagnostics' ? 'active' : ''} type="button" onClick={() => { setView('diagnostics'); if (!checks.length) void runVerify(); }}><ChromeIcon name="pulse" /><span>Diagnostics</span></button>
      </nav>

      {view === 'home' && <HomeView content={content} status={status} phase={phase} message={message} onPlay={handlePlay} />}
      {view === 'settings' && <SettingsView settings={settings} onChange={saveSettings} onChooseRoot={async () => {
        const root = await window.joySword.chooseGameRoot();
        if (root) { setSettings((current) => ({ ...current, gameRoot: root })); await refreshStatus(); }
      }} onOpenData={() => { void window.joySword.openDataFolder(); }} />}
      {view === 'diagnostics' && <DiagnosticsView checks={checks} running={checking} version={version} onVerify={runVerify} onRepair={runRepair} onLogs={() => { void window.joySword.openLogs(); }} />}

      <ServiceRail status={status} />
      {warningOpen && <WarningDialog offlineCount={offlineCount} onCancel={() => setWarningOpen(false)} onContinue={() => { void launch(); }} />}
    </div>
  );
}
