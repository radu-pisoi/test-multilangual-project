# Software Docs Starter — Multilingual

A minimal, ready-to-use DITA project template for software documentation, pre-translated
into English, German, and French. It's a multilingual variant of the plain "Software Docs
Starter" template, meant to show how to structure and publish a DITA project across
several languages side by side.

## Project Structure

```
├── software-docs-starter-multilingual.ditamap   # Combined map (all languages, keyscoped)
├── en/                                          # English (source)
│   ├── userguide.ditamap
│   ├── topics/
│   └── reusables/
├── de-DE/                                       # German (translated)
├── fr-FR/                                       # French (translated)
└── .contentfusion/
    ├── ditaProject.xml                          # Publishing contexts & deliverables
    └── i18n/translation-index.xml               # Tracks source→target translation state
```

Each language folder is a self-contained copy of the same starter content
(`welcome`, `installation`, `configuration`, `common-tasks`, `troubleshooting`, `faq`, plus
the shared `reusables/`), translated independently while keeping the same DITA structure and
element ids as the English source.

## Getting Started

1. **Set your product name and version** — Edit `reusables/reusable_keys.ditamap` in each
   language folder and replace the product name/version placeholders with your actual
   product name and version, translated for each locale.
2. **Customize the topics** — Replace the placeholder content in each language folder,
   keeping the overall structure and ids in sync across languages.
3. **Publish** — Go to the **Deliverables** view and publish any language individually, or
   the combined multilingual map, to WebHelp or PDF.

## Translation Workflow

This project ships fully translated, with `.contentfusion/i18n/translation-index.xml`
recording the source/target file pairs and their content hashes. Editing an English file
without updating its German/French counterpart makes that translation "stale" the next time
the translation agent's incremental-translation skill runs against this project — a good way
to see the translation workflow in action.

## Key DITA Features Demonstrated

| Feature | Where |
|---|---|
| **Key references** (`keyref`) | Product name and version, defined per language in each `reusable_keys.ditamap`. |
| **Content references** (`conref`) | Reusable notes pulled into task topics from `reusable_components.dita`. |
| **Key scopes** (`keyscope`) | The combined map isolates each language's keys via `keyscope="en"/"de"/"fr"` to avoid collisions. |
| **Multilingual publishing** | Per-language and combined publishing contexts/deliverables in `.contentfusion/ditaProject.xml`. |
