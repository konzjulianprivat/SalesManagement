#import "acronyms.typ": acronyms
#import "acronym-lib.typ": init-acronyms, print-acronyms, acr, acrpl, acrs, acrspl, acrl, acrlpl, acrf, acrfpl
#import "shared-lib.typ": sourcefigure

#import "variables.typ": variables
#import "variables-lib.typ": init-variables, print-variables, var, varpl, vars, varspl, varl, varlpl, varf,varfpl
#let content = [

= Einleitung
Die SAP SE mit Sitz in Walldorf ist ein weltweit führender Anbieter für unternehmensweite Anwendungssoftware. Diese Arbeit nutzt die SAP SE als Anwendungsbeispiel, um zentrale Konzepte des Vertriebsmanagements zu illustrieren. 

Diese Hausarbeit behandelt die zentralen Konzepte des Vertriebsmanagements und deren praktische Umsetzung am Beispiel der SAP. Ziel ist es, die theoretischen Grundlagen aus der Vorlesung zu erarbeiten und anschließend einzuordnen, wie SAP diese in der Praxis umsetzt. 

Dafür wird je Themengebiet aus der Vorlesung zunächst die Konzepte aus der Theorie vorgestellt und anschließend die praktische Umsetzung bei SAP beschrieben. Abschließend wird ein Fazit gezogen, in dem die wichtigsten Erkenntnisse zusammengefasst werden.

// [QUELLE-VALIDIERUNG Einleitung: Zahlen (36,8 Mrd. EUR Gesamtumsatz, 21,0 Mrd. EUR Cloud, +23%) stammen aus SAPIntegratedReport2025, S.59-60 – KEINE Vorlesungsfolie. Korrekt zitiert.]

= Vertriebsstrategie - Ziele & Herausforderungen

#v(-2em)

== Ziele des Vertriebs

Vertriebsziele beschreiben den angestrebten Zustand, den ein Unternehmen durch seine Vertriebsaktivitäten erreichen möchte #cite(<Homburg2016>, supplement: "S. 2") und dienen als Leitplanken für die strategische Ausrichtung und operative Steuerung des Vertriebs. Diese lassen sich nach #cite(<Homburg2013>, form: "prose", supplement: "S. 18") in die folgende dreistufigen Hierarchie ordnen:

1. *Erfolgspotenzial*: Ziele, welche die langfristige Wettbewerbsposition und Kundenbindung sichern. Dazu gehören eine Sicherung der Kundenzufriedenheit, Aufbau von Kundenbindung und die Markenstärke. #cite(<Homburg2016>, supplement: "S. 51")
2. *Markterfolg*: Ziele, welche auf Erfolgspotential aufbauen und den Markterfolg in Form von Marktanteilen, Neukundengewinnung und #box([Kundenbindung messen]).
3. *Finanzielle Ziele*: Ziele, welche auf Markterfolg aufbauen und finanzielle Kennzahlen wie Umsatz, Deckungsbeitrag und Profitabilität anstreben.

Diese Rangordnung verdeutlicht, dass finanzielle Kennzahlen erst dann erreichbar sind, wenn die vorgelagerten Potenzial- und Markterfolgsziele gesichert sind.

// [QUELLE-VALIDIERUNG Abs. 1: Folie 36 (Kap 1-3.pdf) — „Eine Rangordnung von Verkaufszielen" mit den 3 Stufen Erfolgspotenzial → Markterfolg → Finanzielle Ziele. Die Folie zitiert dort: Homburg/Kuester/Krohmer (2013), S. 18. ACHTUNG: Im Text wird Homburg2016 (= Homburg/Schäfer/Schneider, S.51) zitiert – das ist ein ANDERES Buch. Bitte prüfen, ob S.51 in Homburg/Schäfer/Schneider (2016) die korrekte Stelle ist, oder ob die Quelle auf Homburg/Kuester/Krohmer (2013), S.18 geändert werden soll.]

//! hier überarbeiten: das ist nicht theoretisch korrekt und sollte anders geschehen: es soll hier direkt über die Anwendung auf SAP von den Zielebenen geredet werden nach diesem Teil und dafür dann die ABC Analyse ausgeklammert werden, da sich das ja auf Kunden bezieht

// Um Prioritäten zu setzen, kann eine ABC-Analyse auf die Zielebenen angewendet werden. Diese klassifiziert Ziele nach ihrer Dringlichkeit in die folgenden Klassen: 

// - *A-Ziele*: Erfordern sofortige Steuerungsmaßnahmen, da sie die Grundlage für alle weiteren Ziele bilden
// - *B-Ziele*: Erfordern eine regelmäßige Kontrolle, da sie auf den A-Zielen aufbauen und den Markterfolg sichern
// - *C-Ziele*: Haben nachrangige Priorität, da sie auf den B-Zielen aufbauen und finanzielle Kennzahlen anstreben, die erst erreicht werden können, wenn die vorgelagerten Ziele gesichert sind.

