# CLAUDE.md – Projektbeschreibung: Hausarbeit Sales Management (SAP SE)

## Aufgabenstellung

Hausarbeit im Modul **Sales Management**, DHBW Mannheim, WWI23SCB, Dozent: Florian Holz.  
**Abgabe**: 22.07.2026 bis 18:00 Uhr via Moodle als PDF.  
**Umfang**: Maximal 2.000 Wörter (Summe über alle Fragen).  
**Unternehmen**: SAP SE, Walldorf (B2B Enterprise-Software).

### Die 6 Pflichtfragen (alle müssen beantwortet werden):
1. Ziele und Herausforderungen des Vertriebsmanagements bei SAP SE
2. Vertriebsstrategie von SAP SE
3. Vertriebsbezogener Wettbewerbsvorteil SAP SE vs. Konkurrenz (Salesforce, Oracle, Microsoft)
4. Gestaltung der Vertriebskanäle bei SAP SE
5. Bedeutung von CRM für SAP SE
6. Größte vertriebsbezogene Herausforderung der nächsten 5 Jahre

---

## Projektstruktur

```
SalesManagement/
├── main.typ              # Formatvorlage, Deckblatt, Seitenlayout, Struktur
├── content.typ           # INHALT DER HAUSARBEIT – hier wird geschrieben
├── acronyms.typ          # Abkürzungsverzeichnis (Key-Value-Dictionary)
├── acronym-lib.typ       # Abkürzungs-Hilfsfunktionen (nicht bearbeiten)
├── variables.typ         # Variablen-Dictionary (derzeit kaum genutzt)
├── variables-lib.typ     # Variablen-Hilfsfunktionen (nicht bearbeiten)
├── sources.bib           # Literaturverzeichnis als BibTeX
├── shared-lib.typ        # Geteilte Hilfsfunktionen (nicht bearbeiten)
├── pictures/             # Bilder (DHBW_MA_Logo.jpg, SAP_logo.jpg)
├── context/
│   ├── Anforderungen/
│   │   └── Sales Management_Hausarbeit_Aufgabenstellung.pdf
│   ├── Vorlesungsskripte/
│   │   └── Sales Management_Kapitel 1-3.pdf   # Skript mit Kapiteln 1-6 (99 Seiten)
│   └── SAP internal slides/                   # *** PRIMÄRQUELLE: Interne SAP-Dokumente ***
│       ├── 2026_BDC_GTM_Overview.pdf          # SAP Business Data Cloud GTM 2026 (32 Seiten, Stand Mai 2026)
│       ├── GTM 2026 Executive Overview.pptx   # Executive GTM Overview 2026
│       ├── SAP Pricing Fundamentals.pdf        # SAP Business Models & Pricing Fundamentals Q2 2026 (30 Seiten)
│       └── SAP_CAS_for_SPM_Pricing_Overview_September_2025_v01_INTERNAL.pdf  # CAS für Sales Performance Management (5 Seiten)
└── CLAUDE.md             # Diese Datei
```

**Wichtig**: Inhalt wird ausschließlich in `content.typ` geschrieben. `main.typ` enthält nur Formatierung und Metadaten – dort nur Variablen wie `var_title` anpassen.

---

## Vorlesungsskript: Themen und relevante Folien

Das Skript `Sales Management_Kapitel 1-3.pdf` enthält alle 6 Kapitel (Folie 1–99). **Vor jedem Abschnitt prüfen, welche Konzepte das Skript zu diesem Thema behandelt**, und diese Aspekte im Text aufgreifen.

### Kapitel 1: Einführung (Folien 8–30)
- Vertrieb als Verkaufsprozess (Sales Funnel: Opportunity → Connection → Obstacle → Sale)
- Definition Sales Management (5 Entscheidungsfelder: Vertriebssystem, Beziehungen zu Partnern, Organisation, Produktvermarktung, Personalsteuerung)
- B2B vs. B2C-Kontext
- Megatrend Digitalisierung im Vertrieb
- Evolutionspfad: Rattenjagd-Vertrieb → Verkaufen mit Methode → CRM-Vertrieb
- Transactional Selling vs. Solution Selling
- Omnichannel-Vertrieb

