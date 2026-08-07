# mtg_decklist_cache

JSON archive of scraped MTGO and MTGTop8 Duel Commander tournament
results, produced by `apps/barrins_scripture`
(`barrins-project/barrins-project`).

## Layout

```
mtgo.com/YYYY/MM/DD/<tournament>.json
mtgtop8.com/YYYY/MM/DD/<id>_<format>_<name>.json
```

Each file is one `MTGScrape` object (`tournament`, `decks`, `rounds`,
`standings`) as defined in
`barrins_scripture/schemas/scraped_object.py`.

This repository is a fresh archive for the `barrins_scripture` rewrite —
it does not carry over history from the earlier `mtg_scraper` /
`mtg_decklist_cache` archive (different scraper implementation, and at
least one known schema change: `Deck.result` is now `str | None` to
preserve MTGTop8 tie-bracket ranges like `"5-8"`, which the old scraper
truncated to an integer).