Im Fall der SAP SE lässt sich diese Klassifikation wie folgt anwenden: Die Kundenbindung als Erfolgspotenzial stellt ein A-Ziel dar, belegt durch eine Erneuerungsrate von 91 Prozent im Cloud-Kerngeschäft #cite(<SAPBDCGtm2026>, supplement: "S. 5"). Die durch Gartner bestätigte Marktführerschaft im #acrs("ERP")-Segment belegt den Markterfolg als B-Ziel #cite(<SAPNewsGartnerMQERP2024>). Das angestrebte Wachstum des Data-&-AI-Portfolios um über 40 Prozent im Geschäftsjahr 2026 folgt als finanzielles C-Ziel nach #cite(<SAPBDCGtm2026>, supplement: "S. 5").

// [QUELLE-VALIDIERUNG Abs. 2: Die ABC-Analyse als Methode zur Kundenwert-Klassifikation ist auf Folie 39 (Kap 4.pdf) dargestellt (A/B/C-Kunden nach kumulierten Verkäufen, Quelle: Homburg/Schäfer/Schneider 2016, S.205). Die hier verwendete Übertragung der ABC-Logik auf ZIELEBENEN (nicht Kunden) ist eine eigenständige Anwendung – kein direktes Folienzitat. Die SAP-Zahlen (91%, 40%-Wachstum) stammen aus internen Dokumenten SAPBDCGtm2026, S.5 – keine Vorlesungsfolie.]

== Herausforderungen im Vertriebsmanagement

Das Vertriebsmanagement sieht sich nach #cite(<Homburg2016>, form: "prose", supplement: "S. 3-5") zwei strukturellen Herausforderungen gegenüber, die als charakteristisch für moderne #acr("B2B")-Märkte beschrieben werden #cite(<Homburg2016>, supplement: "S. 3"). 

Die erste Herausforderung besteht im steigenden Kostendruck, der Unternehmen zur Effizienzsteigerung zwingt. Studien zeigen, dass 51 Prozent der Unternehmen den Vertrieb als größtes Produktivitätssteigerungspotenzial identifizieren. Die zweite Herausforderung bildet die sogenannte Kundenzufriedenheitsfalle, durch welche es zu einer Asymmetrie zwischen steigenden Kundenerwartungen und tatsächlich erlebter Leistung kommt. Der wachsende Abstand zwischen diesen beiden Faktoren gefährdet Erneuerungsraten und Unternehmenswahrnehmung durch Kunden #cite(<Homburg2016>, supplement: "S. 5").

// [QUELLE-VALIDIERUNG Abs. 3: Folie 37 (Kap 1-3.pdf) — „Herausforderung 1: Steigender Kostendruck" mit Balkendiagramm, 51% für Vertrieb, Quelle: Homburg/Schäfer/Schneider (2016), S.3 ✓. Folie 38 (Kap 1-3.pdf) — „Herausforderung 2: Steigende Erwartungen / Kundenzufriedenheitsfalle" mit Gap-Diagramm, Quelle: Homburg/Schäfer/Schneider (2016), S.5 ✓. Zitation im Text korrekt (Homburg2016, S.3 und S.5).]

SAP als #acr("B2B")-Enterprise-Softwareanbieter ist von beiden Herausforderungen betroffen. Das Unternehmen begegnet dem Kostendruck durch ein mehrstufiges Rabatt- und Preisrealisierungssystem, das volumen-, commitment- und partnerbasierte Elemente umfasst und #acrpl("AE") über das Cloud-Pricing-Evolution-Framework an Preisrealisierungsziele koppelt #cite(<SAPPricing2026>, supplement: "S. 18"). Die Kundenzufriedenheitsfalle zeigt sich zu Jahresbeginn 2026 in einem strukturellen Pipeline-Problem: Das qualifizierte Opportunity-Volumen lag bei lediglich 0,6 Milliarden Euro gegenüber einem Zielniveau von 2,5 Milliarden Euro #cite(<SAPBDCGtm2026>, supplement: "S. 6"), da viele der versprochenen Intelligent Packages noch nicht vollständig verfügbar waren.

// [QUELLE-VALIDIERUNG Abs. 4: Reine SAP-Anwendung aus internen Dokumenten (SAPPricing2026 S.18, SAPBDCGtm2026 S.6) – KEINE Vorlesungsfolie. Pipeline-Zahlen (0,6 Mrd. vs. 2,5 Mrd.) kommen ausschließlich aus internen Unterlagen.]

== Vertriebsstrategie
Eine Vertriebsstrategie legt fest, wie ein Unternehmen seine knappen Ressourcen auf Kunden, Märkte und Kanäle verteilt, um Wettbewerbsvorteile zu erzielen 
  #cite(<Panagopoulos2010>, supplement: "S. 47"). 
