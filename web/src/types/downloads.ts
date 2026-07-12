export type PublicDownloadArtifact = {
  id: string;
  label: string;
  description: string;
  version: string;
  fileName: string;
  blobName: string;
  bytes: number;
  sha256: string;
  platform: 'windows-x64';
  kind: 'archive' | 'installer';
  recommended: boolean;
};

export type PublicDownloadManifest = {
  schema: 'joysword.downloads/v1';
  version: string;
  publishedAt: string;
  artifacts: PublicDownloadArtifact[];
};