### Kapitel 2: Grundlagen des Vertriebsmanagements (Folien 31–47)
- **2.2 Ziele und Herausforderungen**: Rangordnung von Verkaufszielen (Erfolgspotenzial → Markterfolg → finanzielle Ziele), Herausforderung 1: steigender Kostendruck, Herausforderung 2: steigende Kundenerwartungen ("Kundenzufriedenheitsfalle")
- **2.3 Vertriebsstrategie**: Definition (Panagopoulos & Avlonitis 2010), 5 Bestandteile (Ziele, Kunden, Konkurrenz, Preisbildung, Vertriebskanäle/-partner), Voraussetzungen (dynamisch, kommuniziert, gelebt)
- **2.4 Wettbewerbsvorteil Vertrieb**: Drei Voraussetzungen (Relevanz, Wahrnehmbarkeit, Nachhaltigkeit), zwei strategische Möglichkeiten (Kostenführerschaft vs. Differenzierung)

### Kapitel 3: Gestaltung der Vertriebskanäle (Folien 48–99)
- **3.1 Vertriebseinheiten**: Interne (Außendienst, Bürovertrieb, E-Commerce-Abteilung) vs. externe (Vertragshändler, Franchise, Vermittler, Zwischenhändler), eCommerce (B2B/B2C/C2B/C2C), eCommerce-Trends
- **3.2 Konfiguration**: 3 Dimensionen (Länge: direkt/indirekt, Breite: intensiv/selektiv/exklusiv, Tiefe: Kanalanzahl), Bestimmungsfaktoren
- **3.3 Bewertung der Effizienz**: (im Skript vorhanden, ab Folie ~85)

### Kapitel 4: CRM (im Skript vorhanden, ab ca. Folie 85)
- Grundbegriffe, fundamentale Ziele, Instrumente des CRM
- Evolutionspfad: Rattenjagd → Verkaufen mit System (CRM-Vertrieb)
- AI-CRM: 5 Wege wie KI CRM transformiert (Dateneingabe, Sentiment-Analyse, Datenintegrität, Predictive Lead-Scoring, kundenspezifische Empfehlungen)
- SAP-Kontext: Salesforce als direkter Wettbewerber im CRM-Markt (Folie 25)

---

---

## SAP Interne Dokumente: Schlüsselinhalte

> **Priorität**: Diese Dokumente sind Primärquellen mit internem SAP-Wissen, das nicht öffentlich verfügbar ist. Sie haben höhere Relevanz als öffentliche Quellen. Sie dürfen als Grundlage für inhaltliche Aussagen genutzt werden, sind aber vertraulich und werden **nicht direkt zitiert** – stattdessen als Grundlage für sachliche Aussagen verwenden.

### 1. `2026_BDC_GTM_Overview.pdf` — SAP Business Data Cloud GTM 2026 (Stand: 17. Mai 2026)

**Was es ist**: Internes GTM-Dokument der SAP Business Data Cloud (BDC) Einheit, zuletzt aktualisiert Mai 2026. Beschreibt SAP's Vertriebsstrategie und -ziele für das Data & AI Portfolio 2026.

**Kernaussagen für die Hausarbeit**:

- **SAP Business Suite = „North Star"**: SAP's strategisches Ziel ist eine vollintegrierte Cloud-Suite, in der ERP (Cloud ERP), Daten (SAP Business Data Cloud), KI (SAP Joule) und Line-of-Business-Anwendungen als ein System fungieren.
- **SAP Business Data Cloud (BDC)**: Zentrales Daten- und KI-Plattformprodukt 2026. Vereint SAP Datasphere, SAP Analytics Cloud, SAP BW/4HANA PCE und SAP Databricks unter einem Dach (Metric: Capacity Units). Preis: €X pro Monat für Y Capacity Units.
- **FY2026 Finanzziele (Data & AI)**:
  - Gesamtbudget Data & AI: 1,313 Mrd. EUR bei 40 % Wachstum
  - BDC Core Target: 622 Mio. bei 63 % Wachstum
  - Daten-Gesamt-Budget: 1,002 Mrd. EUR
  - BDC Core Renewal Rate: 91 % (starke Kundenbindung)
  - R4Q Pipeline Target BDC Core: 2,5 Mrd.; zum Start der Periode: nur 0,6 Mrd. vorhanden (Pipeline-Gap von 1,9 Mrd.)
- **Drei strategische Sales Plays 2026**:
  1. *Ignite AI with Business-Ready Data* (~6.847 Zielkunden, Enterprise + Corporate + Partner): Transformation bestehender Datasphere/SAC/BW-Kunden in BDC, Intelligent Packages in RISE-Deals verankern
  2. *Accelerate AI Data Gravity with Open Data Ecosystem* (~5.129 Zielkunden): Joint GTM mit Databricks, Google Cloud, Snowflake, AWS
  3. *Extend HANA Cloud with AI-Ready Business Data Fabric*: Migration von HANA on-premise nach HANA Cloud
- **Ratio-Based GTM Model**: Beim Verkauf von LoB Intelligent Packages werden BDC Capacity Units automatisch beigefügt (auto-attach). Schafft Cross-Selling-Mechanismus.
- **Intelligent Packages**: Analyse-Bundles je Line of Business — Cloud ERP Intelligence, Finance Intelligence, People Intelligence, Supply Chain Intelligence, Retail Intelligence, Revenue Intelligence, Consumer Products Intelligence u.a. — teilweise bereits GA, teilweise in Entwicklung (Q2–Q3 2026).
- **Premium Partnership Programm**: Strukturierte Joint-GTM-Partnerschaften mit Databricks, Google Cloud, Snowflake, Microsoft Azure, AWS. Spezifische KPIs (z.B. 300 neue Databricks-Aktivierungen, 12 Mio. Snowflake-Bookings, 250 Azure-Co-Sell-Deals).
- **Zielkundensegmente**: Enterprise (größtes Segment, z.B. 4.242 Accounts für Sales Play 1), Corporate, Partner-led. Aufgeteilt nach Regionen: AMER, EMEA, MEE, APAC.
- **SAP Joule**: KI-Orchestrator, der als „AI Agent" End-to-End Geschäftsprozesse über das gesamte SAP-Portfolio orchestriert (Finance Agents, SCM Agents, CX Agents, HR Agents, etc.).
- **Industrie-GTM**: Für 20+ Branchen eigene L1-Decks verfügbar (Automotive, Banking, Healthcare, Retail, Manufacturing, Oil&Gas, etc.).

---

### 2. `SAP Pricing Fundamentals.pdf` — SAP Business Models & Pricing Fundamentals (Q2 2026)

**Was es ist**: Internes Schulungsdokument für SAP-Mitarbeiter und Partner, das SAPs Lizenzmodelle, Preisstrategien und aktuelle Preise über das gesamte Portfolio erklärt. Wird quartalsweise aktualisiert.

**Kernaussagen für die Hausarbeit**:

- **Drei Lizenzmodelle**:
  - *Perpetual*: Einmalige Lizenzgebühr + jährliche Wartung. Für On-Premise (z.B. SAP ERP, S/4HANA on-prem, BusinessObjects).
  - *Subscription*: Laufzeit 3–5 Jahre, jährliche Gebühr inkl. Support. Standard für Cloud-Lösungen (S/4HANA Cloud, SAP Customer Experience, SuccessFactors, SAP Ariba, SAP BTP).
  - *Consumption/PAYG*: Keine Vorabverpflichtung, Abrechnung nach tatsächlicher Nutzung. Nur SAP BTP (Platform as a Service). Premium-Preise gegenüber Subscription.