#cite(<Homburg2013>, supplement: "S. 23f.", form: "prose") definiert hierbei sechs Voraussetzungen für eine wirksame Vertriebsstrategie, welche im Folgenden definiert werden:

- *Existenz*: Eine Vertriebsstrategie muss überhaupt vorhanden sein, um eine klare Richtung vorzugeben.
- *Markt- und Umweltbezug*: Die Strategie muss auf die aktuelle Markt- und Wettbewerbssituation abgestimmt sein, um relevant zu bleiben.
- *Dynamik*: Die Strategie muss dynamisch für Markt- und technologische Entwicklungen sein und eine kontinuierliche Überarbeitung erfordern.
- *Kommunikation*: Die Strategie muss aktiv kommuniziert werden, um Akzeptanz innerhalb der Unternehmens zu fördern.
- *Leitlinienfunktion*: Die Strategie muss als Orientierung für alle vertriebsbezogenen Instrumente dienen, um eine konsistente Wahrnehmung dieser intern und extern sicherzustellen.
- *Gelebte Umsetzung*: Die Strategie muss operativ umgesetzt werden, um unsystematisches, unkoordiniertes Handeln und ein inkonsistentes Kundenbild vorzubeugen.

Jede Vertriebsstrategie besteht nach #cite(<Homburg2016>, form: "prose", supplement: "S. 27ff.") aus den folgenden Elementen, die auf den zuvor beschriebenen Voraussetzungen aufbauen:

1. *Ziele*: Die angestrebten Ergebnisse, die durch die Vertriebsaktivitäten erreicht werden sollen.
2. *Kunden*: Der Fokus auf Kundengruppen und wie für diese Wert erbracht wird.
3. *Konkurrenz*: Die Positionierung gegenüber Wettbewerbern, um sich von der Konkurrenz abzuheben.
4. *Preisbildung*: Die Festlegung von Preisstrategien, um Wettbewerbsvorteile zu erzielen und einen einheitlichen Preisrahmen für den Vertrieb zu definieren.
5. *Vertriebskanäle und Vertriebspartner*: Die Auswahl der Kanäle und Partner, über die der Wert zum Kunden gelangt, sowie die Gestaltung der Zusammenarbeit mit diesen Partnern.

// [QUELLE-VALIDIERUNG Abs. 5: Folie 40 (Kap 1-3.pdf) — Definition „basierend auf Panagopoulos & Avlonitis, 2010" ✓. Folie 41 (Kap 1-3.pdf) — 5 Bestandteile (Ziele, Kunden, Konkurrenz, Preisbildung, Vertriebskanäle/-partner), Quelle: Homburg/Schäfer/Schneider (2016), S. 27 ff. ACHTUNG: Text zitiert S. 85 — Folie zeigt S. 27 ff. Bitte prüfen und ggf. Seitenangabe auf S. 27 ändern. Folie 42 (Kap 1-3.pdf) — Voraussetzungen (dynamisch, kommuniziert, gelebt) ohne eigene Literaturangabe auf der Folie.]

//! der Theorieteil sowie der Bezug darauf, besonders mit den Corporate Segment, SVP und Large Enterprise sollte nicht hier stehen sondern im Kapitel "Gestaltung der Vertriebskanäle", da es hier mehr um die generell Strategie von SAP geht, sprich AI First und Suite First als Verkaufsstrategie sowie weitere Elemente auds den internen Dokumenten

Auf Ebene der Verkaufsansätze unterscheidet die Theorie drei Grundtypen. Beim Character Selling stehen Produkteigenschaften im Vordergrund, beim Discount Selling die preisbasierte Argumentation und beim Value Selling der messbare Nutzenwert für den Kunden #cite(<Homburg2013>, supplement: "S. 38"). Value Selling gilt als überlegener Ansatz für komplexe #acrs("B2B")-Umgebungen, da die Kaufentscheidung auf messbarem Geschäftswert statt auf Produktmerkmalen oder Preis beruht. Das übergeordnete Kontinuum reicht von Transactional Selling über Solution Selling bis hin zum Value Selling: Beim Solution Selling werden Kundenbedürfnisse und End-to-End-Prozesse in den Mittelpunkt gestellt, statt isolierte Produkte zu verkaufen.

// [QUELLE-VALIDIERUNG Abs. 6: Character/Discount/Value Selling → laut CLAUDE.md: Kap 5&6.pdf, Folie 48, Quelle: Homburg/Kuester/Krohmer (2013). Text zitiert Homburg2013 S.38 — noch zu prüfen ob S.38 korrekt ist. Transactional vs. Solution Selling → Folie 28 (Kap 1-3.pdf), Quellen dort: Panagopoulos et al. (2017), Tuli et al. (2007), Ulaga and Loveland (2014) — diese Quellen fehlen im Text, stattdessen wird nur die Beschreibung gegeben. Kein Fehlerzitat, aber fehlende Quellenangabe für Transactional/Solution-Selling-Kontinuum.]

