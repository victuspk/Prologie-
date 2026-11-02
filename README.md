# Lira Ledger

A monthly budget for a 36,000 ₺ income. Each month:

1. **Money arrives.** On the **Plan** tab, enter what you received and give every lira a job
   (rent, bills, groceries, savings…). The box turns green when nothing is left unassigned.
2. **Every day, log what you spend** on the **+ Spend** tab. Tick "I didn't really need this"
   for money you regret; it is counted as wasted.
3. **The Today tab tells you:**
   - **Safe to spend today**: what's left of your day-to-day budget divided by the days left in the month.
   - **Where it's going wrong**: categories over budget or spending faster than the month is passing,
     money marked wasted, too much on wants, unassigned income, and month-end projection.
   - **Remaining** money overall and for each category, with a line showing where you should be today.
4. **New month:** use the arrows to move to the next month and tap "Copy last month's plan".

## Category types

| Type | Examples | Counts toward daily allowance |
|------|----------|-------------------------------|
| Fixed bill | Rent, electricity, internet | No (paid once) |
| Need | Groceries, transport | Yes |
| Want | Eating out, shopping | Yes |
| Savings | Money put aside | No |

## Put it on your phone

Host the folder on any HTTPS static host (e.g. enable **GitHub Pages** for this repo:
Settings → Pages → Deploy from branch). Open the link on your phone, then:

- **iPhone (Safari):** Share → *Add to Home Screen*
- **Android (Chrome):** ⋮ menu → *Install app* / *Add to Home screen*

It opens full screen like an app and works offline. Data is stored on that phone only.

## Files

- `src/app.html`: the whole app (also published as a claude.ai Artifact, where data syncs to your Claude account)
- `build.sh`: builds `index.html` (installable version) from `src/app.html`
- `manifest.webmanifest`, `sw.js`, `icon*`: home-screen install and offline support
