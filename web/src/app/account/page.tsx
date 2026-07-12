import { useEffect, useMemo, useState } from 'react';
import { Link, useLocation, useNavigate } from 'react-router-dom';
import { PortalHeader } from '@/components/PortalHeader';
import { SEO } from '@/components/SEO';
import {
  register,
  login,
  logout,
  getAccount,
  changePassword,
  getCashAllowance,
  claimCash,
  ApiError,
  type AccountUser,
  type CashAllowance,
} from '@/lib/accountApi';

type Mode = 'register' | 'login';
type FieldErrors = Partial<Record<'email' | 'password' | 'confirmPassword', string>>;

export default function AccountPage() {
  const navigate = useNavigate();
  const location = useLocation();
  const routeMode: Mode = location.pathname === '/register' ? 'register' : 'login';
  const [mode, setMode] = useState<Mode>(routeMode);
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [fieldErrors, setFieldErrors] = useState<FieldErrors>({});
  const [user, setUser] = useState<AccountUser | null>(null);
  const [checking, setChecking] = useState(true);
  const [loadError, setLoadError] = useState(false);
  const [justCreated, setJustCreated] = useState(false);

  useEffect(() => {
    setMode(routeMode);
    setError(null);
    setFieldErrors({});
  }, [routeMode]);

  useEffect(() => {
    getAccount()
      .then((response) => setUser(response.user))
      .catch((err) => {
        if (!(err instanceof ApiError) || err.status !== 401) setLoadError(true);
      })
      .finally(() => setChecking(false));
  }, []);

  function switchMode(next: Mode) {
    setMode(next);
    setPassword('');
    setConfirmPassword('');
    setError(null);
    setFieldErrors({});
    navigate(`/${next}`);
  }

  function validateForm() {
    const next: FieldErrors = {};
    if (!/^\S+@\S+\.\S+$/.test(email.trim())) next.email = 'Enter a valid email address.';
    if (password.length < 6 || password.length > 20) {
      next.password = 'Use between 6 and 20 characters.';
    }
    if (mode === 'register' && password !== confirmPassword) {
      next.confirmPassword = 'Passwords do not match.';
    }
    setFieldErrors(next);
    return Object.keys(next).length === 0;
  }

  async function onSubmit(event: React.FormEvent) {
    event.preventDefault();
    setError(null);
    if (!validateForm()) return;
    setBusy(true);
    try {
      const response = mode === 'register'
        ? await register(email.trim(), password)
        : await login(email.trim(), password);
      setUser(response.user);
      setJustCreated(mode === 'register');
      setPassword('');
      setConfirmPassword('');
      navigate('/account', { replace: true });
    } catch (err) {
      setError(err instanceof ApiError ? err.message : 'We could not complete that request. Please try again.');
    } finally {
      setBusy(false);
    }
  }

  if (checking) return <AccountLoading />;
  if (user) {
    return (
      <AccountDashboard
        user={user}
        justCreated={justCreated}
        onSignOut={async () => {
          try { await logout(); } finally {
            setUser(null);
            setJustCreated(false);
            navigate('/login');
          }
        }}
      />
    );
  }

  const isRegister = mode === 'register';

  return (
    <main className="portal-page" id="main-content">
      <SEO
        title={`${isRegister ? 'Create account' : 'Sign in'} | JoySword`}
        description="Create or manage your JoySword game account securely."
        noIndex={true}
      />
      <PortalHeader />
      <div className="portal-page-content">
        <section className="portal-page-intro" aria-labelledby="account-intro-title">
          <p className="eyebrow"><span /> JoySword account</p>
          <h1 id="account-intro-title">
            {isRegister ? <>Your adventure <em>starts here.</em></> : <>Welcome back, <em>hero.</em></>}
          </h1>
          <p>
            {isRegister
              ? 'Create one secure account for the JoySword portal and game client. We will generate your game login as soon as registration is complete.'
              : 'Sign in with your email to view your game login, manage your password, and return to the realm.'}
          </p>
          <ol className="auth-steps" aria-label="How your account works">
            <li><span>1</span><div><strong>Create your web account</strong><small>Use an email you can remember.</small></div></li>
            <li><span>2</span><div><strong>Get your game login</strong><small>It appears instantly in your account.</small></div></li>
            <li><span>3</span><div><strong>Enter the realm</strong><small>Use that login and the same password.</small></div></li>
          </ol>
          <div className="auth-trust-row" aria-label="Account benefits">
            <span><i aria-hidden="true">✓</i> Secure session</span>
            <span><i aria-hidden="true">✓</i> Game-ready instantly</span>
            <span><i aria-hidden="true">✓</i> Passwords stay synced</span>
          </div>
        </section>

        <section className="portal-frame portal-frame-compact" aria-labelledby="auth-title">
          <i className="frame-corner corner-top-left" />
          <i className="frame-corner corner-top-right" />
          <i className="frame-corner corner-bottom-left" />
          <i className="frame-corner corner-bottom-right" />
          <div className="portal-glow" />
          <div className="portal-card auth-card">
            <div className="auth-switcher" aria-label="Account action">
              <button type="button" className={isRegister ? 'is-active' : ''} onClick={() => switchMode('register')}>Create account</button>
              <button type="button" className={!isRegister ? 'is-active' : ''} onClick={() => switchMode('login')}>Sign in</button>
            </div>
            <div className="portal-seal" aria-hidden="true"><span>JS</span></div>
            <p className="portal-overline">{isRegister ? 'New player registration' : 'Player account'}</p>
            <h2 id="auth-title">{isRegister ? 'Create your account' : 'Sign in to JoySword'}</h2>
            <p className="portal-copy">
              {isRegister ? 'It only takes a minute. No in-game registration required.' : 'Use the email and password you registered with.'}
            </p>

            {loadError && (
              <p className="status-message danger" role="status">We could not check your existing session, but you can still sign in.</p>
            )}

            <form className="registration-form auth-form" onSubmit={onSubmit} noValidate>
              <AuthField label="Email address" error={fieldErrors.email}>
                <span className="input-shell">
                  <i className="field-icon" aria-hidden="true">@</i>
                  <input
                    id="account-email"
                    type="email"
                    inputMode="email"
                    autoComplete="email"
                    placeholder="you@example.com"
                    value={email}
                    aria-invalid={Boolean(fieldErrors.email)}
                    aria-describedby={fieldErrors.email ? 'email-error' : undefined}
                    onChange={(event) => { setEmail(event.target.value); setFieldErrors((current) => ({ ...current, email: undefined })); }}
                    autoFocus
                  />
                </span>
              </AuthField>

              <AuthField
                label="Password"
                error={fieldErrors.password}
                help={isRegister ? '6–20 characters. This will also be your game password.' : undefined}
              >
                <PasswordInput
                  id="account-password"
                  value={password}
                  visible={showPassword}
                  autoComplete={isRegister ? 'new-password' : 'current-password'}
                  onToggle={() => setShowPassword((current) => !current)}
                  onChange={(value) => { setPassword(value); setFieldErrors((current) => ({ ...current, password: undefined })); }}
                  invalid={Boolean(fieldErrors.password)}
                />
              </AuthField>

              {isRegister && (
                <>
                  <PasswordStrength password={password} />
                  <AuthField label="Confirm password" error={fieldErrors.confirmPassword}>
                    <PasswordInput
                      id="confirm-password"
                      value={confirmPassword}
                      visible={showConfirmPassword}
                      autoComplete="new-password"
                      onToggle={() => setShowConfirmPassword((current) => !current)}
                      onChange={(value) => { setConfirmPassword(value); setFieldErrors((current) => ({ ...current, confirmPassword: undefined })); }}
                      invalid={Boolean(fieldErrors.confirmPassword)}
                    />
                  </AuthField>
                </>
              )}

              {error && <p className="status-message danger" role="alert">{error}</p>}

              <button type="submit" className="submit-button" disabled={busy}>
                <span>{busy ? (isRegister ? 'Creating your account…' : 'Signing you in…') : (isRegister ? 'Create account' : 'Sign in')}</span>
                <i aria-hidden="true">→</i>
              </button>
            </form>

            <p className="auth-alternate">
              {isRegister ? 'Already have an account?' : 'New to JoySword?'}{' '}
              <button type="button" onClick={() => switchMode(isRegister ? 'login' : 'register')}>
                {isRegister ? 'Sign in' : 'Create an account'}
              </button>
            </p>
            <p className="portal-note">Your email is used for this portal. The game client uses the game login shown after registration.</p>
          </div>
        </section>
      </div>
    </main>
  );
}