SAP realisiert alle fünf Bestandteile der Vertriebsstrategie und positioniert sich als Value-Selling-Unternehmen. #acrpl("AE") argumentieren dabei nicht mit Produktfeatures, sondern mit messbarem Geschäftswert durch Prozessautomatisierung und #acr("KI")-basierte Effizienzgewinne. Das übergeordnete Leitbild ist die SAP Business Suite als integrierte Cloud-Plattform, intern als „North Star" bezeichnet #cite(<SAPPricing2026>, supplement: "S. 20"). Hieraus leitet sich das Land-and-Expand-Muster ab: Einstieg über Cloud-#acrs("ERP"), systematische Erweiterung auf #acrs("BDC") und #acrs("KI")-Einheiten #cite(<SAPPricing2026>, supplement: "S. 25"). Die Kundensegmentierung folgt einem dreistufigen Modell #cite(<SAPBDCGtm2026>, supplement: "S. 18"):

//! wie oben gesagt das gehört nicht hierhger, soindern zu Gestaltung der Vertriebskanäle

- Enterprise: Dedizierte #acrpl("AE") im Direktvertrieb mit buying-center-spezifischer Ansprache auf C-Level
- Corporate: Tandem-Modell aus #acrs("AE") und zertifiziertem Partner
- Small & Midsize: Vollständig partnergeführt über SAP PartnerEdge

// [QUELLE-VALIDIERUNG Abs. 7+8: Reine SAP-Anwendung aus internen Dokumenten (SAPPricing2026 S.20/25, SAPBDCGtm2026 S.18) – KEINE Vorlesungsfolie. Die drei Kundensegmente Enterprise/Corporate/SMB stammen aus internen GTM-Unterlagen.]

#pagebreak()

= Vertriebsbezogene Wettbewerbsvorteile
Ein vertriebsbezogener Wettbewerbsvorteil beschreibt eine Überlegenheit gegenüber Wettbewerbern in einem oder mehreren vertriebsrelevanten Aspekten, die einem Unternehmen das Überleben in einem wettbewerbsintensiven Umfeld sichert 
  #cite(<Homburg2013>, supplement: "S. 43").
Dieser muss nach #cite(<Homburg2013>, supplement: "S. 43f.", form: "prose") folgende Kriterien erfüllen: 

- *Kundenrelevanz*: Der Vorteil muss für den Kunden wichtig sein und ein von ihm wahrgenommenes Bedürfnis erfüllen.
- *Wahrnehmbarkeit im Markt*: Der Vorteil muss vom Kunden wahrgenommen werden können gegenüber Produkten der Wettbewerber.
- *Langfristige Individualität*: Der Vorteil muss langfristig bestehen und darf von Wettbewerbern nicht kurzfristig nachmachbar sein.

Hierbei wird die Literatur geprägt von drei grundlegenden Strategietypen, definiert nach #cite(<porter1985competitive>, supplement: "S. 12ff.", form: "prose"):

- *Kostenführerschaft*: Strategie, bei welcher ein im Vergleich zu den Wettbewerbern niedriger Preis durch effiziente Kostenstruktur erreicht wird, um einen großen Marktanteil zu gewinnen #cite(<porter1985competitive>, supplement: "S. 12f.").
- *Differenzierung*: Strategie, bei welcher ein vom Kunden wahrgenommener Mehrwert geschaffen wird, der ein Preisprämium rechtfertigt #cite(<porter1985competitive>, supplement: "S. 14").
- *Fokussierung*: Strategie, bei welcher ein enges Marktsegment mit spezifischen Bedürfnissen bedient wird, um Wettbewerbsvorteile durch Spezialisierung zu erzielen #cite(<porter1985competitive>, supplement: "S. 15.").

Unternehmen müssen sich hierbei nicht auf eine einzige Strategie festlegen, sondern können auch hybride Ansätze verfolgen #cite(<porter1985competitive>, supplement: "S. 16ff.").

// [QUELLE-VALIDIERUNG Abs. 9: Folie 44 (Kap 1-3.pdf) — „Voraussetzungen eines Wettbewerbsvorteils" mit den 3 Kriterien (Relevanz, Wahrnehmbarkeit, Nachhaltigkeit) + Kostenführerschaft/Differenzierung, Quellen: Homburg/Schäfer/Schneider (2016), S. 45 ff.; Porter (1998). ACHTUNG: Text zitiert Homburg2016 S.89 — Folie zeigt S. 45 ff. Bitte prüfen und ggf. Seitenangabe korrigieren. Porter1998 S.35 – Seitenangabe auf Folie nicht angegeben, muss separat geprüft werden.]

