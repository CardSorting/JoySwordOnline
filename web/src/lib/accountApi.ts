// Client for the JoySword account API. In production the API runs on the
// Azure App Service hosts both this SPA and the VNet-integrated account API.
// Production leaves VITE_API_BASE_URL empty so account calls stay same-origin;
// it may still be set when running the frontend separately during development.
const API_BASE = (import.meta.env.VITE_API_BASE_URL ?? '').replace(/\/$/, '');

export interface AccountUser {
  id: string;
  email: string;
  legacyUserId: string;
  legacyUserUid: number | null;
  syncStatus: 'pending' | 'active' | 'failed';
  createdAt: string;
  lastLoginAt: string | null;
}

export interface CashAllowance {
  balance: number;
  cap: number;
  claimedToday: boolean;
  progressDay: number;
  nextReward: number;
  nextMilestoneDay: number;
  starterTarget: number;
  starterReward: number;
  starterClaimed: boolean;
  starterClaimAvailable: boolean;
  dailyClaimAvailable: boolean;
  eligible: boolean;
}

async function request<T>(path: string, init?: RequestInit): Promise<T> {
  const res = await fetch(`${API_BASE}${path}`, {
    ...init,
    credentials: 'include',
    headers: {
      'Content-Type': 'application/json',
      ...(init?.headers ?? {}),
    },
  });

  let body: unknown = null;
  try {
    body = await res.json();
  } catch {
    // no JSON body
  }

  if (!res.ok) {
    const message =
      (body as { error?: string })?.error || `Request failed (${res.status}).`;
    throw new ApiError(message, res.status);
  }
  return body as T;
}

export class ApiError extends Error {
  status: number;
  constructor(message: string, status: number) {
    super(message);
    this.name = 'ApiError';
    this.status = status;
  }
}

export function register(email: string, password: string) {
  return request<{ user: AccountUser }>('/api/auth/register', {
    method: 'POST',
    body: JSON.stringify({ email, password }),
  });
}

export function login(email: string, password: string) {
  return request<{ user: AccountUser }>('/api/auth/login', {
    method: 'POST',
    body: JSON.stringify({ email, password }),
  });
}

export function logout() {
  return request<{ ok: boolean }>('/api/auth/logout', { method: 'POST' });
}

export function getAccount() {
  return request<{ user: AccountUser }>('/api/account');
}

export function changePassword(currentPassword: string, newPassword: string) {
  return request<{ ok: boolean }>('/api/auth/password', {
    method: 'POST',
    body: JSON.stringify({ currentPassword, newPassword }),
  });
}

export function getCashAllowance() {
  return request<{ allowance: CashAllowance }>('/api/account/economy');
}

export function claimCash(type: 'starter' | 'daily') {
  return request<{
    claim: { type: 'starter' | 'daily'; appliedReward: number; alreadyClaimed: boolean };
    allowance: CashAllowance;
  }>('/api/account/economy/claim', {
    method: 'POST',
    body: JSON.stringify({ type }),
  });
}