function AuthField({ label, error, help, children }: { label: string; error?: string; help?: string; children: React.ReactNode }) {
  const errorId = label.startsWith('Email') ? 'email-error' : label.startsWith('Confirm') ? 'confirm-error' : 'password-error';
  return (
    <label>
      <span className="auth-label-row"><span>{label}</span>{label === 'Password' && <small>Required</small>}</span>
      {children}
      {error && <span className="auth-field-error" id={errorId} role="alert">{error}</span>}
      {!error && help && <span className="field-help">{help}</span>}
    </label>
  );
}

function PasswordInput({ id, value, visible, autoComplete, invalid, onToggle, onChange }: {
  id: string;
  value: string;
  visible: boolean;
  autoComplete: string;
  invalid: boolean;
  onToggle: () => void;
  onChange: (value: string) => void;
}) {
  return (
    <span className="input-shell">
      <i className="field-icon auth-lock-icon" aria-hidden="true">◇</i>
      <input
        id={id}
        type={visible ? 'text' : 'password'}
        required
        autoComplete={autoComplete}
        minLength={6}
        maxLength={20}
        placeholder="Enter your password"
        value={value}
        aria-invalid={invalid}
        onChange={(event) => onChange(event.target.value)}
      />
      <button className="password-visibility" type="button" onClick={onToggle} aria-label={`${visible ? 'Hide' : 'Show'} password`}>
        {visible ? 'Hide' : 'Show'}
      </button>
    </span>
  );
}

