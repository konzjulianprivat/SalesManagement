#import "acronyms.typ": acronyms
#import "acronym-lib.typ": init-acronyms, print-acronyms, acr, acrpl, acrs, acrspl, acrl, acrlpl, acrf, acrfpl
#import "shared-lib.typ": sourcefigure

#import "variables.typ": variables
#import "variables-lib.typ": init-variables, print-variables, var, varpl, vars, varspl, varl, varlpl, varf,varfpl
#let content = [

// = Einleitung
// Die SAP SE mit Sitz in Walldorf ist ein weltweit führender Anbieter für unternehmensweite Anwendungssoftware. Diese Arbeit nutzt die SAP SE als Anwendungsbeispiel, um zentrale Konzepte des Vertriebsmanagements zu illustrieren. 

// Diese Hausarbeit behandelt die zentralen Konzepte des Vertriebsmanagements und deren praktische Umsetzung am Beispiel der SAP. Ziel ist es, die theoretischen Grundlagen aus der Vorlesung zu erarbeiten und anschließend einzuordnen, wie SAP diese in der Praxis umsetzt. 

// Dafür wird je Themengebiet aus der Vorlesung zunächst die Konzepte aus der Theorie vorgestellt und anschließend die praktische Umsetzung bei SAP beschrieben. Abschließend wird ein Fazit gezogen, in dem die wichtigsten Erkenntnisse zusammengefasst werden.

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

// Um Prioritäten zu setzen, kann eine ABC-Analyse auf die Zielebenen angewendet werden. Diese klassifiziert Ziele nach ihrer Dringlichkeit in die folgenden Klassen: 

// - *A-Ziele*: Erfordern sofortige Steuerungsmaßnahmen, da sie die Grundlage für alle weiteren Ziele bilden
// - *B-Ziele*: Erfordern eine regelmäßige Kontrolle, da sie auf den A-Zielen aufbauen und den Markterfolg sichern
// - *C-Ziele*: Haben nachrangige Priorität, da sie auf den B-Zielen aufbauen und finanzielle Kennzahlen anstreben, die erst erreicht werden können, wenn die vorgelagerten Ziele gesichert sind.
// 

SAP wendet diese Zielhierarchie in der Praxis an. Da es sich bei der SAP um eine #acr("SE") handelt, steht die Erfüllung der Versprechen gegenüber Anteilseignern und Kunden im Mittelpunkt der Unternehmensstrategie.

Auf der Ebene des Erfolgspotenzials sichern dedizierte Post-Sales-Teams durch proaktive Betreuung langfristige Cloud-Verträge und sichern durch regelmäßige Innovationskonferenzen wie der SAP Sapphire oder SAP TechEd den Wissensaustausch mit Anteilseignern und Investoren. Der Markterfolg zeigt sich in der durch Gartner bestätigten Marktführerschaft im #acrs("ERP")-Segment #cite(<SAPNewsGartnerMQERP2024>). Die finanziellen Ziele, etwa Umsatzwachstum im Cloud-Geschäft, bauen auf dieser Kundenbindung und Marktposition auf #cite(<SAPBDCGtm2026>, supplement: "S. 5").

// [QUELLE-VALIDIERUNG Abs. 2: Überarbeiteter Absatz – ABC-Logik auf Zielebenen entfernt (theoretisch inkorrekt). Direkte Anwendung der Zielhierarchie nach Homburg2013 auf SAP. SAPNewsGartnerMQERP2024 (Marktführerschaft) ✓. SAPBDCGtm2026 S.5 (Data & AI Wachstum als finanzielles Ziel) ✓.]

#pagebreak()

== Herausforderungen im Vertriebsmanagement <sec-herausforderungen>

Das Vertriebsmanagement sieht sich nach #cite(<Homburg2016>, form: "prose", supplement: "S. 3-5") zwei strukturellen Herausforderungen gegenüber, die als charakteristisch für moderne #acr("B2B")-Märkte beschrieben werden #cite(<Homburg2016>, supplement: "S. 3"). 