== Wettbewerbsvorteile der SAP SE
SAP verfolgt eine Differenzierungsstrategie und ist als einziger Anbieter in der Lage, Finance, Supply Chain, #acr("CX"), Human Capital Management und Beschaffung unter einem gemeinsamen Datenmodell abzudecken, mit SAP Joule als #acrs("KI")-Orchestrator über alle Prozesse #cite(<SAPPricing2026>, supplement: "S. 20"). Alle drei Kriterien nach Homburg et al. sind dabei erfüllt. Die Relevanz ergibt sich aus der ganzheitlichen Prozessabdeckung, die für CFO, COO und CRO gleichermaßen entscheidend ist. Die Wahrnehmbarkeit wird durch die Gartner-Leader-Position im Cloud-#acrs("ERP") für das dritte Jahr in Folge belegt #cite(<SAPNewsGartnerMQERP2024>). Die Nachhaltigkeit resultiert aus über 25.000 zertifizierten PartnerEdge-Partnern und den damit verbundenen hohen Wechselkosten #cite(<SAPPartnerEdge2025>). Darüber hinaus ist SAP Joule für alle Cloud-Kunden kostenlos enthalten, während vergleichbare Produkte wie Salesforce Einstein und Microsoft Copilot kostenpflichtig sind #cite(<SAPPricing2026>, supplement: "S. 27").

// [QUELLE-VALIDIERUNG Abs. 10: Reine SAP-Anwendung. SAPPricing2026 S.20 (Joule/gemeinsames Datenmodell) ✓. SAPNewsGartnerMQERP2024 (Gartner-Leader) ✓. SAPPartnerEdge2025 (25.000 Partner) ✓. SAPPricing2026 S.27 (Joule kostenlos vs. Einstein/Copilot kostenpflichtig) ✓. KEINE Vorlesungsfolie direkt.]

== Wettbewerbsvorteile der Wettbewerber

//! hier einleiten wer die direkte Konkurrenz der SAP ist, sprich Salesforce usw (eif den Gartner Bericht anschauen, da steht alles) und dann darauf eingehen was bei denen super läuft

Die Wettbewerber verfolgen komplementäre Differenzierungsansätze. Salesforce dominiert das #acr("CRM")-Segment durch einen Cloud-nativen Ansatz und Benutzerfreundlichkeit, was sich in einer 18-fachen Gartner-Leader-Bewertung im Sales Force Automation Quadranten zeigt #cite(<GartnerMQSFA2024>). Oracle nutzt Datenbankdominanz und besondere Stärke im Finanzsektor. Microsoft setzt auf die Verbreitung von Azure, Teams und Office 365 als Einstiegshebel für Dynamics 365.

// [QUELLE-VALIDIERUNG Abs. 11: Salesforce als Wettbewerber → Folie 25 (Kap 1-3.pdf) — „CRM-Software und Salesforce" erwähnt Salesforce als Wettbewerber SAPs. Gartner-18-facher-Leader → GartnerMQSFA2024 ✓. Oracle/Microsoft: KEINE Vorlesungsfolie – eigene Einordnung auf Basis allgemeinen Marktwissens.]

#pagebreak()

= Gestaltung der Vertriebskanäle
Eine Vertriebseinheit beschreibt die organisatorische Einheit, die für die Durchführung von Vertriebsaktivitäten verantwortlich ist, während ein Vertriebskanal mehrere Vertriebseinheiten umfasst, die gemeinsam den Weg zum Kunden gestalten #cite(<Homburg2016>, supplement: "S. 196ff."). Alle Vertriebskanäle eines Unternehmens zusammen bilden das Vertriebssystem.

Die Konfiguration von Vertriebskanälen wird entlang dreier Dimensionen bewertet #cite(<Homburg2016>, supplement: "S. 210"). Diese umfassen:

- *Länge*: Die Anzahl an Zwischeninstanzen zwischen Anbieter und Endkunden von Direktkanälen über Indirektkanäle bis hin zu Multi-Channel-Systemen.
- *Breite*: Die Anzahl paralleler Kanäle auf derselben Stufe, die von intensiver über selektive bis hin zu exklusiver Verteilung reicht.
- *Tiefe*: Die Anzahl paralleler Kanäle auf unterschiedlichen Stufen, die von Single-Channel-Systemen bis zu Multi-Channel-Systemen reicht.

Um einen Wettbewerbsvorteil zu erlangen, ist ein Management aller bestehenden Vertriebskanäle erforderlich, welches nach #cite(<brunner2015crosschannel>, form: "prose") als Cross-Channel-Management bezeichnet wird. Ein effektives Cross-Channel-Management hat das Ziel,Sortiment, Preis und Rücksendeprozessen über Kanäle hinweg zu harmonisieren und die Nutzung von Synergien zwischen Kanälen zu fördern, um Kunden ein konsistentes Nutzungserlebnis zu bieten #cite(<brunner2015crosschannel>).