function PasswordStrength({ password }: { password: string }) {
  const score = useMemo(() => {
    if (!password) return 0;
    return [password.length >= 6, password.length >= 10, /[A-Za-z]/.test(password) && /\d/.test(password), /[^A-Za-z0-9]/.test(password)]
      .filter(Boolean).length;
  }, [password]);
  const label = ['Enter a password', 'Basic', 'Good', 'Strong', 'Excellent'][score];
  return (
    <div className={`password-strength strength-${score}`} aria-live="polite">
      <div>{[1, 2, 3, 4].map((item) => <i key={item} className={item <= score ? 'is-filled' : ''} />)}</div>
      <span>{label}</span>
    </div>
  );
}

function AccountLoading() {
  return (
    <main className="portal-page" id="main-content">
      <SEO title="Account | JoySword" description="Manage your JoySword account." noIndex={true} />
      <PortalHeader />
      <div className="account-page-content account-loading-wrap">
        <div className="account-state-card" role="status"><span className="auth-spinner" /><p>Loading your account…</p></div>
      </div>
    </main>
  );
}

function AccountDashboard({ user, justCreated, onSignOut }: { user: AccountUser; justCreated: boolean; onSignOut: () => Promise<void> }) {
  const [signingOut, setSigningOut] = useState(false);
  const [copied, setCopied] = useState(false);
  const [currentPassword, setCurrentPassword] = useState('');
  const [newPassword, setNewPassword] = useState('');
  const [confirmNewPassword, setConfirmNewPassword] = useState('');
  const [showCurrent, setShowCurrent] = useState(false);
  const [showNew, setShowNew] = useState(false);
  const [changingPassword, setChangingPassword] = useState(false);
  const [passwordMessage, setPasswordMessage] = useState<{ kind: 'success' | 'danger'; text: string } | null>(null);
  const [allowance, setAllowance] = useState<CashAllowance | null>(null);
  const [cashLoading, setCashLoading] = useState(true);
  const [cashBusy, setCashBusy] = useState<'starter' | 'daily' | null>(null);
  const [cashMessage, setCashMessage] = useState<{ kind: 'success' | 'danger'; text: string } | null>(null);
  const createdAt = new Date(user.createdAt);
  const initials = user.email.slice(0, 2).toUpperCase();

  useEffect(() => {
    let active = true;
    getCashAllowance()
      .then((response) => { if (active) setAllowance(response.allowance); })
      .catch((err) => {
        if (active) setCashMessage({ kind: 'danger', text: err instanceof ApiError ? err.message : 'Cash status is temporarily unavailable.' });
      })
      .finally(() => { if (active) setCashLoading(false); });
    return () => { active = false; };
  }, [user.id]);

  async function claimAccountCash(type: 'starter' | 'daily') {
    setCashBusy(type);
    setCashMessage(null);
    try {
      const response = await claimCash(type);
      setAllowance(response.allowance);
      const amount = response.claim.appliedReward.toLocaleString();
      setCashMessage({
        kind: 'success',
        text: response.claim.alreadyClaimed ? 'Today’s allowance was already claimed.' : `${amount} Cash was added to your game wallet.`,
      });
    } catch (err) {
      setCashMessage({ kind: 'danger', text: err instanceof ApiError ? err.message : 'Cash could not be claimed.' });
    } finally {
      setCashBusy(null);
    }
  }

  async function copyGameLogin() {
    await navigator.clipboard.writeText(user.legacyUserId);
    setCopied(true);
    window.setTimeout(() => setCopied(false), 1800);
  }

  async function submitPassword(event: React.FormEvent) {
    event.preventDefault();
    setPasswordMessage(null);
    if (newPassword.length < 6 || newPassword.length > 20) {
      setPasswordMessage({ kind: 'danger', text: 'Your new password must contain 6–20 characters.' });
      return;
    }
    if (newPassword !== confirmNewPassword) {
      setPasswordMessage({ kind: 'danger', text: 'Your new passwords do not match.' });
      return;
    }
    setChangingPassword(true);
    try {
      await changePassword(currentPassword, newPassword);
      setCurrentPassword('');
      setNewPassword('');
      setConfirmNewPassword('');
      setPasswordMessage({ kind: 'success', text: 'Password updated for both your portal and game login.' });
    } catch (err) {
      setPasswordMessage({ kind: 'danger', text: err instanceof ApiError ? err.message : 'Could not update your password.' });
    } finally {
      setChangingPassword(false);
    }
  }

  return (
    <main className="portal-page account-portal-v2" id="main-content">
      <SEO title="Your account | JoySword" description="Manage your JoySword account." noIndex={true} />
      <PortalHeader />
      <div className="account-center-shell">
        <aside className="account-side-rail" aria-label="Account navigation">
          <div className="account-rail-profile">
            <div className="account-rail-avatar" aria-hidden="true">{initials}</div>
            <div><strong>{user.email.split('@')[0]}</strong><span>JoySword player</span></div>
          </div>
          <nav className="account-rail-nav">
            <a className="is-active" href="#overview"><AccountIcon name="overview" />Overview</a>
            <a href="#cash-allowance"><AccountIcon name="cash" />Cash rewards</a>
            <a href="#game-access"><AccountIcon name="game" />Game access</a>
            <a href="#security"><AccountIcon name="shield" />Security</a>
            <Link to="/download"><AccountIcon name="download" />Downloads</Link>
          </nav>
          <div className="account-rail-help">
            <span className="account-rail-help-icon" aria-hidden="true">?</span>
            <strong>Need a hand?</strong>
            <p>Find setup help and answers in the player wiki.</p>
            <Link to="/wiki/faq">Visit help center</Link>
          </div>
          <button className="account-signout-button" type="button" disabled={signingOut} onClick={async () => { setSigningOut(true); await onSignOut(); }}>
            <AccountIcon name="logout" />{signingOut ? 'Signing out…' : 'Sign out'}
          </button>
        </aside>

        <div className="account-workspace">
          <header className="account-welcome" id="overview">
            <div>
              <p className="account-section-kicker">Account center</p>
              <h1>{justCreated ? 'Welcome to the realm.' : `Welcome back, ${user.email.split('@')[0]}.`}</h1>
              <p>{justCreated ? 'Your game account is ready. Copy your player login below and you can start playing.' : 'Everything you need to manage your JoySword account, in one place.'}</p>
            </div>
            <span className={`account-health-pill ${user.syncStatus !== 'active' ? 'is-warning' : ''}`}><i />{user.syncStatus === 'active' ? 'All systems ready' : 'Action required'}</span>
          </header>

          {justCreated && <div className="account-success-banner" role="status"><span aria-hidden="true">✓</span><div><strong>Your account was created successfully</strong><p>Your portal and game credentials are active and synced.</p></div><a href="#game-access">View game login</a></div>}

          <section className="account-profile-overview account-v2-card" aria-labelledby="profile-title">
            <div className="account-profile-mark" aria-hidden="true"><img src="/joysword-icon-192.webp" alt="" width="84" height="84" /><i /></div>
            <div className="account-profile-copy"><span>Player profile</span><h2 id="profile-title">{user.email}</h2><p>Member since {createdAt.toLocaleDateString(undefined, { month: 'long', day: 'numeric', year: 'numeric' })}</p></div>
            <div className="account-profile-stats" aria-label="Account status">
              <div><span>Portal</span><strong><i /> Active</strong></div>
              <div><span>Game account</span><strong className={user.syncStatus !== 'active' ? 'is-warning' : ''}><i /> {user.syncStatus === 'active' ? 'Ready' : 'Needs attention'}</strong></div>
            </div>
          </section>

          <CashAllowanceCard
            allowance={allowance}
            loading={cashLoading}
            busy={cashBusy}
            message={cashMessage}
            onClaim={claimAccountCash}
          />

          <div className="account-content-grid">
            <div className="account-primary-column">
              <section className="account-v2-card account-game-card" id="game-access" aria-labelledby="game-access-title">
                <div className="account-v2-card-heading">
                  <div className="account-heading-icon"><AccountIcon name="game" /></div>
                  <div><span>Game access</span><h2 id="game-access-title">Your client credentials</h2></div>
                  <span className={`account-inline-status ${user.syncStatus !== 'active' ? 'is-warning' : ''}`}><i />{user.syncStatus === 'active' ? 'Ready to play' : 'Check status'}</span>
                </div>
                <p className="account-card-description">Use this Player ID with your existing account password when signing in to the JoySword client.</p>
                <div className="account-credential-box">
                  <div><span>Player ID</span><code>{user.legacyUserId}</code></div>
                  <button type="button" onClick={copyGameLogin} aria-label="Copy player ID">{copied ? <AccountIcon name="check" /> : <AccountIcon name="copy" />}{copied ? 'Copied' : 'Copy ID'}</button>
                </div>
                <div className="account-info-callout"><AccountIcon name="info" /><p><strong>Use your Player ID in the game client.</strong> Your email is only used to sign in to this website.</p></div>
              </section>

              <section className="account-v2-card account-security-panel" id="security" aria-labelledby="security-title">
                <div className="account-v2-card-heading">
                  <div className="account-heading-icon is-violet"><AccountIcon name="shield" /></div>
                  <div><span>Security</span><h2 id="security-title">Password & sign-in</h2></div>
                  <span className="account-sync-badge"><AccountIcon name="sync" />Portal + game synced</span>
                </div>
                <p className="account-card-description">Choose a unique password you do not use anywhere else. Updating it here changes both of your JoySword sign-ins.</p>
                <form className="registration-form account-security-form" onSubmit={submitPassword}>
                  <div className="account-current-password"><label><span>Current password</span><PasswordInput id="current-account-password" value={currentPassword} visible={showCurrent} autoComplete="current-password" invalid={false} onToggle={() => setShowCurrent((current) => !current)} onChange={setCurrentPassword} /></label></div>
                  <div className="password-fields-row">
                    <label><span>New password</span><PasswordInput id="new-account-password" value={newPassword} visible={showNew} autoComplete="new-password" invalid={false} onToggle={() => setShowNew((current) => !current)} onChange={setNewPassword} /></label>
                    <label><span>Confirm new password</span><PasswordInput id="confirm-account-password" value={confirmNewPassword} visible={showNew} autoComplete="new-password" invalid={false} onToggle={() => setShowNew((current) => !current)} onChange={setConfirmNewPassword} /></label>
                  </div>
                  <div className="account-password-guidance"><span>6–20 characters</span><span>Letters, numbers & symbols recommended</span></div>
                  {passwordMessage && <p className={`status-message ${passwordMessage.kind}`} role="status">{passwordMessage.text}</p>}
                  <button className="submit-button" type="submit" disabled={changingPassword}><span>{changingPassword ? 'Updating password…' : 'Update password'}</span><i aria-hidden="true">→</i></button>
                </form>
              </section>
            </div>

            <aside className="account-secondary-column" aria-label="Account resources">
              <section className="account-v2-card account-play-card">
                <div className="account-play-art" aria-hidden="true"><img src="/character_splashes/elsword-splash.png" alt="" /></div>
                <div className="account-play-content"><span>Ready to play?</span><h2>Enter Elrios</h2><p>Install the client, sign in with your Player ID, and begin your journey.</p><Link className="button button-primary" to="/download"><AccountIcon name="download" />Download client</Link></div>
              </section>
              <section className="account-v2-card account-quick-links">
                <div className="account-v2-card-heading compact"><div><span>Resources</span><h2>Quick links</h2></div></div>
                <Link to="/download/install"><span><AccountIcon name="guide" /></span><div><strong>Installation guide</strong><small>Set up the client</small></div><i>›</i></Link>
                <Link to="/wiki/getting-started"><span><AccountIcon name="map" /></span><div><strong>New player guide</strong><small>Start your adventure</small></div><i>›</i></Link>
                <Link to="/wiki/faq"><span><AccountIcon name="help" /></span><div><strong>Help center</strong><small>Answers and support</small></div><i>›</i></Link>
              </section>
              <div className="account-security-tip"><AccountIcon name="shield" /><p><strong>Keep your account safe</strong>JoySword staff will never ask for your password.</p></div>
            </aside>
          </div>
        </div>
      </div>
    </main>
  );
}

