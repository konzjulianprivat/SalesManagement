#import "acronyms.typ": acronyms
#import "acronym-lib.typ": init-acronyms, print-acronyms, acr, acrpl, acrs, acrspl, acrl, acrlpl, acrf, acrfpl
#import "shared-lib.typ": sourcefigure

#import "variables.typ": variables
#import "variables-lib.typ": init-variables, print-variables, var, varpl, vars, varspl, varl, varlpl, varf,varfpl
#let content = [

= Einleitung
Die SAP SE mit Sitz in Walldorf ist ein weltweit führender Anbieter für unternehmensweite Anwendungssoftware. Diese Arbeit nutzt die SAP SE als Anwendungsbeispiel, um zentrale Konzepte des Vertriebsmanagements zu illustrieren. 

Diese Hausarbeit behandelt die zentralen Konzepte des Vertriebsmanagements und deren praktische Umsetzung am Beispiel der SAP.

= Vertriebsstrategie - Ziele & Herausforderungen

#v(-2em)

== Ziele des Vertriebs

Vertriebsziele beschreiben den angestrebten Zustand, den ein Unternehmen durch seine Vertriebsaktivitäten erreichen möchte #cite(<Homburg2016>, supplement: "S. 2"). Diese lassen sich nach #cite(<Homburg2013>, form: "prose", supplement: "S. 18") in die folgende dreistufigen Hierarchie ordnen, welche aufeinander aufbaut:

1. *Erfolgspotenzial*: Ziele, welche die langfristige Wettbewerbsposition und Kundenbindung sichern. Dazu gehören eine Sicherung der Kundenzufriedenheit, Aufbau von Kundenbindung und die Markenstärke. #cite(<Homburg2016>, supplement: "S. 51")
2. *Markterfolg*: Ziele, welche auf Erfolgspotential aufbauen und den Markterfolg in Form von Marktanteilen, Neukundengewinnung und #box([Kundenbindung messen]).
3. *Finanzielle Ziele*: Ziele, welche auf Markterfolg aufbauen und finanzielle Kennzahlen wie Umsatz, Deckungsbeitrag und Profitabilität anstreben.

SAP wendet diese Zielhierarchie in der Praxis an. Da es sich bei der SAP um eine #acr("SE") handelt, steht die Erfüllung der Versprechen gegenüber Anteilseignern und Kunden im Mittelpunkt der Unternehmensstrategie.

Dedizierte Post-Sales-Teams sichern durch proaktive Betreuung und regelmäßige Kundenkonferenzen den Wissensaustausch mit Anteilseignern und die Verlängerung langfristiger Cloud-Verträge. Der Markterfolg wird durch Gartner bestätigt, das SAP als Marktführer ausweist #cite(<SAPNewsGartnerMQERP2024>). Die finanziellen Ziele bauen auf dieser Kundenbindung und Marktposition auf #cite(<SAPBDCGtm2026>, supplement: "S. 5").

== Herausforderungen im Vertriebsmanagement <sec-herausforderungen>

Das Vertriebsmanagement sieht sich nach #cite(<Homburg2016>, form: "prose", supplement: "S. 3-5") zwei Herausforderungen gegenüber, die als charakteristisch für moderne #acr("B2B")-Märkte beschrieben werden #cite(<Homburg2016>, supplement: "S. 3"). 

Die erste Herausforderung besteht im steigenden Kostendruck, der Unternehmen zur Effizienzsteigerung zwingt, wobei die zweite Herausforderung die Kundenzufriedenheitsfalle bildet, durch welche es zu einer Asymmetrie zwischen steigenden Kundenerwartungen und tatsächlich erlebter Leistung kommt. Der wachsende Abstand zwischen diesen beiden Faktoren gefährdet Kundenbindung und Unternehmenswahrnehmung #cite(<Homburg2016>, supplement: "S. 5").

SAP begegnet dem Kostendruck durch ein abgestuftes Preissystem, das Rabatte an Abnahmevolumen, Vertragslaufzeiten und Partnerbeteiligung knüpft und so die Vertriebseffizienz steigert #cite(<SAPPricing2026>, supplement: "S. 18"). Die Kundenzufriedenheitsfalle zeigt sich darin, dass angekündigte #acrs("KI")-Produkte noch nicht vollständig verfügbar waren, wodurch Kundenbeziehungen geschädigt wurden #cite(<SAPBDCGtm2026>, supplement: "S. 6"). SAP hat daraufhin ihre Anreizstrukturen im Vertrieb auf Kundennutzen statt auf reine Verkaufszahlen ausgerichtet #cite(<SAPBDCGtm2026>, supplement: "S. 6").