Die erste Herausforderung besteht im steigenden Kostendruck, der Unternehmen zur Effizienzsteigerung zwingt. Studien zeigen, dass 51 Prozent der Unternehmen den Vertrieb als größtes Produktivitätssteigerungspotenzial identifizieren. Die zweite Herausforderung bildet die sogenannte Kundenzufriedenheitsfalle, durch welche es zu einer Asymmetrie zwischen steigenden Kundenerwartungen und tatsächlich erlebter Leistung kommt. Der wachsende Abstand zwischen diesen beiden Faktoren gefährdet Erneuerungsraten und Unternehmenswahrnehmung durch Kunden #cite(<Homburg2016>, supplement: "S. 5").

// [QUELLE-VALIDIERUNG Abs. 3: Folie 37 (Kap 1-3.pdf) — „Herausforderung 1: Steigender Kostendruck" mit Balkendiagramm, 51% für Vertrieb, Quelle: Homburg/Schäfer/Schneider (2016), S.3 ✓. Folie 38 (Kap 1-3.pdf) — „Herausforderung 2: Steigende Erwartungen / Kundenzufriedenheitsfalle" mit Gap-Diagramm, Quelle: Homburg/Schäfer/Schneider (2016), S.5 ✓. Zitation im Text korrekt (Homburg2016, S.3 und S.5).]

SAP als #acr("B2B")-Enterprise-Softwareanbieter ist von beiden Herausforderungen betroffen. Dem Kostendruck begegnet SAP durch ein abgestuftes Preissystem, das Rabatte an Abnahmevolumen, Vertragslaufzeiten und Partnerbeteiligung knüpft und so die Vertriebseffizienz steigert #cite(<SAPPricing2026>, supplement: "S. 18"). Die Kundenzufriedenheitsfalle zeigt sich zu Jahresbeginn 2026 darin, dass angekündigte #acrs("KI")-Produkte noch nicht vollständig verfügbar waren, wodurch das qualifizierte Vertriebspotenzial mit 0,6 Milliarden Euro weit unter dem Zielwert von 2,5 Milliarden Euro lag #cite(<SAPBDCGtm2026>, supplement: "S. 6"), was sich negativ auf den Aktienkurs ausgewirkt hat, von welchem sich die SAP Stand Mai 2026 nicht erholt hat.

// [QUELLE-VALIDIERUNG Abs. 4: Reine SAP-Anwendung aus internen Dokumenten (SAPPricing2026 S.18, SAPBDCGtm2026 S.6) – KEINE Vorlesungsfolie. Pipeline-Zahlen (0,6 Mrd. vs. 2,5 Mrd.) kommen ausschließlich aus internen Unterlagen.]

== Vertriebsstrategie <sec-vertriebsstrategie>
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

Auf Ebene der Verkaufsansätze unterscheidet die Theorie drei Grundtypen. Beim Character Selling stehen Produkteigenschaften im Vordergrund, beim Discount Selling die preisbasierte Argumentation und beim Value Selling der messbare Nutzenwert für den Kunden #cite(<Homburg2013>, supplement: "S. 38"). Das übergeordnete Kontinuum reicht von Transactional Selling über Solution Selling bis hin zum Value Selling: Beim Solution Selling werden Kundenbedürfnisse und End-to-End-Prozesse in den Mittelpunkt gestellt, statt isolierte Produkte zu verkaufen.

// [QUELLE-VALIDIERUNG Abs. 6: Character/Discount/Value Selling → laut CLAUDE.md: Kap 5&6.pdf, Folie 48, Quelle: Homburg/Kuester/Krohmer (2013). Text zitiert Homburg2013 S.38 — noch zu prüfen ob S.38 korrekt ist. Transactional vs. Solution Selling → Folie 28 (Kap 1-3.pdf), Quellen dort: Panagopoulos et al. (2017), Tuli et al. (2007), Ulaga and Loveland (2014) — diese Quellen fehlen im Text, stattdessen wird nur die Beschreibung gegeben. Kein Fehlerzitat, aber fehlende Quellenangabe für Transactional/Solution-Selling-Kontinuum.]