- **Drei Deployment-Optionen**: On-Premise (Kunde verantwortlich), Private Cloud (SAP oder Hyperscaler IaaS, single-tenant), Public Cloud (SAP-managed SaaS, multi-tenant).
- **SAP Business Suite Packages** (neue Verpackung für Mid-Market/Net-new Kunden, buying-center-orientiert):
  - CFO/Finance: SAP Finance Base **€345/User/Monat**, Finance Premium €350
  - COO/Supply Chain: SAP Supply Chain Base **€345/User/Monat**, Premium €350
  - CPO/Procurement: SAP Strategic Procurement **€2.092/User/Monat**
  - CHRO/HCM: SAP Employee Central **€5/User/Monat**, SAP HCM Base €8, Premium €11
  - CRO/CX: SAP Sales Cloud **€118/User/Monat**, SAP Service Cloud €97, SAP Engagement Cloud **€48.000/Monat**
  - Dazu: SAP Business Data Cloud (Capacity Units) + SAP Joule (AI Units) + SAP BTP als Querschnitt
- **Fünf Monetisierungssäulen** (intern für jedes neue Produkt angewendet):
  1. Customer Value Proposition (Marktanalyse, Wettbewerb, Buying-Center)
  2. Unit of Monetization (z.B. User, GB, % of Revenue – muss skalieren, einfach auditierbar sein)
  3. Packaging (Suite vs. Standalone, breadth-of-appeal vs. willingness-to-pay)
  4. Floor Price (Minimum, unter dem SAP lieber keinen Deal abschließt)
  5. Pricing (value-based: Zahlungsbereitschaft des Kunden + Wettbewerbs-Benchmarking)
- **Cloud Pricing Evolution Framework** (internes Steuerungsinstrument):
  - Richtet AE-Vertriebsvergütung an Preisrealisierung aus
  - Floor Price: Minimum, bei Unterschreitung nur 0,5x ACV Quotengutschrift
  - Low-End Price (LEP): 25 % der Deals historisch darunter → 1,0x ACV-Gutschrift
  - Incentive Threshold 1 (IT1): 70 % der Deals darunter → 1,2x ACV-Gutschrift (Bonus)
  - Incentive Threshold 2 (IT2): 90 % der Deals darunter → 1,3x ACV-Gutschrift (höchster Bonus)
  - Ziel: Preisrealisierung verbessern und Margen sichern