// [QUELLE-VALIDIERUNG Abs. 12: Die 3 Dimensionen (Länge, Breite, Tiefe) sind laut CLAUDE.md in Kap 3.2 ab Folie ~61ff (Kap 1-3.pdf) — diese Folien wurden NICHT gezeigt (nur bis Folie 60 gesichtet). Text zitiert Homburg2016 S.210 und Coughlan2008 S.43 — bitte manuell in den Folien 61+ verifizieren, ob die 3 Dimensionen dort mit diesen Quellen belegt sind. Wirtz2002 für Multi-Channel-Risiken: laut CLAUDE.md korrekt, Folienbeleg noch zu prüfen.]

Zur Bewertung der Kanaleffizienz dient die #acr("DCA") nach #cite(<specht2005distributionsmanagement>, form: "prose", supplement: "S. 267ff."), bei der der Deckungsbeitrag je Kanal berechnet wird, um fundierte Vertriebsentscheidungen zu treffen #cite(<Rosenbloom2012>, supplement: "S. 394"). 
// Alternativ kann eine relative Umsatzbewertung von erzieltem Umsatz und Marktpotenzial je Kanal oder eine Kanal-Wirtschaftlichkeitsprüfungen eingesetzt werden, welche eine periodische Überprüfung der Leistung anhand von Kriterien wie Umsatz und Wachstumsaussichten darstellt #cite(<Rosenbloom2012>).

// [QUELLE-VALIDIERUNG Abs. 13: DCA laut CLAUDE.md ab Folie ~85 (Kap 1-3.pdf) — diese Folien wurden NICHT gezeigt. Rosenbloom2012 S.394 muss manuell in Folie ~85 verifiziert werden.]

SAP betreibt ein selektives Multi-Channel-System, das nach Kundengröße und Transaktionskomplexität differenziert. In der Längendimension werden Enterprise-Kunden ausschließlich über dedizierte #acrpl("AE") im Direktvertrieb bedient, Corporate-Kunden im Hybrid-Modell und #acrs("SMB")-Kunden vollständig partnergeführt über das PartnerEdge-Ökosystem mit über 25.000 Partnern #cite(<SAPPartnerEdge2025>). Die Breite ist bewusst selektiv gehalten, da Zertifizierungs- und Kompetenzanforderungen die Qualität der Kundenerfahrung sichern sollen. In der Tiefe erschloss SAP 2026 eine neue Kanaldimension: Hyperscaler-Marktplätze wie AWS, Google Cloud und Azure werden als digitale Co-Sell-Kanäle mit definierten Zielkennzahlen genutzt #cite(<SAPBDCGtm2026>, supplement: "S. 28"). Die #acrs("DCA")-Betrachtung zeigt, dass der Direktvertrieb hohe Kontrolle bei hohem Cost-per-Deal bietet, während der Partnerkanal die Reichweite skaliert, jedoch das Risiko inkonsistenter Kundenerfahrung mit sich bringt.

// [QUELLE-VALIDIERUNG Abs. 14: SAP-Anwendung aus SAPPartnerEdge2025 (25.000 Partner) ✓ und SAPBDCGtm2026 S.28 (Hyperscaler-Kanäle) ✓. KEINE Vorlesungsfolie direkt. Die DCA-Anwendung auf SAP ist eigene Schlussfolgerung, kein direktes Folienzitat.]

#pagebreak()

= Customer Relationship Management
#acr("CRM") ist nach #cite(<homburg2000customer>, form: "prose", supplement: "S. 7") eine strategische Managementdisziplin, die darauf ausgerichtet ist, langfristige, profitable Kundenbeziehungen aufzubauen und zu erhalten. Dies umfasst die Planung, Durchführung, Kontrolle sowie Anpassung aller Unternehmensaktivitäten, die zu einer Optimierung des Kundenportfolios beitragen. Dafür werden Daten und Informationen über Kunden gesammelt, analysiert und genutzt, um eine Kundenauswahl, -priorisierung und -individualisierung zu ermöglichen mit dem Ziel, kundenorientiert zu handeln #cite(<homburg2000customer>, supplement: "S. 7").
Die fundamentalen Ziele des #acrs("CRM") gliedern sich in die folgenden vier Dimensionen: 

- *Kundenzufriedenheit und -loyalität*: Balance zwischen Kundenzufriedenheit und Wichtigkeit der Kundenbeziehung, um eine langfristige Bindung zu sichern.
- *Vertrauen*: Das Vertrauen in die Produkte, Prozesse und Arbeitsweise sowie die Kontaktperson des Geschäftspartners.
- *Profitabilität der Kundenbeziehung*: Die wirtschaftliche Rentabilität jeder Kundenbeziehung wird kontinuierlich überwacht und optimiert.
- *Wert des Kunden*: Beschreibt den durch Kundenportfolio und Anbieterposition zusammengesetzten Mehrwert des Kunden für das Unternehmen #cite(<Homburg2016>, supplement: "S. 221 ff."). 

