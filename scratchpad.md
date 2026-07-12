# SOVEREIGN AUDIT - JoySword Landing Page Completion

## Objective
Create a premium promotional landing page for JoySword Offline while preserving Firebase Auth account creation and MSSQL sync registration behavior.

## Files intentionally changed
- `web/src/app/page.tsx` - UI landing page and preserved client registration handler.
- `web/src/app/layout.tsx` - metadata and font links.
- `web/src/app/globals.css` - responsive game landing-page design system.
- `web/public/*.svg` - local hero and character artwork assets.

## Registration preservation check
The original flow remains in `page.tsx`:
1. Normalize and validate email/password through domain helpers.
2. Create Firebase email/password account with `createUserWithEmailAndPassword(getFirebaseClientAuth(), ...)`.
3. Retrieve Firebase ID token.
4. POST `{ idToken, password }` to `/api/account/sync`.
5. Display generated game login/UserUID returned by the sync API.

## Verification commands run
- `npm run build` - passed.
- `npm run typecheck` - passed.
- `npm run lint` - passed with no warnings/errors.
- `git diff --check -- web/src/app/page.tsx web/src/app/layout.tsx web/src/app/globals.css web/public` - passed.
- Scoped grep confirmed Firebase creation and `/api/account/sync` sync call remain present.

## Known completion-gate issue
`attempt_completion` is blocked by an external audit service returning HTTP 503 (`audit_error`). Workspace verification has been performed manually; no code-side audit violation has been reported beyond service unavailability.

## Knowledge Ledger note
`run_finalization` was attempted but is not available in this shell (`command not found`). Per project rules, no direct `.wiki/` edits were made.