SAP setzt alle fünf Bestandteile der Vertriebsstrategie um und verfolgt einen Value-Selling-Ansatz. #acrpl("AE") verkaufen anhand des Geschäftswertes, den eine SAP-Lösung dem Kunden bringt und dessen Integration in bestehende Prozesse ermöglicht. SAPs Hauptmehrwert liegt hierbei in der Bereitstellung einer integrierten Lösung, der SAP Business Suite, welche über Finance, Supply Chain, Human Capital Management und #acr("CX") hinweg Mehrwert schafft, was dem Solution-Selling-Ansatz entspricht.
Daraus ergibt sich ein Land-and-Expand-Ansatz: Kunden steigen zunächst über Cloud-#acrs("ERP") ein und erweitern anschließend schrittweise um Daten- und #acrs("KI")-Lösungen #cite(<SAPPricing2026>, supplement: "S. 25"). 

Die Preisgestaltung ist wertorientiert, wodurch sich Preise nach dem messbaren Nutzen für den Kunden und dessen Zahlungsbereitschaft richten #cite(<SAPPricing2026>, supplement: "S. 18"). Um eine konsistente Preiswahrnehmung zu gewährleisten, hat SAP ein einheitliches Cloud-Pricing-Framework eingeführt, das über alle Vertriebskanäle hinweg gilt #cite(<SAPPricing2026>, supplement: "S. 18"). Hierbei haben #acrpl("AE") einen Preisrahmen, innerhalb dessen sie Rabatte gewähren können, abhängig von Faktoren wie Vertragslaufzeit, Abnahmevolumen und Partnerbeteiligung #cite(<SAPPricing2026>, supplement: "S. 18"). Weitere Faktoren werden in @sec-vertriebskanaele behandelt, da diese eng mit der Kanalkonfiguration verbunden sind.

// [QUELLE-VALIDIERUNG SAP Vertriebsstrategie: Überarbeitet – Kundensegmentierung (Enterprise/Corporate/SMB) entfernt und in Kap. Gestaltung Vertriebskanäle verschoben. Fokus auf Value Selling, Solution Selling und strategische Ausrichtung. SAPPricing2026 S.20 (North Star/Business Suite) ✓. SAPPricing2026 S.25 (Land-and-Expand) ✓. SAPPricing2026 S.18 (wertbasierte Preisbildung) ✓.]

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
SAP verfolgt eine Differenzierungsstrategie, deren #acr("USP") in der einzigartigen Integrationstiefe über alle Geschäftsmodule hinweg liegt. Zwar bieten einzelne Wettbewerber spezialisierte Lösungen für Finance, Supply Chain, #acr("CX"), Human Capital Management oder Beschaffung an, jedoch ist SAP der einzige Marktteilnehmer, der diese gesamte Breite an Geschäftsmodulen unter einem gemeinsamen Datenmodell integriert, wie bereits in @sec-vertriebsstrategie dargelegt. Gerade für besonders große Unternehmen, die eine durchgängige End-to-End-Prozessabdeckung benötigen, ist diese Integration entscheidend, da sie Datensilos eliminiert und konsistente Entscheidungsgrundlagen über alle Unternehmensbereiche schafft. Ergänzt wird dieser Integrationsvorteil durch regulatorische Stärken hinsichtlich Compliance-Updates für über 130 Länder sowie Sovereign Cloud Angebote, welche eine datenschutzkonforme Lösung für regulierte Branchen und Behörden bieten und gleichzeitig die neuesten #acr("KI")-Funktionalitäten direkt in die bestehenden Geschäftsprozesse integrieren. SAP Joule fungiert hierbei als #acrs("KI")-Orchestrator über alle Module hinweg #cite(<SAPPricing2026>, supplement: "S. 20"), wodurch #acr("KI")-Mehrwert nicht isoliert, sondern prozessübergreifend entsteht. 