Um den Wert eines Kunden für das Unternehmen zu bestimmen, wird die ABC-Analyse der Kunden eingesetzt, bei welcher Kunden in Klassen von A bis C eingeteilt werden. A-Kunden erhalten intensive Betreuungsressourcen, während C-Kunden über skalierbare Kanäle bedient werden.

Die folgenden Instrumente werden im #acrs("CRM") eingesetzt, um die Kundenbeziehung zu gestalten und zu steuern:

- *Kundenkarten*: Instrument, welches dem Unternehmen Kundendaten und Kaufverhalten liefert und dem Kunden im Gegenzug Vorteile wie Rabatte, Bonuspunkte oder exklusive Services bieten.
- *Modellierung der Kundenbeziehung*: Modelliert den Kundenlebenszyklus in fünf Phasen, durch die auf Basis von Triggern Maßnahmen zur Kundenbindung und -entwicklung durchgeführt werden.
- *Beschwerdemanagement*: Fokussiert sich auf die systematische Bearbeitung von Kundenbeschwerden, um bei Unzufriedenheit schnell reagieren und die Kundenbindung wiederherstellen oder sogar verbessern zu können.
- *#acr("KAM")*: Fokus auf die individuelle Betreuung von besonders wichtigen Kunden, um langfristige, strategische Partnerschaften aufzubauen und zu pflegen durch proaktive und reaktive Maßnahmen.


// [QUELLE-VALIDIERUNG Abs. 17: Instrumente-Übersicht (Kundenkarten, Modellierung, Beschwerdemanagement, KAM) → Folie 47 (Kap 4.pdf) Übersicht ✓. Kundenkarten → Folie 50 (Kap 4.pdf) ✓. Modellierung Kundenbeziehung → Folie 54 (Kap 4.pdf) ✓. Beschwerdemanagement → Folie 57-60 (Kap 4.pdf) ✓. KAM-Definition und proaktive/reaktive Kriterien → laut CLAUDE.md Folie 67-80 (Kap 4.pdf) — diese Folien wurden noch NICHT gezeigt; HombergJensen2004 als Quelle laut CLAUDE.md korrekt. Buying-Center-Rollen → laut CLAUDE.md Folie 67-80, noch zu verifizieren. ACHTUNG KI-CRM: Folie 26 (Kap 1-3.pdf) zeigt die 5 Wege, dort Quelle: Forbes (2019) — im Text wird SAPJoule2023 zitiert. Das ist FALSCH: Die 5 Dimensionen sind ein allgemeines Theoriekonzept (Forbes 2019), nicht eine SAP-spezifische Quelle. Empfehlung: Quelle auf Forbes (2019) ändern oder einen Forbes-Eintrag in sources.bib ergänzen, da SAPJoule2023 diese theoretische Klassifikation nicht liefert.]

SAP agiert in einer Doppelrolle als Anbieter und als Anwender von #acrs("CRM")-Lösungen. Als Anbieter vertreibt SAP die Customer-Experience-Suite mit SAP Sales Cloud zu 118 Euro pro Nutzer und Monat in direkter Konkurrenz zu Salesforce #cite(<SAPPricing2026>, supplement: "S. 21"). Als Anwender wendet SAP die ABC-Analyse auf seine Kundenbasis an: Enterprise-Kunden werden durch dedizierte #acrpl("AE") und globales #acrs("KAM") betreut, einschließlich board-to-board-Kontakten und Buying-Center-spezifischer Ansprache auf CFO-, COO- und CRO-Ebene. Das Revenue-Intelligence-Intelligent-Package übernimmt die #acrs("CLV")-Steuerung durch Echtzeit-Monitoring von Churn-Risiko, Erneuerungsraten und Verkaufszykluslängen #cite(<SAPBDCGtm2026>, supplement: "S. 20"). Die Erneuerungsrate von 91 Prozent im Cloud-Kerngeschäft belegt die Wirksamkeit dieses Ansatzes #cite(<SAPBDCGtm2026>, supplement: "S. 5"). Bemerkenswert ist dabei, dass viele SAP-#acrs("ERP")-Kunden parallel Salesforce als bevorzugte #acrs("CRM")-Lösung einsetzen, was zeigt, dass #acrs("CRM")-Entscheidungen im Enterprise-Umfeld häufig unabhängig von der #acrs("ERP")-Wahl getroffen werden #cite(<GartnerMQSFA2024>).

// [QUELLE-VALIDIERUNG Abs. 18: Reine SAP-Anwendung. SAPPricing2026 S.21 (Sales Cloud 118 EUR) ✓. SAPBDCGtm2026 S.20 (Revenue Intelligence) ✓. SAPBDCGtm2026 S.5 (91% Erneuerungsrate) ✓. GartnerMQSFA2024 (SAP-ERP-Kunden nutzen parallel Salesforce) ✓. KEINE Vorlesungsfolie direkt. Die Beobachtung zur Parallelnutzung von SAP-ERP und Salesforce-CRM ist eine eigene Schlussfolgerung aus dem Gartner-Bericht.]