function CashAllowanceCard({ allowance, loading, busy, message, onClaim }: {
  allowance: CashAllowance | null;
  loading: boolean;
  busy: 'starter' | 'daily' | null;
  message: { kind: 'success' | 'danger'; text: string } | null;
  onClaim: (type: 'starter' | 'daily') => Promise<void>;
}) {
  const money = new Intl.NumberFormat();
  const progress = allowance ? Math.min(100, (allowance.progressDay / 30) * 100) : 0;
  const primaryType = allowance?.starterClaimAvailable ? 'starter' : 'daily';
  const canClaim = allowance?.starterClaimAvailable || allowance?.dailyClaimAvailable;
  const reward = allowance?.starterClaimAvailable ? allowance.starterReward : allowance?.nextReward ?? 0;
  const buttonLabel = allowance?.starterClaimAvailable
    ? `Claim ${money.format(allowance.starterReward)} starter Cash`
    : allowance?.claimedToday
      ? 'Claimed today'
      : allowance && allowance.balance >= allowance.cap
        ? 'Wallet is full'
        : `Claim ${money.format(allowance?.nextReward ?? 0)} Cash`;

  return (
    <section className="account-v2-card account-cash-allowance" id="cash-allowance" aria-labelledby="cash-allowance-title">
      <div className="account-cash-main">
        <div className="account-v2-card-heading">
          <div className="account-heading-icon is-gold"><AccountIcon name="cash" /></div>
          <div><span>Cash rewards</span><h2 id="cash-allowance-title">Daily realm allowance</h2></div>
          {allowance && <span className="account-cash-balance"><small>Wallet balance</small><strong>{money.format(allowance.balance)} <i>Cash</i></strong></span>}
        </div>

        {loading ? (
          <div className="account-cash-loading" role="status"><span className="auth-spinner" />Loading your Cash wallet…</div>
        ) : allowance ? (
          <>
            <div className="account-cash-reward-row">
              <div className="account-reward-orb" aria-hidden="true"><span>JS</span></div>
              <div><small>{allowance.starterClaimAvailable ? 'Starter Cache ready' : 'Available reward'}</small><strong>+{money.format(reward)} Cash</strong><p>{allowance.starterClaimAvailable ? `Top up to ${money.format(allowance.starterTarget)} Cash and start exploring the shop.` : 'Claim once per day. Missed days pause your journey—they never reset it.'}</p></div>
              <button type="button" className="button button-primary" disabled={!canClaim || Boolean(busy)} onClick={() => onClaim(primaryType)}>
                {busy ? 'Adding Cash…' : buttonLabel}<AccountIcon name={canClaim ? 'gift' : 'check'} />
              </button>
            </div>
            {message && <p className={`status-message account-cash-message ${message.kind}`} role="status">{message.text}</p>}
          </>
        ) : (
          <p className="status-message danger" role="status">{message?.text ?? 'Cash status is temporarily unavailable.'}</p>
        )}
      </div>

      <div className="account-cash-progress">
        <div><span>Realm journey</span><strong>Day {allowance?.progressDay ?? 0} <small>/ 30</small></strong></div>
        <div className="account-cash-progress-track" aria-label={`${allowance?.progressDay ?? 0} of 30 reward days complete`}><i style={{ width: `${progress}%` }} /></div>
        <div className="account-milestone-row">
          {[7, 14, 21, 28, 30].map((day) => <span key={day} className={(allowance?.progressDay ?? 0) >= day ? 'is-complete' : allowance?.nextMilestoneDay === day ? 'is-next' : ''}><i>{day === 30 ? '★' : day}</i><small>{day === 30 ? '+20K' : '+5K'}</small></span>)}
        </div>
        <p><AccountIcon name="spark" /> Every claim advances your journey. Weekly milestones and day 30 include bonus Cash.</p>
      </div>
    </section>
  );
}

