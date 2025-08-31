# LXRCore Police System

**Install:**
1. Drop `lxr-police/` into `resources/`.
2. Run all files in `sql/migrations/` on your MySQL DB.
3. Add `ensure lxr-police` under your framework resource in `server.cfg`.
4. Edit `config/config.lua` for framework, station, and jail settings.

**Basic Usage:**
- `/mdt` opens the MDT.
- Clock in/out at station marker or via command.
- Arrest/cuff via police interaction menu.
- Issue citations from police UI.

**Demo Scenario:**
1. Clock in at Valentine Sheriff's Office.
2. Arrest a player, cuff and drag to cell.
3. Issue citation for "Disorderly Conduct."
4. Open MDT, view the report.
5. Confirm DB entry for citation.

**Frameworks Supported:** LXRCore, RSGCore, VORP (auto-detect).

**Docs:** See `docs/CONFIG.md`, `docs/EVENTS.md`, `docs/API.md` for config, events, and API reference.