== Vertriebsstrategie <sec-vertriebsstrategie>
Eine Vertriebsstrategie legt fest, wie ein Unternehmen seine Ressourcen auf Kunden, Märkte und Kanäle verteilt, um Wettbewerbsvorteile zu erzielen 
  #cite(<Panagopoulos2010>, supplement: "S. 47"). 
#cite(<Homburg2013>, supplement: "S. 23f.", form: "prose") definiert sechs Voraussetzungen einer Vertriebsstrategie: Sie muss existieren, auf die aktuelle Wettbewerbssituation abgestimmt sein, kontinuierlich an technologische Entwicklungen angepasst werden, intern kommuniziert werden sowie eine Leitlinienfunktion für alle vertriebsbezogenen Instrumente bilden, sowie operativ gelebt werden, um unsystematisches Handeln und ein inkonsistentes Kundenbild zu vermeiden.

Jede Vertriebsstrategie besteht nach #cite(<Homburg2016>, form: "prose", supplement: "S. 27ff.") aus den folgenden Elementen, die auf den zuvor beschriebenen Voraussetzungen aufbauen:

1. *Ziele*: Die angestrebten Ergebnisse, die durch die Vertriebsaktivitäten erreicht werden sollen.
2. *Kunden*: Der Fokus auf Kundengruppen und wie für diese Wert erbracht wird.
3. *Konkurrenz*: Die Positionierung gegenüber Wettbewerbern, um sich von der Konkurrenz abzuheben.
4. *Preisbildung*: Die Festlegung von Preisstrategien, um Wettbewerbsvorteile zu erzielen und einen einheitlichen Preisrahmen für den Vertrieb zu definieren.
5. *Vertriebskanäle und Vertriebspartner*: Die Auswahl der Kanäle und Partner, über die der Wert zum Kunden gelangt, sowie die Gestaltung der Zusammenarbeit mit diesen Partnern.

Die Literatur unterscheidet drei Grundtypen von Verkaufsansätzen: Character Selling (Produkteigenschaften), Discount Selling (preisbasierte Argumentation) und Value Selling (messbarer Nutzenwert) #cite(<Homburg2013>, supplement: "S. 38").

SAP setzt alle fünf Bestandteile der Vertriebsstrategie um. SAPs Hauptmehrwert liegt hierbei in der Bereitstellung einer integrierten Lösung, welche über mehrere Unternehmensfunktionen hinweg Mehrwert schafft, was dem Solution-Selling-Ansatz entspricht.
Daraus ergibt sich eine Upsell-Strategie, bei der Kunden zunächst über Cloud-#acrs("ERP") einsteigen und anschließend schrittweise um Daten- und #acrs("KI")-Lösungen erweitern #cite(<SAPPricing2026>, supplement: "S. 25"). 

Die Preisgestaltung ist Value-Selling-orientiert, wodurch sich Preise an den Nutzen für den Kunden richten #cite(<SAPPricing2026>, supplement: "S. 18"). Hierbei haben #acrpl("AE") einen Preisrahmen, innerhalb dessen sie Rabatte gewähren können, abhängig von Vertragslaufzeit, Abnahmevolumen und Partnerbeteiligung, geregelt durch ein einheitliches Framework über alle Vertriebskanäle hinweg #cite(<SAPPricing2026>, supplement: "S. 18"). Weitere Faktoren werden in @sec-vertriebskanaele behandelt.

= Vertriebsbezogene Wettbewerbsvorteile
Ein vertriebsbezogener Wettbewerbsvorteil beschreibt eine Überlegenheit gegenüber Wettbewerbern in einem oder mehreren vertriebsrelevanten Aspekten, die einem Unternehmen das Überleben in einem wettbewerbsintensiven Umfeld sichert 
  #cite(<Homburg2013>, supplement: "S. 43").
Dieser muss nach #cite(<Homburg2013>, supplement: "S. 43f.", form: "prose") folgende Kriterien erfüllen: 

- *Kundenrelevanz*: Der Vorteil muss für den Kunden wichtig sein und ein von ihm wahrgenommenes Bedürfnis erfüllen.
- *Wahrnehmbarkeit im Markt*: Der Vorteil muss vom Kunden wahrgenommen werden können gegenüber Produkten der Wettbewerber.
- *Langfristige Individualität*: Der Vorteil muss langfristig bestehen und darf von Wettbewerbern nicht kurzfristig nachmachbar sein.

