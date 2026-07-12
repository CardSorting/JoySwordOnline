'use client';

import { Link } from 'react-router-dom';
import { useEffect, useState } from 'react';
import type {
  PublicDownloadArtifact,
  PublicDownloadManifest
} from '@/types/downloads';

function formatBytes(bytes: number): string {
  const gibibytes = bytes / 1024 ** 3;
  if (gibibytes >= 1) return `${gibibytes.toFixed(2)} GB`;
  return `${(bytes / 1024 ** 2).toFixed(1)} MB`;
}

function ArtifactAction({
  artifact,
  primary = false
}: {
  artifact: PublicDownloadArtifact;
  primary?: boolean;
}) {
  return (
    <div className={`store-package-row ${primary ? 'is-primary' : ''}`}>
      <div>
        <strong>{artifact.label}</strong>
        <span>{artifact.platform === 'windows-x64' ? 'Windows 64-bit' : artifact.platform}</span>
      </div>
      <div className="store-package-meta">
        <small>{formatBytes(artifact.bytes)}</small>
        <a
          className={primary ? 'store-play-button' : 'store-secondary-button'}
          href={`https://manifest.onjoysword.top/${artifact.blobName}`}
          download
        >
          <span aria-hidden="true">⊞</span>
          {primary ? 'Download & play' : 'Get launcher'}
        </a>
      </div>
    </div>
  );
}

export function StoreInstallPanel() {
  const [manifest, setManifest] = useState<PublicDownloadManifest | null>(null);
  const [error, setError] = useState(false);

  useEffect(() => {
    const controller = new AbortController();
    fetch('/latest.json', { signal: controller.signal })
      .then(async (response) => {
        if (!response.ok) throw new Error('Release unavailable');
        return (await response.json()) as PublicDownloadManifest;
      })
      .then(setManifest)
      .catch((fetchError: unknown) => {
        if ((fetchError as { name?: string }).name !== 'AbortError') setError(true);
      });
    return () => controller.abort();
  }, []);

  return (
    <section className="store-install-panel" aria-labelledby="store-install-heading">
      <div className="store-install-heading">
        <div>
          <span>Free community release</span>
          <h2 id="store-install-heading">Play JoySword</h2>
        </div>
        <div className="store-platform" aria-label="Supported platform">
          <span aria-hidden="true">⊞</span> Windows
        </div>
      </div>

      <div className="store-package-list">
        {!manifest && !error && (
          <div className="store-package-loading" role="status">
            <i /> Loading current release…
          </div>
        )}
        {error && (
          <div className="store-package-error" role="status">
            Release service is temporarily unavailable. Refresh this page in a minute.
          </div>
        )}
        {manifest?.artifacts
          .slice()
          .sort((a: PublicDownloadArtifact, b: PublicDownloadArtifact) => Number(b.recommended) - Number(a.recommended))
          .map((artifact: PublicDownloadArtifact) => (
            <ArtifactAction
              artifact={artifact}
              primary={artifact.recommended}
              key={artifact.id}
            />
          ))}
      </div>

      <div className="store-install-footer">
        <span>
          Release {manifest?.version ?? '—'} · Secure Azure download · SHA-256 published
        </span>
        <Link to="/download">View release details and checksums</Link>
      </div>
    </section>
  );
}
