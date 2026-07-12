# Azure client downloads

The public download page is:

`https://joysword-web-be6c7ac407.azurewebsites.net/download`

Artifacts remain private in the `downloads` container. The web app's managed
identity can read that container and request user-delegation keys, but cannot
upload, replace, or delete release files. `/api/downloads/{artifactId}` issues a
read-only Azure Blob URL that expires after 15 minutes.

## Publish a release

Build the Windows x64 launcher:

```bash
cd launcher
npm install
npm run dist
cd ..
```

Package the launcher and client. Use an explicit UTC date so the ZIP is
reproducible:

```bash
python3 scripts/package_client_release.py \
  --version 1.1.0 \
  --release-date 2026-07-03
```

Inspect `build/downloads/latest.json`, then publish:

```bash
python3 scripts/azure_publish_downloads.py
```

The manifest is uploaded last, so users never receive links to incomplete
artifacts. Keep old versioned blobs until clients have moved to the new release.

## Verification

Confirm these endpoints after publishing:

- `/api/downloads` returns the new version, byte counts, and SHA-256 values.
- `/api/downloads/full-client` returns `302` to a private Azure Blob URL.
- `/api/downloads/launcher` returns `302` to a private Azure Blob URL.
- Direct anonymous access to the container remains blocked.

Release operators are responsible for ensuring they have the right to
redistribute every file included in the client archive.
