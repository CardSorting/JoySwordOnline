# Enhancement regression fixtures

`legacy-approved.json` identifies the legitimate canonical and bundled archive member by hash and expected row counts. The probability section is compared byte-for-byte with the untouched `EnchantTable.lua.bak` section.

`broken-high-tier-override.lua` preserves the exact guaranteed-success defect as a permanent negative fixture. `mutation-cases.json` describes deterministic corruptions applied to the legitimate fixture; every case must be rejected for its named reason.