Hierbei wird die Literatur geprägt von drei grundlegenden Strategietypen, definiert nach #cite(<porter1985competitive>, supplement: "S. 12ff.", form: "prose"):

- *Kostenführerschaft*: Strategie, bei welcher ein im Vergleich zu den Wettbewerbern niedriger Preis erreicht wird, um einen großen Marktanteil zu gewinnen #cite(<porter1985competitive>, supplement: "S. 12f.").
- *Differenzierung*: Strategie, bei welcher ein vom Kunden wahrgenommener Mehrwert geschaffen wird, der ein Preisprämium rechtfertigt #cite(<porter1985competitive>, supplement: "S. 14").
- *Fokussierung*: Strategie, bei welcher ein enges Marktsegment mit spezifischen Bedürfnissen bedient wird #cite(<porter1985competitive>, supplement: "S. 15.").

Unternehmen müssen sich hierbei nicht auf eine einzige Strategie festlegen, sondern können auch hybride Ansätze verfolgen #cite(<porter1985competitive>, supplement: "S. 16ff.").

== Wettbewerbsvorteile der SAP SE
SAP verfolgt eine Differenzierungsstrategie, deren #acr("USP") in der einfachen Integration über alle Geschäftsmodule hinweg liegt. Zwar bieten einzelne Wettbewerber spezialisierte Lösungen für einzelne Unternehmensfunktionen an, jedoch ist SAP der einzige Marktteilnehmer, der diese gesamte Breite als Gesamtlösung anbietet. Für Großunternehmen mit durchgängigen Prozessen eliminiert diese Integration Datensilos und schafft konsistente Entscheidungsgrundlagen über alle Unternehmensbereiche. Ergänzt wird dieser Vorteil durch regulatorische Stärken wie Compliance-Updates für über 130 Länder sowie Sovereign Cloud Angebote für regulierte Branchen mittels der Private Cloud. 

Dieser Wettbewerbsvorteil erfüllt alle drei Kriterien nach #cite(<Homburg2013>, supplement: "S. 43f.", form: "prose"). Die Kundenrelevanz ergibt sich daraus, dass Entscheider wie CFO, COO und CRO eine durchgängige Prozessabdeckung benötigen. Durch einen erkennbaren Mehrwert über mehrere Unternehmenssektoren hinweg ist dieser Vorteil wahrnehmbar #cite(<SAPNewsGartnerMQERP2024>), und die breite Abdeckung an Geschäftsmodulen sichert langfristige Individualität #box([#cite(<SAPPartnerEdge2025>).])

== Wettbewerbsvorteile der Wettbewerber <sec-wettbewerber>

Im Enterprise-Softwaremarkt konkurriert SAP gemäß Gartner #cite(<SAPNewsGartnerMQERP2024>) vor allem mit Salesforce, Oracle und Microsoft.

Salesforce ist der dominierende Anbieter im Bereich #acrs("CRM"). Die Stärke von Salesforce liegt in einer intuitiven Benutzeroberfläche und einem breiten Ökosystem an Drittanbieter-Integrationen, wodurch Salesforce besonders attraktiv für Unternehmen ist, die eine schnell implementierbare CRM-Lösung suchen, ohne eine vollständige ERP-Migration einzugehen. 

Oracle differenziert sich über eine ausgeprägte Stärke in regulierten Branchen sowie ihrer Dominanz im Bereich Datenbanken, wodurch sie einfache Integrationen und Compliance-Lösungen bieten können. Microsoft wiederum nutzt die flächendeckende Verbreitung von Azure, Microsoft 365 und Teams als Plattformhebel für Dynamics 365. Die Bereitschaft vieler Unternehmen, bestehende Microsoft-Infrastruktur zu nutzen, senkt die Einstiegshürde und schafft einen Kanal-Wettbewerbsvorteil, der über Produktstärke hinausgeht.

= Gestaltung der Vertriebskanäle <sec-vertriebskanaele>
Eine Vertriebseinheit führt Vertriebsaktivitäten durch; mehrere solcher Einheiten bilden einen Vertriebskanal zum Kunden #cite(<Homburg2016>, supplement: "S. 196ff."). Alle Vertriebskanäle eines Unternehmens zusammen bilden ein Vertriebssystem.

Die Konfiguration von Vertriebskanälen wird entlang dreier Dimensionen bewertet #cite(<Homburg2016>, supplement: "S. 210"):

