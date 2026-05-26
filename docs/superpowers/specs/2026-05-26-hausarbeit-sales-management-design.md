# Design Spec: Hausarbeit Sales Management – SAP SE
**Datum:** 2026-05-26  
**Autor:** Julian Konz  
**Datei:** `content.typ`, `sources.bib`, `acronyms.typ`

---

## 1. Aufgabe & Rahmenbedingungen

- DHBW Mannheim, Modul Sales Management, Dozent Florian Holz
- Abgabe: 22.07.2026, 18:00 Uhr, via Moodle als PDF
- **Maximale Wörteranzahl: 2.000 Wörter** (Summe aller Kapitel)
- Sprache: Deutsch
- Unternehmen: SAP SE, Walldorf
- Format: Typst → PDF (kompilieren via `typst compile main.typ`)

---

## 2. Struktur (Ansatz A: 6+2)

| Kap. | Titel | ~Wörter |
|------|-------|---------|
| 1 | Einleitung | 120 |
| 2 | Ziele und Herausforderungen des Vertriebsmanagements | 260 |
| 3 | Vertriebsstrategie der SAP SE | 300 |
| 4 | Vertriebsbezogene Wettbewerbsvorteile | 300 |
| 5 | Gestaltung der Vertriebskanäle | 280 |
| 6 | Customer Relationship Management | 240 |
| 7 | Größte vertriebliche Herausforderung der nächsten fünf Jahre | 220 |
| 8 | Fazit | 80 |
| | **Gesamt** | **~1.800** |

Keine tiefen Unterkapitel — maximal separate Absätze je Teilaspekt innerhalb eines Kapitels.

---

## 3. Schreibstil

- Kap. 1–5: dritte Person / analytisch-akademisch
- Kap. 6–7: erste Person (Aufgaben 5 & 6 bitten um persönliche Einschätzung)
- Kap. 8 (Fazit): neutral-zusammenfassend

---

## 4. Quellen

### 4.1 Primärquellen — SAP interne Dokumente (zitierbar)

| BibTeX-Key | Datei | Zitationshinweis |
|---|---|---|
| `SAPBDCGtm2026` | `2026_BDC_GTM_Overview.pdf` | Supplement = Seite |
| `SAPGtmExec2026` | `GTM 2026 Executive Overview.pptx` | Supplement = Slide-Nummer |
| `SAPPricing2026` | `SAP Pricing Fundamentals.pdf` | Supplement = Seite |
| `SAPCASSPM2025` | `SAP_CAS_for_SPM_Pricing_Overview_September_2025_v01_INTERNAL.pdf` | Supplement = Seite |

Alle vier werden als `@misc`-Einträge in `sources.bib` eingetragen.

### 4.2 Sekundärquellen — öffentliche SAP-Quellen (via Browser zu recherchieren)

- SAP Annual Report 2024 (Key: `SAPAnnualReport2024`)
- SAP.com Produktseiten (PartnerEdge, SAP Sales Cloud, SAP Joule)
- Gartner Magic Quadrant for ERP 2024 (falls über SAP-Website direkt zitierbar)

### 4.3 Theoretische Quellen

- Homburg, Schäfer, Schneider (2016): *Sales Excellence* — Key: `Homburg2016`
- Panagopoulos & Avlonitis (2010): *Performance implications of sales strategy* — Key: `Panagopoulos2010`
- Porter (1998): *Competitive Strategy* — Key: `Porter1998`

### 4.4 Nicht verwendbar

- Vorlesungsskripte (`context/Vorlesungsskripte/`) — nur zur inhaltlichen Orientierung, nie als Quelle

### 4.5 Zitationssyntax

```typst
#cite(<SAPBDCGtm2026>, supplement: [S. 5])
#cite(<SAPGtmExec2026>, supplement: [Folie 12])
```

---

## 5. Inhaltskonzept je Kapitel

### Kap. 1 — Einleitung
- SAP SE kurz vorstellen: Gründung 1972, HQ Walldorf, führender Anbieter von ERP- und Cloud-Software, >400.000 Kunden in >180 Ländern
- Relevanz des Vertriebs: hochkompetitiver B2B Enterprise-Softwaremarkt, Wettbewerber Salesforce/Oracle/Microsoft
- Einstieg in die Transformation: von on-premise ERP zu Cloud-Suite

### Kap. 2 — Ziele & Herausforderungen
- Zielhierarchie (Erfolgspotenzial → Markterfolg → finanzielle Ziele)
- Konkrete Finanzziele: Cloud ARR, Wachstum Data & AI Portfolio
- Herausforderung 1: Wachsender Preisdruck im Cloud-Markt (programmierte Rabattsysteme nötig)
- Herausforderung 2: Steigende Kundenerwartungen / Kundenzufriedenheitsfalle (hohe Renewal-Rate als Beweis, aber auch Druck)

### Kap. 3 — Vertriebsstrategie
- Theoretischer Rahmen: Definition Vertriebsstrategie nach Panagopoulos & Avlonitis (2010), 5 Bestandteile
- Solution Selling (vs. Transactional Selling): langfristige Beziehungen, komplexe Produkte, hoher CLV
- SAP Business Suite als North Star: Cloud ERP + BDC + Joule + LoB + BTP als integriertes Angebot
- Land-and-Expand: Einstieg über ERP, Expansion auf BDC / Intelligent Packages / AI Units
- Kundensegmentierung: Enterprise, Corporate, Partner-led; 20+ Branchen