type AccountIconName = 'overview' | 'cash' | 'game' | 'shield' | 'download' | 'logout' | 'copy' | 'check' | 'gift' | 'spark' | 'info' | 'sync' | 'guide' | 'map' | 'help';

function AccountIcon({ name }: { name: AccountIconName }) {
  const paths: Record<AccountIconName, React.ReactNode> = {
    overview: <><rect x="3" y="3" width="7" height="7" rx="1" /><rect x="14" y="3" width="7" height="7" rx="1" /><rect x="3" y="14" width="7" height="7" rx="1" /><rect x="14" y="14" width="7" height="7" rx="1" /></>,
    cash: <><circle cx="12" cy="12" r="9" /><path d="M15.5 8.5c-.7-.7-1.8-1-3.1-1-1.8 0-3 .8-3 2s1 1.8 3 2.2c2 .4 3 1 3 2.3s-1.2 2.2-3.1 2.2c-1.4 0-2.7-.4-3.5-1.2M12 5.5v13" /></>,
    game: <><path d="M8.5 7h7a6.5 6.5 0 0 1 6.2 8.5l-.8 2.3a2.6 2.6 0 0 1-4.2 1.1l-2-1.9H9.3l-2 1.9a2.6 2.6 0 0 1-4.2-1.1l-.8-2.3A6.5 6.5 0 0 1 8.5 7Z" /><path d="M7 11v4M5 13h4M16.5 12.5h.01M19 14.5h.01" /></>,
    shield: <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10Z" />,
    download: <><path d="M12 3v12M7 10l5 5 5-5" /><path d="M5 21h14" /></>,
    logout: <><path d="M10 17l5-5-5-5M15 12H3" /><path d="M14 3h5a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-5" /></>,
    copy: <><rect x="9" y="9" width="11" height="11" rx="2" /><path d="M15 9V6a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v7a2 2 0 0 0 2 2h3" /></>,
    check: <path d="m5 12 4 4L19 6" />,
    gift: <><rect x="3" y="9" width="18" height="12" rx="2" /><path d="M12 9v12M3 13h18M7.5 9C5 9 4 7.8 4 6.5S5 4 6.5 4C9 4 12 9 12 9s3-5 5.5-5C19 4 20 5.2 20 6.5S19 9 16.5 9" /></>,
    spark: <path d="m12 3 1.4 4.1L17.5 8.5l-4.1 1.4L12 14l-1.4-4.1-4.1-1.4 4.1-1.4L12 3ZM18.5 15l.8 2.2 2.2.8-2.2.8-.8 2.2-.8-2.2-2.2-.8 2.2-.8.8-2.2Z" />,
    info: <><circle cx="12" cy="12" r="9" /><path d="M12 11v6M12 7h.01" /></>,
    sync: <><path d="M20 7h-5V2" /><path d="M20 7a9 9 0 0 0-15.5-2M4 17h5v5" /><path d="M4 17a9 9 0 0 0 15.5 2" /></>,
    guide: <><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20" /><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2Z" /></>,
    map: <><path d="m3 6 6-3 6 3 6-3v15l-6 3-6-3-6 3V6Z" /><path d="M9 3v15M15 6v15" /></>,
    help: <><circle cx="12" cy="12" r="9" /><path d="M9.8 9a2.4 2.4 0 1 1 3.3 2.2c-.8.4-1.1.9-1.1 1.8M12 17h.01" /></>,
  };
  return <svg viewBox="0 0 24 24" aria-hidden="true" fill="none" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round">{paths[name]}</svg>;
}