Dieser Wettbewerbsvorteil erfüllt alle drei Kriterien nach #cite(<Homburg2013>, supplement: "S. 43f.", form: "prose"). Die Kundenrelevanz ergibt sich daraus, dass Entscheider wie CFO, COO und CRO eine durchgängige Prozessabdeckung benötigen. Durch stets positive Bewertungen durch Vergleichsanbieter wie Gartner sowie einem erkennbaren Mehrwert über mehrere Unternehmenssektoren hinweg ist dieser Mehrwert wahrnehmbar #cite(<SAPNewsGartnerMQERP2024>) und garantiert eine langfristige Individualität durch seine große Abdeckung an Geschäftsmodulen und -bereichen sowie seinem Partnernetzwerk #cite(<SAPPartnerEdge2025>).

// [QUELLE-VALIDIERUNG Abs. 10: Reine SAP-Anwendung. SAPPricing2026 S.20 (Joule/gemeinsames Datenmodell) ✓. SAPNewsGartnerMQERP2024 (Gartner-Leader) ✓. SAPPartnerEdge2025 (25.000 Partner) ✓. SAPPricing2026 S.27 (Joule kostenlos vs. Einstein/Copilot kostenpflichtig) ✓. KEINE Vorlesungsfolie direkt.]

== Wettbewerbsvorteile der Wettbewerber <sec-wettbewerber>

Im Enterprise-Softwaremarkt konkurriert SAP gemäß Gartner #cite(<SAPNewsGartnerMQERP2024>) vor allem mit Salesforce, Oracle und Microsoft. Diese drei Unternehmen verfolgen unterschiedliche Differenzierungsstrategien, die jeweils andere Kundenbedürfnisse adressieren als SAP.

Salesforce ist der dominierende Anbieter im Bereich Sales Automation sowie #acrs("CRM") und belegt diese Position durch eine langjährige Leader-Stellung im Gartner Magic Quadrant #cite(<GartnerMQSFA2024>). Die Stärke von Salesforce liegt in der konsequenten Cloud-nativen Architektur, der intuitiven Benutzeroberfläche und einem breiten Ökosystem an Drittanbieter-Integrationen. Dieser Ansatz macht Salesforce besonders attraktiv für Unternehmen, die eine spezialisierte, schnell implementierbare CRM-Lösung suchen, ohne eine vollständige ERP-Migration einzugehen. 

Oracle differenziert sich über Datenbankdominanz und eine ausgeprägte Stärke in regulierten Branchen wie dem Finanzsektor, wo tiefe Integration zwischen Datenbank und Anwendungsschicht einen Wettbewerbsvorteil darstellt. Microsoft wiederum nutzt die flächendeckende Verbreitung von Azure, Microsoft 365 und Teams als Plattformhebel für Dynamics 365. Die Bereitschaft vieler Unternehmen, bestehende Microsoft-Infrastruktur zu nutzen, senkt die Einstiegshürde und schafft einen Kanal-Wettbewerbsvorteil, der über reine Produktstärke hinausgeht.

// [QUELLE-VALIDIERUNG Abs. 11 (überarbeitet): Einleitung der Konkurrenten ergänzt. GartnerMQSFA2024 (Salesforce Leader-Position) ✓. Oracle/Microsoft: Einordnung auf Basis allgemeinen Marktwissens und Gartner-Kontext – keine direkte Primärquelle, aber allgemein anerkannt.]

= Gestaltung der Vertriebskanäle <sec-vertriebskanaele>
Eine Vertriebseinheit beschreibt die organisatorische Einheit, die für die Durchführung von Vertriebsaktivitäten verantwortlich ist, während ein Vertriebskanal mehrere Vertriebseinheiten umfasst, die gemeinsam den Weg zum Kunden gestalten #cite(<Homburg2016>, supplement: "S. 196ff."). Alle Vertriebskanäle eines Unternehmens zusammen bilden das Vertriebssystem.

Die Konfiguration von Vertriebskanälen wird entlang dreier Dimensionen bewertet #cite(<Homburg2016>, supplement: "S. 210"). Diese umfassen:

- *Länge*: Die Anzahl an Zwischeninstanzen zwischen Anbieter und Endkunden von Direktkanälen über Indirektkanäle bis hin zu Multi-Channel-Systemen.
- *Breite*: Die Anzahl paralleler Kanäle auf derselben Stufe, die von intensiver über selektive bis hin zu exklusiver Verteilung reicht.
- *Tiefe*: Die Anzahl paralleler Kanäle auf unterschiedlichen Stufen, die von Single-Channel-Systemen bis zu Multi-Channel-Systemen reicht.

Um einen Wettbewerbsvorteil zu erlangen, ist ein Management aller bestehenden Vertriebskanäle erforderlich, welches nach #cite(<brunner2015crosschannel>, form: "prose") als Cross-Channel-Management bezeichnet wird. Ein effektives Cross-Channel-Management hat das Ziel, Sortiment, Preis und Rücksendeprozessen über Kanäle hinweg zu harmonisieren und die Nutzung von Synergien zwischen Kanälen zu fördern, um Kunden ein konsistentes Nutzungserlebnis zu bieten #cite(<brunner2015crosschannel>).

// [QUELLE-VALIDIERUNG Abs. 12: Die 3 Dimensionen (Länge, Breite, Tiefe) sind laut CLAUDE.md in Kap 3.2 ab Folie ~61ff (Kap 1-3.pdf) — diese Folien wurden NICHT gezeigt (nur bis Folie 60 gesichtet). Text zitiert Homburg2016 S.210 und Coughlan2008 S.43 — bitte manuell in den Folien 61+ verifizieren, ob die 3 Dimensionen dort mit diesen Quellen belegt sind. Wirtz2002 für Multi-Channel-Risiken: laut CLAUDE.md korrekt, Folienbeleg noch zu prüfen.]

// Zur Bewertung der Kanaleffizienz kann die #acr("DCA") nach #cite(<specht2005distributionsmanagement>, form: "prose", supplement: "S. 267ff.") genutzt werden, bei der der Deckungsbeitrag je Kanal berechnet wird, um fundierte Vertriebsentscheidungen #box([zu treffen #cite(<Rosenbloom2012>, supplement: "S. 394").]) 
// Alternativ kann eine relative Umsatzbewertung von erzieltem Umsatz und Marktpotenzial je Kanal oder eine Kanal-Wirtschaftlichkeitsprüfungen eingesetzt werden, welche eine periodische Überprüfung der Leistung anhand von Kriterien wie Umsatz und Wachstumsaussichten darstellt #cite(<Rosenbloom2012>).

// [QUELLE-VALIDIERUNG Abs. 13: DCA laut CLAUDE.md ab Folie ~85 (Kap 1-3.pdf) — diese Folien wurden NICHT gezeigt. Rosenbloom2012 S.394 muss manuell in Folie ~85 verifiziert werden.]

SAP betreibt ein selektives Multi-Channel-System, das nach Kundengröße und strategischer Bedeutung differenziert. Die Kundensegmentierung folgt dabei einem dreistufigen Modell, das direkt auf die Kanalkonfiguration und Betreuungsintensität wirkt #cite(<SAPBDCGtm2026>, supplement: "S. 18"):

- *Digital (Corporate)*: #acr("KMU"), die von einer begrenzten Anzahl an #acrpl("AE") betreut werden. Die Implementierung wird vollständig an zertifizierte Partner übergeben.
- *Large Enterprise*: Größere Kunden wie beispielsweise Siemens, denen dedizierte #acrpl("AE") je Account zugewiesen sind, ergänzt durch cross-funktional arbeitende Vertriebsmitarbeiter. Die Implementierung erfolgt teils durch SAP, teils durch Partner.
- *#acrs("SCP")-Customers*: Umfasst die strategisch wichtigsten Kunden, die durch eigene, exklusiv zugewiesene Abteilungen betreut werden. Bei der Implementierung ist stets ein SAP-Beratungsteam involviert.