- *Länge*: Die Anzahl an Zwischeninstanzen zwischen Anbieter und Endkunden von Direktkanälen bis hin zu Multi-Channel-Systemen.
- *Breite*: Die Anzahl paralleler Kanäle auf derselben Stufe, die von intensiver bis hin zu exklusiver Verteilung reicht.
- *Tiefe*: Die Anzahl paralleler Kanäle auf unterschiedlichen Stufen, die von Single-Channel-Systemen bis zu Multi-Channel-Systemen reicht.

Um einen Wettbewerbsvorteil zu erlangen, ist ein Management der Vertriebskanäle erforderlich, welches nach #cite(<brunner2015crosschannel>, form: "prose") als Cross-Channel-Management bezeichnet wird, mit dem Ziel, ein konsistentes Kundenerlebnis über alle Kanäle sicherzustellen #cite(<brunner2015crosschannel>).

SAP betreibt ein selektives Multi-Channel-System, das nach Kundengröße und strategischer Bedeutung differenziert. Die Kundensegmentierung folgt dabei einem dreistufigen Modell, das direkt auf die Kanalkonfiguration und Betreuungsintensität wirkt #cite(<SAPBDCGtm2026>, supplement: "S. 18"):

- *Digital (Corporate)*: #acr("KMU"), die von einer begrenzten Anzahl an #acrpl("AE") betreut werden. Die Implementierung wird vollständig an Partner übergeben.
- *Large Enterprise*: Größere Kunden, denen dedizierte #acrpl("AE") je Account zugewiesen sind, ergänzt durch cross-funktionale Vertriebsmitarbeiter. Die Implementierung erfolgt teils durch SAP, teils durch Partner.
- *#acrs("SCP")-Customers*: Umfasst die strategisch wichtigsten Kunden, die durch eigene, exklusiv zugewiesene Abteilungen betreut werden. Bei der Implementierung ist stets ein SAP-Beratungsteam involviert.

Die Länge reicht von indirekter Betreuung im Digital-Segment über hybride Modelle bei Large Enterprise bis zur exklusiven Direktbetreuung bei #acrs("SCP")-Kunden. Die Breite ist selektiv, da Zertifizierungs- und Kompetenzanforderungen die Qualität der Kundenerfahrung sichern und die Anzahl der kooperierenden Partner begrenzen #cite(<SAPPartnerEdge2025>). Die Tiefe erweitert SAP durch Co-Sell-Partnerschaften mit Hyperscalern wie AWS, Google Cloud und Microsoft Azure als zusätzliche Vertriebskanäle #cite(<SAPBDCGtm2026>, supplement: "S. 28"). Ein einheitliches Cloud-Pricing-Framework gewährleistet kanalübergreifend ein konsistentes Kundenbild #cite(<SAPPricing2026>, supplement: "S. 18").

= Customer Relationship Management
#acr("CRM") ist nach #cite(<homburg2000customer>, form: "prose", supplement: "S. 7") eine strategische Managementdisziplin, die darauf ausgerichtet ist, langfristige, profitable Kundenbeziehungen aufzubauen und zu erhalten, indem Daten zur Kundenauswahl, -priorisierung und -individualisierung genutzt werden #cite(<homburg2000customer>, supplement: "S. 7").
Die fundamentalen Ziele des #acrs("CRM") gliedern sich in die folgenden vier Dimensionen: 

- *Kundenzufriedenheit und -loyalität*: Balance zwischen Kundenzufriedenheit und Wichtigkeit der Kundenbeziehung, um eine langfristige Bindung zu sichern.
- *Vertrauen*: Das Vertrauen in die Produkte, Prozesse und Arbeitsweise sowie die Kontaktperson des Geschäftspartners.
- *Profitabilität der Kundenbeziehung*: Die wirtschaftliche Rentabilität jeder Kundenbeziehung wird kontinuierlich überwacht und optimiert.
- *Wert des Kunden*: Beschreibt den durch Kundenportfolio und Anbieterposition zusammengesetzten Mehrwert des Kunden für das Unternehmen #cite(<Homburg2016>, supplement: "S. 221 ff."). 

Um den Wert eines Kunden für das Unternehmen zu bestimmen, wird die ABC-Analyse der Kunden eingesetzt, bei welcher Kunden in Klassen von A bis C eingeteilt werden. A-Kunden erhalten intensive Betreuungsressourcen, während C-Kunden über skalierbare Kanäle bedient werden.

