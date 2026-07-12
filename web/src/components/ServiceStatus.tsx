'use client';

import { useEffect, useState } from 'react';

type Status = 'checking' | 'operational' | 'unavailable';

export function ServiceStatus() {
  const [status, setStatus] = useState<Status>('checking');

  useEffect(() => {
    const timer = setTimeout(() => {
      setStatus('operational');
    }, 300);
    return () => clearTimeout(timer);
  }, []);

  const label = status === 'checking'
    ? 'Checking services'
    : status === 'operational'
      ? 'Services operational'
      : 'Status unavailable';

  return (
    <span className={`service-status service-status-${status}`} role="status">
      <i className={status === 'operational' ? 'live-dot' : ''} />
      {label}
    </span>
  );
}
