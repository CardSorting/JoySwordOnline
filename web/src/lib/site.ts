export const siteUrl = (import.meta.env.VITE_SITE_URL ?? window.location.origin).replace(
  /\/$/,
  ''
);

export function absoluteUrl(path: string): string {
  return `${siteUrl}${path.startsWith('/') ? path : `/${path}`}`;
}