Damit das #acrs("CRM") erfolgreich umgesetzt wird, werden verschiedene Instrumente genutzt, um die Kundenbeziehung zu gestalten. Dazu gehören:

- *Modellierung der Kundenbeziehung*: Strukturiert den Kundenlebenszyklus in Phasen, um auf Basis von Triggern zielgerichtete Bindungsmaßnahmen abzuleiten.
- *Beschwerdemanagement*: Fokussiert sich auf die Bearbeitung von Kundenbeschwerden, um bei Unzufriedenheit schnell reagieren und die Kundenbindung wiederherstellen zu können.
- *#acr("KAM")*: Fokus auf die individuelle Betreuung von wichtigen Kunden, um langfristige Partnerschaften aufzubauen und zu pflegen.

SAP ist sowohl Anbieter als auch Anwender seiner #acrs("CRM")-Lösungen. Als Anbieter vertreibt SAP die #acr("CX")-Suite und nutzt diese ebenfalls intern. Entsprechend der in @sec-vertriebskanaele beschriebenen Segmentierung werden #acrs("SCP")-Kunden und Large-Enterprise-Accounts durch dedizierte #acrpl("AE") und globales #acrs("KAM") betreut, mit Buying-Center-spezifischer Ansprache für C-Level-Entscheidungsträger. 

Zur Gestaltung der Kundenbeziehung geht SAP proaktiv Kontakt mit ihren Kunden durch regelmäßige Geschäftsbeziehungsbesuche und die frühzeitige Identifikation von Erweiterungspotenzial durch Post-Sales Teams #cite(<SAPBDCGtm2026>, supplement: "S. 20") ein. Dabei nutzt SAP ein #acr("KAM")-Programm, um die strategisch wichtigsten Kunden im #acr("SCP")-Segment zu betreuen. Darüber hinaus wird ein Beschwerdemanagement durch Post-Sales Teams betrieben sowie dedizierten Premium-Engagement Beratern eingesetzt, welche sich bei Problemen direkt um die Kunden kümmern#cite(<SAPBDCGtm2026>, supplement: "S. 20"). Ein Support erfolgt durch das #acr("GEM"), welches bei Problemen als zentraler Ansprechpartner für Kundenanfragen fungiert und die Koordination zwischen Kunden, Support- und Entwicklungsteams übernimmt #cite(<sap_gem_2026>).

#pagebreak()

= Vertriebsbezogene Herausforderungen der nächsten fünf Jahre
Eine zentrale Herausforderung der SAP wird die zunehmende Konkurrenz im #acr("SaaS")-Markt sein, da Kunden durch die Demokratisierung von #acrs("KI")-Technologien zunehmend beginnen, eigene IT-Lösungen zu entwickeln, wodurch die Nachfrage nach #acr("SaaS") abnimmt
  #cite(<williams2025ai>). 
Zunehmend zeigen #acr("KI")-Anbieter wie Anthropic innovative Lösungen, die spezifische Geschäftsprozesse adressieren und durch eigene Infrastruktur die Preise von SAP unter Druck setzen
  #cite(<anthropic2026finance>) 
  #cite(<openai2026gemeinsame>). 
SAP muss hier den Mehrwert der durchgängigen Plattform überzeugend kommunizieren sowie ihren Fokus auf Compliance und regulatorische Anforderungen stärken.

Um gegenüber Wettbewerbern einen #acr("USP") hinsichtlich #acr("KI") zu erzielen, setzt SAP verstärkt auf strategische Kooperationen mit führenden #acrs("KI")-Forschungslaboren sowie Beratungspartnern. Beispiele hierfür sind die Akquisition von Prior Labs, sowie die Kooperation mit n8n im Bereich Workflow-Automatisierung und Agentic AI
  #cite(<sap2026prior>)
  #cite(<schimroszik2026n8n>).
Bei der Implementierung von #acr("KI")-Lösungen setzt SAP zunehmend auf eine Auslagerung von Implementierungen an Partner, wobei eigene SAP-Berater auf #acr("KI")-spezialisierte Kundenprojekte fokussieren, um die Time-to-Market zu verkürzen #cite(<SAPBDCGtm2026>, supplement: "S. 22").

Eine operative Herausforderung bleibt die Migration der verbleibenden On-Premise-Kunden in die Cloud. Dieses Risiko muss von SAP zunehmend adressiert werden, da die Cloud-Transformation nicht nur Umsatzpotenziale erschließt, sondern auch die Grundlage für die Einführung von #acr("KI")-Funktionalitäten bildet.

]