### Kap. 4 — Wettbewerbsvorteile
- Theoretischer Rahmen: Porter (1998) — Differenzierung vs. Kostenführerschaft; 3 Kriterien (Relevanz, Wahrnehmbarkeit, Nachhaltigkeit)
- SAP setzt auf Differenzierung: End-to-End-Integration, hohe Switching Costs, 25.000+ Partner-Ökosystem
- SAP Joule: Base AI kostenlos für alle Kunden — Differenzierung vs. Salesforce/Microsoft (Aufpreis)
- Hyperscaler-Partnerschaften als Alleinstellungsmerkmal: offene Datenstrategie (kein Lock-in auf eine Cloud)
- Konkurrenz: Salesforce (CRM-First, Ease-of-Use, Einstein AI), Oracle (DB-Stärke, Finanzsektor), Microsoft (Dynamics 365 + Teams-Integration, niedrigere Einstiegshürde)
- Koopetition: Microsoft Azure gleichzeitig Partner (BDC Connect) und Wettbewerber (Dynamics 365 + Fabric)

### Kap. 5 — Vertriebskanäle
- 3 Konfigurationsdimensionen (Länge: direkt/indirekt; Breite: selektiv; Tiefe: Multi-Channel)
- Direktvertrieb: Enterprise AEs, buying-center-spezifisch (CFO, COO, CRO etc.)
- PartnerEdge-Programm: selektiver indirekter Vertrieb über zertifizierte Partner
- Neue digitale Kanäle: Hyperscaler-Marktplätze (AWS, GCP) als Go-to-Market-Kanal
- SAP Business Suite Packages: standardisierte Bundles für Mid-Market → verkürzt Verkaufszyklus
- Bewertung: Direktvertrieb = Kontrolle, aber Kosten; Partnervertrieb = Skalierung, aber Kontrollverlust; Trend zu Self-Service für kleinere Deals

### Kap. 6 — CRM (ich-Perspektive)
- SAP als CRM-Anbieter UND Anwender (SAP Sales Cloud, Service Cloud, CX-Suite)
- KI-gestütztes CRM via SAP Joule: Predictive Lead Scoring, Revenue Intelligence, 360°-Kundensicht
- Bedeutung: CRM als strategisches Steuerungsinstrument für Pipeline-Health, CLV, Churn-Prävention
- Persönliche Einschätzung: CRM für SAP unverzichtbar — integrierte Kundendaten aus S/4HANA + CX-Suite sind der Kern der Solution-Selling-Fähigkeit
- Paradoxie: SAP konkurriert mit Salesforce im CRM-Markt, während viele SAP-Kunden Salesforce nutzen

### Kap. 7 — Herausforderung 5 Jahre (ich-Perspektive)
- KI-Monetarisierung & Wertnachweis: Intelligent Packages noch in Entwicklung → Kunden kaufen KI-Versprechen vor Produktreife
- Hyperscaler-Koopetition: Microsoft/Google/AWS gleichzeitig Partner und Konkurrenten — Grenzen verschieben sich
- Pipeline-Execution-Druck: massiver Gap zwischen Ziel und vorhandener Pipeline bei neuen Produkten
- Partner-Enablement als Skalierungsvoraussetzung: ohne skalierende Partner kein Erreichen der Wachstumsziele
- Persönliche Einschätzung: Die größte Herausforderung ist die KI-Monetarisierung — Kunden erwarten sofortige, messbare ROI-Nachweise für KI-Features, während viele Intelligent Packages noch entwickelt werden

### Kap. 8 — Fazit
- SAP ist durch Differenzierungsstrategie, tiefen Systemintegrationsgrad und breites Ökosystem gut positioniert
- Execution (Pipeline, Partner-Enablement, Produktreife) ist die kritische Variable für die nächsten Jahre
- KI als Schlüssel zu langfristiger Wettbewerbsfähigkeit

---

## 6. Typst-Implementierungsdetails

### acronyms.typ — neue Kürzel
```typst
ERP: "Enterprise Resource Planning",
CRM: "Customer Relationship Management",
B2B: "Business-to-Business",
ARR: "Annual Recurring Revenue",
BDC: "SAP Business Data Cloud",
BTP: "SAP Business Technology Platform",
AE: "Account Executive",
GTM: "Go-to-Market",
CLV: "Customer Lifetime Value",
LoB: "Line of Business",
```

### sources.bib — neue Einträge
- 4 interne SAP-Dokumente als `@misc` (author = {{SAP SE}}, howpublished = {Interne Unterlage})
- SAP Annual Report 2024 als `@misc` oder `@online`
- Homburg 2016 als `@book`
- Panagopoulos 2010 als `@article`
- Porter 1998 als `@book`

---

## 7. Implementierungsreihenfolge

1. Öffentliche SAP-Quellen recherchieren (Browser) + Geschäftsbericht-Daten sammeln
2. `sources.bib` aktualisieren (interne + öffentliche + theoretische Quellen)
3. `acronyms.typ` aktualisieren
4. `content.typ` vollständig schreiben (TODOs ersetzen)
5. `typst compile main.typ` zum Testen
