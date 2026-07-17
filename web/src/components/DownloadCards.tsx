'use client';

import { useEffect, useState } from 'react';
import type { PublicDownloadManifest, PublicDownloadArtifact } from '@/types/downloads';

function formatBytes(bytes: number): string {
  const units = ['B', 'KB', 'MB', 'GB', 'TB'];
  let value = bytes;
  let unit = 0;
  while (value >= 1024 && unit < units.length - 1) {
    value /= 1024;
    unit += 1;
  }
  return `${value.toFixed(unit >= 3 ? 2 : 1)} ${units[unit]}`;
}

export function DownloadCards() {
  const [manifest, setManifest] = useState<PublicDownloadManifest | null>(null);
  const [error, setError] = useState(false);

  useEffect(() => {
    const controller = new AbortController();
    fetch(`/latest.json?t=${Date.now()}`, {
      cache: 'no-store',
      headers: {
        'Cache-Control': 'no-cache',
        'Pragma': 'no-cache',
        'Expires': '0'
      },
      signal: controller.signal
    })
      .then(async (response) => {
        if (!response.ok) throw new Error('Download manifest unavailable');
        return (await response.json()) as PublicDownloadManifest;
      })
      .then(setManifest)
      .catch((fetchError: unknown) => {
        if ((fetchError as { name?: string }).name !== 'AbortError') setError(true);
      });
    return () => controller.abort();
  }, []);

  if (error) {
    return (
      <div className="download-unavailable" role="status">
        <strong>Downloads are temporarily unavailable.</strong>
        <p>The release service could not be reached. Refresh this page in a minute.</p>
      </div>
    );
  }

  if (!manifest) {
    return (
      <div className="download-loading" role="status" aria-live="polite">
        <span />
        <p>Loading the current verified release…</p>
      </div>
    );
  }

  return (
    <>
      <div className="download-release-bar">
        <div>
          <span className="release-dot" aria-hidden="true" />
          <p>Current release</p>
          <strong>JoySword {manifest.version}</strong>
        </div>
        <p>
          Published{' '}
          <time dateTime={manifest.publishedAt}>
            {new Intl.DateTimeFormat('en-US', {
              year: 'numeric',
              month: 'long',
              day: 'numeric',
              timeZone: 'UTC'
            }).format(new Date(manifest.publishedAt))}
          </time>
        </p>
      </div>

      <div className="download-grid">
        {manifest.artifacts.map((artifact: PublicDownloadArtifact) => (
          <article
            className={`download-card ${artifact.recommended ? 'is-recommended' : ''}`}
            key={artifact.id}
          >
            {artifact.recommended && <span className="recommended-pill">Recommended</span>}
            <div className="download-card-icon" aria-hidden="true">
              {artifact.kind === 'archive' ? '↓' : '↻'}
            </div>
            <p className="download-platform">Windows 10/11 · 64-bit</p>
            <h2>{artifact.label}</h2>
            <p>{artifact.description}</p>
            <dl>
              <div>
                <dt>Version</dt>
                <dd>{artifact.version}</dd>
              </div>
              <div>
                <dt>File size</dt>
                <dd>{formatBytes(artifact.bytes)}</dd>
              </div>
              <div>
                <dt>Format</dt>
                <dd>{artifact.kind === 'archive' ? 'ZIP archive' : 'EXE installer'}</dd>
              </div>
            </dl>
            <a className="button button-primary download-button" href={`https://manifest.onjoysword.top/${artifact.blobName}`} download>
              Download {artifact.kind === 'archive' ? 'full client' : 'launcher'}
              <span aria-hidden="true">↓</span>
            </a>
            <details className="checksum">
              <summary>Verify SHA-256 checksum</summary>
              <code>{artifact.sha256}</code>
            </details>
          </article>
        ))}
      </div>
    </>
  );
}