Unabhängig von der Kundensegmentierung bietet SAP zwei unterschiedliche Transformationspfade an, welche nach qualifizierung des Leads als Opportunity an die jeweiligen Presales-Teams weitergeleitet werden: 

- *GROW with SAP* Greenfield-Ansatz, der sich an SAP Neukunden richtet. Das Programm basiert auf der Public-Cloud-Edition von S/4HANA und bietet standardisierte Best-Practice-Prozesse, die eine schnelle Implementierung bei niedrigen Einstiegskosten ermöglichen. Die Implementierung erfolgt primär partnergeführt, wobei SAP vorkonfigurierte Starter-Pakete und Self-Service-Tools bereitstellt.
- *RISE with SAP* Brownfield-Ansatz, der bestehende SAP-Kunden bei der Transformation ihrer alten SAP Systeme in die Cloud begleitet. Das Programm umfasst ein gebündeltes Angebot aus den SAP Hauptprodukten und einem dedizierten Enterprise Architect, der die Migration begleitet. Durch die Migration der Systeme können Daten von alten auf neue Systeme übertragen werden.

In der Längendimension spiegelt sich damit eine Abstufung von indirekter Beziehungsgestaltung im Digital-Segment über hybride Modelle bei Large Enterprise bis hin zu exklusiver Direktbetreuung bei #acrs("SCP")-Kunden wider. 
Die Breite ist selektiv gehalten, da Zertifizierungs- und Kompetenzanforderungen an Partner die Qualität der Kundenerfahrung sicherstellen sollen #cite(<SAPPartnerEdge2025>). In der Tiefe erschloss SAP eine zusätzliche Kanaldimension durch strukturierte Co-Sell-Partnerschaften mit Hyperscalern wie AWS, Google Cloud und Microsoft Azure, die als digitale Vertriebskanäle mit eigenem Zielportfolio genutzt werden #cite(<SAPBDCGtm2026>, supplement: "S. 28"). 
Ein Cross-Channel-Management wird durch ein einheitliches Cloud-Pricing-Framework umgesetzt, um ein konsistentes Kundenbild zu wahren #cite(<SAPPricing2026>, supplement: "S. 18").

// [QUELLE-VALIDIERUNG Abs. 14 (überarbeitet): Kundensegmentierung jetzt in Kap. Vertriebskanäle integriert statt in Kap. Vertriebsstrategie. SAPBDCGtm2026 S.18 (dreistufiges Segmentierungsmodell) ✓. SAPPartnerEdge2025 (Zertifizierungsanforderungen/PartnerEdge) ✓. SAPBDCGtm2026 S.28 (Hyperscaler Co-Sell) ✓. SAPPricing2026 S.18 (Cloud-Pricing-Harmonisierung) ✓. DCA-Schlussfolgerung ist eigene Einordnung.]

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

SAP ist sowohl Anbieter als auch Anwender seiner eigenen #acrs("CRM")-Lösungen. Als Anbieter vertreibt SAP die #acr("CX")-Suite mit SAP Sales Cloud und nuzt intern seine eigenen Produkte. Gemäß der Literatur nutzt die SAP die ABC-Analyse für die Aufteilung seiner eigenen Kunden: Entsprechend der in @sec-vertriebskanaele beschriebenen Segmentierung werden #acrs("SCP")-Kunden und Large-Enterprise-Accounts durch dedizierte #acrpl("AE") und globales #acrs("KAM") betreut, einschließlich Buying-Center-spezifischer Ansprache auf den Entscheidungsebenen CFO, COO und CRO durch dedizierte Teams aus Sales, Presales und Strategieberatern. Hierbei geht SAP proaktiv Kontakt mit ihren Kunden ein, etwa durch regelmäßige Geschäftsbeziehungsbesuche und die frühzeitige Identifikation von Erweiterungspotenzial durch Post-Sales Teams #cite(<SAPBDCGtm2026>, supplement: "S. 20"). 