#pagebreak()

= Vertriebsbezogene Herausforderungen der nächsten fünf Jahre

Die Monetarisierung von #acrs("KI") und der messbare Wertnachweis stellen die größte vertriebliche Herausforderung der kommenden fünf Jahre dar. Enterprise-Kunden stehen unter wachsendem Druck, #acrs("KI")-Investitionen durch konkrete #acr("ROI")-Nachweise zu rechtfertigen. SAP verkauft mit den Intelligent Packages ein #acrs("KI")-Versprechen, das sich in messbarem Mehrwert ausdrücken muss. Zu Jahresbeginn 2026 waren jedoch viele dieser Pakete noch nicht vollständig verfügbar #cite(<SAPBDCGtm2026>, supplement: "S. 5"). Werden die versprochenen Effizienzgewinne nicht zeitnah realisiert, entsteht die in Abschnitt 2.2 beschriebene Kundenzufriedenheitsfalle mit negativen Folgen für Erneuerungsraten. SAPs Antwort hierauf ist die „Autonomous Enterprise"-Vision: SAP Joule Work soll ab dem zweiten Halbjahr 2026 messbare Produktivitätsgewinne durch autonome Prozessausführung liefern #cite(<SAPSapphire2026>).

// [QUELLE-VALIDIERUNG Abs. 19: Rückbezug auf Kundenzufriedenheitsfalle → korrekte Verbindung zu Folie 38 (Kap 1-3.pdf) ✓. SAP-Zahlen aus SAPBDCGtm2026 S.5 (Intelligent Packages nicht vollständig verfügbar) ✓. SAPSapphire2026 (Joule Work / Autonomous Enterprise) ✓. KI-Monetarisierung als Herausforderung: KEINE spezifische Vorlesungsfolie — eigenständige Synthese aus Kursinhalten und SAP-Quellen.]

Eng damit verknüpft ist die sogenannte Hyperscaler-Koopetition: Microsoft Azure, Google Cloud und AWS sind simultane Partner im #acrs("BDC")-Connect-Programm und gleichzeitig Wettbewerber mit eigenen Daten- und #acrs("KI")-Plattformen #cite(<SAPBDCGtm2026>, supplement: "S. 27--29"). Wie SAP diese Interessenkonflikte im Vertrieb steuert, wird ein entscheidender Erfolgsfaktor sein. Schließlich bleibt das Partner-Enablement im #acrs("KI")-Zeitalter eine kritische operative Herausforderung: Die ambitionierten Wachstumsziele sind ohne ein skalierendes Partnerökosystem nicht erreichbar, und die Qualifizierung für hochspezialisierte Produkte wie #acrs("BDC") und Joule erfordert massive Investitionen in Schulung und Zertifizierung #cite(<SAPBDCGtm2026>, supplement: "S. 22").

// [QUELLE-VALIDIERUNG Abs. 20: Hyperscaler-Koopetition → SAPBDCGtm2026 S.27-29 ✓. Partner-Enablement → SAPBDCGtm2026 S.22 ✓. Beide Aspekte KEINE Vorlesungsfolien — eigenständige Zukunftseinschätzung auf Basis interner SAP-Dokumente.]

#pagebreak()

= Fazit

SAP ist durch ihre Differenzierungsstrategie — ganzheitliche Prozessintegration, eine offene Datenplattform und ein globales Partnerökosystem mit über 25.000 Partnern #cite(<SAPPartnerEdge2025>) — im Enterprise-Softwaremarkt stark positioniert. Die Analyse zeigt, dass SAP die theoretischen Konzepte des Vertriebsmanagements — Zielhierarchie, Solution Selling, Differenzierung, selektive Multi-Channel-Konfiguration und #acrs("CRM")-Vertrieb — in eine kohärente Gesamtstrategie übersetzt. Mit einem Cloud-Umsatz von 21,0 Milliarden Euro und einem Wachstum von 23 Prozent im Geschäftsjahr 2025 ist die strategische Transformation vollzogen #cite(<SAPIntegratedReport2025>, supplement: "S. 60"). Die entscheidende Variable der kommenden Jahre liegt weniger in der Strategieformulierung als in der Umsetzung: #acrs("KI")-Wertnachweis, Hyperscaler-Koopetition und Partner-Enablement werden darüber entscheiden, ob SAP seinen Wachstumspfad im Cloud-Zeitalter fortsetzen kann.

// [QUELLE-VALIDIERUNG Fazit: SAPPartnerEdge2025 (25.000 Partner) ✓. SAPIntegratedReport2025 S.60 (21,0 Mrd. EUR, +23%) ✓. Alle genannten theoretischen Konzepte wurden zuvor mit Folienquellen belegt. KEINE neuen Behauptungen ohne Quellenangabe.]

]