- **SAP Business Data Cloud (BDC) Pricing**: Subscription-Modell, zwei Co-Requisites: (1) BDC Core SKU (Capacity Units, €X/Monat für Y CUs) + (2) Intelligent Package SKUs (SAP-managed: gleiche Metrik wie zugehörige LoB; Customer-Managed: Flat Fee + 1.000 BDC Core CUs enthalten).
- **SAP AI Pricing**: Base AI (Joule navigational/informational features) = kostenlos für alle Kunden. Premium AI = AI Units (Blöcke à 100, „use it or lose it", läuft am Jahresende ab). PUPM Packages (per User per Month) oder Consumption-based.
- **SAP BTP**: BTPEA (Cloud Credits, Commit-to-Consume, min. 12 Monate) oder PAYG (keine Verpflichtung, Flat Fee).
- **Services-Hierarchie**: Foundation Success Plan (inkl. in Cloud-Abo) → Advanced Success Plan (+20 % auf Subscription) → Max Success Plan (+30 %) für unternehmensweite Transformation.
- **Rabattsysteme**: Volume-based, Commitment-based, Attach-based (für bestehende Installbasis), Partner-based (Anreize für Reseller).

---

### 3. `SAP_CAS_for_SPM_Pricing_Overview_September_2025_v01_INTERNAL.pdf` — CAS für Sales Performance Management (Stand: Sept. 2025)

**Was es ist**: Internes Preisdokument für SAP Cloud Application Services (CAS) im Bereich Sales Performance Management (SPM). CAS ist SAPs Managed-Service-Angebot, das Kunden bei Betrieb und Verbesserung ihrer SPM-Lösungen unterstützt.

**Kernaussagen für die Hausarbeit**:

- **SAP SPM Portfolio**: Incentive Management (inkl. Territory & Quota, Advanced Workflow), Agent Performance Management (inkl. Agent Lifecycle Management, Agent Connection).
- **CAS-Pakete (Small/Medium/Large)** mit definierten SLAs:
  - 24/7 Service Desk, Priority 1 = 20 Minuten initiale Antwortzeit
  - Operate Tickets (laufende Ops) + Proactive Operations + Improve Tickets (Verbesserungen)
- **Jährliche Preise für Incentive Management (SSP mid, global, Englisch)**:
  - Size S: **90.499 EUR** / 102.264 USD
  - Size M: **169.859 EUR** / 191.941 USD
  - Size L: **507.804 EUR** / 573.819 USD
  - (Preise sind Gesamtpreise, nicht pro Lizenz; Laufzeit co-termed mit SPM-Cloud-Vertrag, mind. 12 Monate)
- **Regionale Unterschiede**: US-Preise höher (IM Size M: 224.072 EUR), APAC günstiger (IM Size M: 93.990 EUR)
- **Relevanz für Hausarbeit**: Zeigt, dass SAP den Vertriebsprozess der eigenen Kunden durch managed SPM-Tools (Incentive Management, Territory Planning) unterstützt und damit ein vollständiges Ökosystem für Vertriebssteuerung anbietet.

---

## Hinweise zur Nutzung der internen Dokumente

- **Nicht direkt zitieren** (vertraulich). Inhaltliche Aussagen daraus können als Faktenbasis dienen.
- **Mit öffentlichen Quellen untermauern**: Offizielle SAP-Pressemitteilungen, Geschäftsberichte, SAP.com, Analysten-Reports (Gartner) können die internen Fakten bestätigen und zitierbar machen.
- **Spezifische Zahlen** (wie 622M BDC Core Target, 91% Renewal Rate) stammen aus internen Dokumenten und sollten nur genannt werden, wenn eine öffentliche Quelle sie bestätigt oder sie als allgemeine Tendenz beschrieben werden.

---

## Workflow: Vor dem Schreiben

1. **Skript prüfen**: Welche Konzepte behandelt das Skript zu diesem Thema? (Folienbezug im CLAUDE.md oben nachschlagen)
2. **Konzepte identifizieren**: Diese Fachbegriffe und Frameworks sollen im Text vorkommen (z.B. bei Wettbewerbsvorteil: Relevanz, Wahrnehmbarkeit, Nachhaltigkeit; Differenzierung vs. Kostenführerschaft)
3. **Quelle suchen**: Über `papers-sources-mcp` nach belastbaren Quellen suchen, in `sources.bib` als BibTeX eintragen
4. **Text schreiben**: In `content.typ`, Kursbegriffe aus Skript verwenden, mit `@citationkey` zitieren

---

## Typst-Syntax

### Überschriften
```typst
= Kapitel 1 (Heading Level 1 - nummeriert 1.)
== Unterkapitel 1.1 (Heading Level 2 - nummeriert 1.1)
=== Unterunterkapitel (Heading Level 3)
```

### Zitate (BibTeX aus sources.bib)
```typst
Text mit Zitat @Homburg2016.
Text mit mehreren Zitaten @Homburg2016@Porter1998.
```

### Abkürzungen (acronyms.typ)
```typst
#acr("CRM")    // Erste Verwendung: Customer Relationship Management (CRM)
#acrs("CRM")   // Abkürzung: CRM
#acrl("CRM")   // Langform: Customer Relationship Management
#acrf("CRM")   // Erste Verwendung explizit erzwingen
```

### Neue Abkürzungen hinzufügen (in acronyms.typ):
```typst
#let acronyms = (
  CRM: "Customer Relationship Management",
  SAP: "Systems, Applications and Products in Data Processing",
  // ... weitere
)
```

### Absätze und Formatierung
```typst
Normaler Fließtext. Absatz durch Leerzeile.

#pagebreak()       // Seitenumbruch
#v(1em)            // Vertikaler Abstand
#box([Text])       // Verhindert Zeilenumbruch innerhalb
*fett*             // Fettschrift
_kursiv_           // Kursivschrift
```

### Aufzählungen
```typst
- Erster Punkt
- Zweiter Punkt
  - Unterpunkt

+ Nummerierter Punkt
+ Zweiter nummerierter Punkt
```

### Abbildungen
```typst
#figure(
  image("pictures/dateiname.png", width: 80%),
  caption: [Beschriftung der Abbildung],
) <fig-label>
```

---

## Quellen: sources.bib

Quellen werden als BibTeX in `sources.bib` eingetragen. Die Datei enthält bereits Standardliteratur aus früheren Projekten (nicht löschen, aber irrelevante werden im Literaturverzeichnis nur aufgeführt, wenn zitiert).

**Wichtige Basisliteratur aus dem Vorlesungsskript** (noch einzutragen):
- Homburg, Ch., Schäfer, H., Schneider, J. (2016): Sales Excellence – Systematic Sales Management, Berlin.
- Panagopoulos, N. G., Avlonitis, G. J. (2010): Performance implications of sales strategy, IJRM.
- Porter, M. (1998): Competitive Strategy, New York.

**BibTeX-Template für Buch**:
```bibtex
@book{Homburg2016,
  author    = {Homburg, Christian and Schäfer, Heiko and Schneider, Joachim},
  title     = {Sales Excellence: Systematic Sales Management},
  year      = {2016},
  publisher = {Springer Gabler},
  address   = {Berlin}
}
```

**Neue Quellen suchen**: Via `papers-sources-mcp` Tool nach peer-reviewed Artikeln und seriösen Quellen suchen. SAP-spezifische Quellen auch über offizielle SAP-Geschäftsberichte und Pressemitteilungen.

---

## Inhaltsverzeichnis der Hausarbeit

```
1. Einleitung
2. Ziele und Herausforderungen des Vertriebsmanagements bei der SAP SE
   2.1 Vertriebsziele im B2B-Enterprise-Softwaremarkt
   2.2 Aktuelle Herausforderungen
3. Vertriebsstrategie der SAP SE
   3.1 Strategische Ausrichtung: Solution Selling im Enterprise-Markt
   3.2 Kundensegmentierung und Zielmärkte
   3.3 Vertriebskanäle und Partnerökosystem
4. Vertriebsbezogene Wettbewerbsvorteile
   4.1 Wettbewerbsvorteil der SAP SE
   4.2 Wettbewerbsvorteile der Konkurrenz
5. Gestaltung der Vertriebskanäle
   5.1 Konfiguration des Vertriebssystems
   5.2 Direktvertrieb, Partnervertrieb und digitale Kanäle
   5.3 Bewertung der Kanaleffizienz
6. Customer Relationship Management bei SAP SE
7. Vertriebsbezogene Herausforderungen der nächsten fünf Jahre
8. Fazit
```

---

## Technische Hinweise

- **Kompilieren**: Typst-Datei `main.typ` kompilieren (z.B. `typst compile main.typ`)
- **Sprache**: Deutsch (de), Arial 12pt, Blocksatz
- **Seitenränder**: links 2cm, rechts 4cm, oben/unten 2.5cm
- **Zitationsstil**: IEEE (`#set cite(style: "ieee")`)
- **Wortlimit**: 2.000 Wörter – präzise und dicht formulieren, Redundanzen vermeiden
- **Bilder/Grafiken**: Erlaubt laut Aufgabenstellung, im `pictures/`-Ordner ablegen