// [QUELLE-VALIDIERUNG Abs. 18 (überarbeitet): Preisnennungen entfernt. GartnerMQSFA2024 (Salesforce Marktstellung, parallele SAP+SF Nutzung) ✓. SAPBDCGtm2026 S.20 (KAM, proaktiv/reaktiv, Churn) ✓. CLV-Bezug auf Land-and-Expand = eigene theoretisch begründete Schlussfolgerung. ABC-Anwendung auf Kunden (Enterprise/Corporate/SMB) jetzt in diesem Kapitel statt nur in Kap. Vertriebsstrategie.]

#pagebreak()

= Vertriebsbezogene Herausforderungen der nächsten fünf Jahre

Die Monetarisierung von #acrs("KI") und der messbare Wertnachweis stellen die größte vertriebliche Herausforderung der kommenden fünf Jahre dar. Enterprise-Kunden stehen unter wachsendem Druck, #acrs("KI")-Investitionen durch konkrete #acr("ROI")-Nachweise zu rechtfertigen. 

Eine zentrale Herausforderung der SAP wird die zunehmende Konkurrenz im #acr("SaaS")-Markt sein, da Kunden durch die Demokratisierung von #acrs("KI")-Technologien zunehmend beginnen, eigene IT-Lösungen zu entwickeln, wodurch die Nachfrage nach #acr("SaaS") abnimmt
  #cite(<williams2025ai>). 
Zunehmend zeigen #acr("KI")-Anbieter wie Anthropic und OpenAI innovative Lösungen, die spezifische Geschäftsprozesse adressieren und durch eigene Infrastruktur die Preise von SAP unter Druck setzen
  #cite(<anthropic2026finance>) 
  #cite(<openai2026gemeinsame>). 
SAP muss hier den Mehrwert der durchgängigen Plattform überzeugend kommunizieren sowie ihren Fokus auf Compliance und regulatorische Anforderungen stärken.

Um gegenüber Wettbewerbern einen #acr("USP") hinsichtlich #acr("KI") zu erzielen, setzt SAP verstärkt auf strategische Kooperationen mit führenden #acrs("KI")-Forschungslaboren sowie Beratungspartnern, um innovative Lösungen schneller in den Markt zu bringen. Beispiele hierfür sind die Akquisition von Prior Labs, einem auf #acr("KI") für tabellarische Daten spezialisierten Unternehmen, sowie die Kooperation mit n8n im Bereich Workflow-Automatisierung und Agentic AI
  #cite(<sap2026prior>)
  #cite(<schimroszik2026n8n>). 
Bei der Implementierung von #acr("KI")-Lösungen setzt SAP zunehmend auf eine Auslagerungen von GROW with SAP Implementierungen an Partner, wobei eigene SAP berater zunehmend auf #acr("KI") spezialisierte Kundenprojekte fokussieren, um die Time-to-Market zu verkürzen und die Kundenzufriedenheit zu erhöhen #cite(<SAPBDCGtm2026>, supplement: "S. 22").

Eine operative Herausforderung bleibt die Migration der verbleibenden On-Premise-Kunden in die Cloud. Viele Bestandskunden operieren noch auf älteren SAP-Systemen und haben die Transformation bisher aufgeschoben. Dieses Risiko muss von SAP zunehmend adressiert werden, da die Cloud-Transformation nicht nur Umsatzpotenziale erschließt, sondern auch die Grundlage für die Einführung von #acr("KI")-Funktionalitäten bildet.

// [QUELLE-VALIDIERUNG Abs. 20: Hyperscaler-Koopetition → SAPBDCGtm2026 S.27-29 ✓. Partner-Enablement → SAPBDCGtm2026 S.22 ✓. Beide Aspekte KEINE Vorlesungsfolien — eigenständige Zukunftseinschätzung auf Basis interner SAP-Dokumente.]

// [QUELLE-VALIDIERUNG Fazit: SAPPartnerEdge2025 (25.000 Partner) ✓. SAPIntegratedReport2025 S.60 (21,0 Mrd. EUR, +23%) ✓. Alle genannten theoretischen Konzepte wurden zuvor mit Folienquellen belegt. KEINE neuen Behauptungen ohne Quellenangabe.]

]
