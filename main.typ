// ------------------------------------------------------------
// Template 
// ------------------------------------------------------------

// === Form Section: Fill out your details here ===
#let var_title                 = "Vertriebsmanagement der SAP SE"
#let var_company_name          = "SAP SE"
#let var_company_street        = "Dietmar-Hopp-Allee 16"
#let var_company_city_zip      = "69190 Walldorf"
#let var_author_name           = "Julian Konz"
#let var_course                = "WWI23SCB"
#let var_university_course_supervisor = "Prof. Dr. -Ing. Clemens Martin"
#let var_student_id            = "3468097"
#let var_university_name       = "Duale Hochschule Baden-Württemberg Mannheim"
#let var_university_course     = "Wirtschaftsinformatik Sales & Consulting"
#let var_university_city       = "Mannheim"
#let var_university_supervisor = "Ich Thuan Cong"
#let var_university_email      = "thuan.ich.cong@ibm.com"
#let var_university_phone      = "var_university_phone"
#let var_company_supervisor    = "var_company_supervisor"
#let var_company_supervisor_mail = "var_company_supervisor_mail"
#let var_company_supervisor_phone = "var_company_supervisor_phone"
#let var_period_start          = "20.05.2026"
#let var_period_end            = "22.07.2026"
#let var_logo_left             = "pictures/DHBW_MA_Logo.jpg"
#let var_logo_right            = "pictures/SAP_logo.jpg"

// Derived variables
#let var_company_address = var_company_street + " " + var_company_city_zip
#let var_period          = var_period_start + " - " + var_period_end
#import "content.typ": content

// ------------------------------------------------------------
// Imports
#import "acronyms.typ": acronyms 
#import "acronym-lib.typ": init-acronyms, print-acronyms, acr, acrpl, acrs, acrspl, acrl, acrlpl, acrf, acrfpl

#import "variables.typ": variables
#import "variables-lib.typ": init-variables, print-variables, var, varpl, vars, varspl, varl, varlpl, varf,varfpl
// ------------------------------------------------------------
// Global Styles
#set cite(style: "harvard-cite-them-right") //harvard-cite-them-right
#set text(font: "Arial", size: 12pt, lang: "de")
#set par(leading:  1.5em, spacing: 2.5em)

#let title-size = 1.5em
#let subtitle-size = 1.25em
#let body-size = 1em
#let spacing = 1em
#let small-spacing = 0.5em

#let left-logo-height = 1.5cm
#let right-logo-height = 1.5cm

#let header-content = {}

#let generate-footer-content(numbering) = context {
  let heading_selector = heading.where(level: 1)
  let all_headings = query(heading_selector)
  let current_page = here().page()
  let relevant_headings = ()
  for i in range(all_headings.len()) {
    let h = all_headings.at(i)
    let heading_page = h.location().page()
    let next_heading_page = if i + 1 < all_headings.len() { 
      all_headings.at(i + 1).location().page() 
    } else { 
      current_page + 1
    }
    if heading_page == current_page or (heading_page < current_page and next_heading_page > current_page) {
      relevant_headings.push(h)
    }
  }
  line(length: 100%)
  stack(
    dir: ltr,
    spacing: 1em,
    align(left, {
      if relevant_headings.len() > 0 {
        relevant_headings.map(h => h.body).join(" • ")
      } else {
        ""
      }
    }),
    align(right, text(size: 12pt, weight: "regular", counter(page).display(numbering)))
  )
}

// ------------------------------------------------------------
// Title Page
#stack(
  dir: ltr, spacing: 1fr,
  align(horizon, image(var_logo_right, height: right-logo-height)),
  align(horizon, image(var_logo_left, height: left-logo-height)),
)
  
#v(spacing*3)
#set par(leading: 0.5em)
#align(center, text(weight: "semibold", size: title-size, var_title))
#set par(leading:  1.0em)

// #v(spacing)
// #align(center, text(weight: "semibold", size: title-size, "SPERRVERMERK"))
#v(small-spacing)
#align(center, text(weight: "semibold", size: subtitle-size, "Modul Sales Management"))
#v(small-spacing)
#align(center, text(size: body-size, "aus dem Studiengang " + var_university_course))
#v(small-spacing)
#align(center, text(size: body-size, "an der " + var_university_name))
#v(spacing)
#align(center, text(size: body-size, "von"))
#v(small-spacing)
#align(center, text(weight: "medium", size: subtitle-size, var_author_name))

#v(spacing*2)
#align(center)[
  #grid(
    columns: (auto, auto),
    row-gutter: spacing - 0.1em,
    column-gutter: 2.5em,

    text(weight: "semibold", align(left, "Bearbeitungszeitraum:")),
    text(align(left, var_period)),

    text(weight: "semibold", align(left, "Matrikelnummer, Kurs:")),
    text(align(left, var_student_id + ", " + var_course)),

    text(weight: "semibold", align(left, "Studiengangleitung:")),
    text(align(left, var_university_course_supervisor)),

    text(""), text(""),

    text(weight: "semibold", align(left, "Ausbildungsfirma:")),
    stack(spacing: spacing - 0.1em,
      text(align(left, var_company_name)),
      text(align(left, var_company_street)),
      text(align(left, var_company_city_zip))
    ),

    // text(""), text(""),

    // text(weight: "semibold", "Betreuer der Ausbildungsfirma:"),
    // stack(spacing: spacing - 0.1em,
    //   text(var_company_supervisor),
    //   text(var_company_supervisor_mail),
    //   text(var_company_supervisor_phone)
    // ),

    text(""), text(""),

    text(weight: "semibold", align(left, "Bewertet durch:")),
    stack(spacing: spacing - 0.1em,
      text(align(left, var_university_supervisor)),
      text(align(left, var_university_email)),
      // text(align(left, var_university_phone))
    )
  )
]

#pagebreak()

// ------------------------------------------------------------
// Eidesstattliche Erklärung

#set page(
  paper: "a4",
  margin: (left: 2cm, right: 4cm, top: 2.5cm, bottom: 2.5cm),
  header: header-content,
  footer: generate-footer-content("I"),
  numbering: "I",
)
#counter(page).update(1)
#init-acronyms(acronyms)
#init-variables(variables)
#set heading(numbering: "I.",outlined: false)
#show heading.where(level: 1): it => {
  set text(size: 18pt, weight: "bold")
  v(0em)
  it
  v(0.75em)
}
#show heading.where(level: 2): it => {
  set text(size: 16pt, weight: "bold")
  v(0.5em)
  it
  v(0.5em)
}
#show heading.where(level: 3): it => {
  set text(size: 14pt, weight: "bold")
  v(1em)
  it
  v(0.5em)
}
#set par(leading:  1.5em, spacing: 2.5em, justify: true)
#set text(hyphenate: true, lang: "de")


= Eidesstattliche Erklärung
Ich versichere hiermit, dass ich meine Projektarbeit mit dem Titel: "#text(var_title)" selbstständig verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel benutzt habe. Ich versichere zudem, dass die eingereichte elektronische Fassung mit der gedruckten #box("Fassung übereinstimmt.")

// Space for the signature
#v(7em)

// Table for "Ort, Datum" and "Unterschrift"
#grid(
  columns: (auto, auto),
  row-gutter: 1em,
  column-gutter: 12em, 
  // Left Column
  text(weight: "semibold", "____________________________"),
  // Right Column
  text(weight: "semibold", "________________________"),
  // Left Column
  text(weight: "semibold", "Ort, Datum"),
  // Right Column
  text(weight: "semibold", "Unterschrift")
)


//-----------------------------------------------------------------------------------
// Sperrvermerk
//-----------------------------------------------------------------------------------
// #pagebreak()
// = Sperrvermerk
// // Sperrvermerk Content
// Die nachfolgende Arbeit enthält vertrauliche Daten und Informationen der #box(var_company_name), #text(var_company_address). Der Inhalt dieser Arbeit darf weder als Ganzes noch in Auszügen Personen außerhalb des Prüfungsprozesses und des Evaluationsverfahrens zugänglich gemacht werden. Veröffentlichungen oder Vervielfältigungen der Projektarbeit #box("- auch auszugsweise -") sind ohne ausdrückliche Genehmigung der #box(var_company_name) in einem unbegrenzten Zeitrahmen nicht gestattet. Über den Inhalt dieser Arbeit ist Stillschweigen #box("zu wahren.")
// #v(1.5em)
// Firma und Logos sind eingetragene Warenzeichen der #box(var_company_name). Die Wiedergabe von Gebrauchsnamen, Handelsnamen, Warenbezeichnungen usw. in dieser Arbeit berechtigt auch ohne besondere Kennzeichnung nicht zu der Annahme, dass solche Namen im Sinne der Warenzeichen- und Markenschutz-Gesetzgebung als frei zu betrachten wären und daher von jedem benutzt #box("werden dürfen.")

//-----------------------------------------------------------------------------------
// Gleichbehandlung
//-----------------------------------------------------------------------------------
#pagebreak()
= Gleichbehandlung der Geschlechter
In dieser Praxisarbeit wird aus Gründen der besseren Lesbarkeit das generische Maskulinum verwendet. Weibliche und anderweitige Geschlechteridentitäten werden dabei ausdrücklich mitgemeint, soweit es für die Aussage #box("erforderlich ist.")

//-----------------------------------------------------------------------------------
// Disclaimer
//-----------------------------------------------------------------------------------
#pagebreak()
= Disclaimer
// Disclaimer Content
Ein Teil der Literatur, die für die Anfertigung dieser Arbeit genutzt wird, ist nur über die E-Book-Plattform o'Reilly abrufbar. Bei diesen Ressourcen existieren keine Seitennummern, es wird bei Verweisen stattdessen die #box("Kapitelnummer angegeben.")
#v(1.5em)
Um den Lesefluss zu verbessern, werden Abbildungen, Codebeispiele und Tabellen, die den Lesefluss stören, im Anhang platziert, auf den im Text zusätzlich #box("verwiesen wird.")

//-----------------------------------------------------------------------------------
// Abstract
//-----------------------------------------------------------------------------------
// #pagebreak()
// = Abstract

// #grid(
//   columns: (20%, auto),
//   row-gutter: 1.5em,
//   column-gutter: 0.5em,
//   text("Titel:"),
//   text(var_title),
// )
// #v(0.3em)
// #grid(
//   columns: (20%, auto),
//   row-gutter: 1.5em,
//   column-gutter: 0.5em,  
//   text("Verfasser:"),
//   text(var_author_name+" ("+var_company_name+")"),

//   text("Kurs:"),
//   text(var_course),
// )
// #v(1.5em)
// Fasse hier die Arbeit und die Ergebnisse kurz und prägnant zusammen.


//-----------------------------------------------------------------------------------
// Inhaltsverzeichnis, Abbildungsverzeichnis, Tabellenverzeichnis
//-----------------------------------------------------------------------------------
#pagebreak()
#set page(
  paper: "a4",
  margin: (
    left: 2cm,
    right: 4cm,
    top: 2.5cm,
    bottom: 2.5cm
  ),
  header: header-content,
  numbering: "I",
  footer: generate-footer-content("I"),
)
#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}

#show outline.entry.where(element: [Literaturverzeichnis] ): it => {
    v(12pt, weak: true)
    strong(it)
    numbering("i")
}

// Inhaltsverzeichnis (Table of Contents)
  #outline(
    title: "Inhaltsverzeichnis",
    depth: 3,
    indent: 1em,
    )
#pagebreak()

// Abbildungsverzeichnis (List of Figures)
  #outline(
    title: "Abbildungsverzeichnis",
    target: figure.where(kind: image)
  )
#pagebreak()
// Tabellenverzeichnis (List of Tables)
//   #outline(
//     title: "Tabellenverzeichnis",
//     target: figure.where(kind: table)
//   )
// #pagebreak()
// Codeverzeichnis (List of Code) 
//   #outline(
//     title: "Promptverzeichnis",
//     target: figure.where(kind: "Prompt"
//     )
//   )

// #pagebreak()
// Abkürzungsverzeichnis (List of Abbreviations)
#print-acronyms(5em)

// Variablenverzeichnis (List of Variables)
// #print-variables(5em)


//-----------------------------------------------------------------------------------
// Inhalt der Arbeit
//-----------------------------------------------------------------------------------
#set heading(numbering: "1.")
#set page(
  paper: "a4",
  margin: (
    left: 2cm,
    right: 4cm,
    top: 2.5cm,
    bottom: 2.5cm
  ),
  header: header-content,
  numbering: "1",
  footer: generate-footer-content("1"),
)
#pagebreak()
#counter(page).update(1)
#counter(heading).update(0)
#set heading(numbering: "1.",outlined: true)
#set math.equation(numbering: "(1)")

#content
//-----------------------------------------------------------------------------------
// Literaturverzeichnis
//-----------------------------------------------------------------------------------
#set page(
  paper: "a4",
  margin: (
    left: 2cm,
    right: 4cm,
    top: 2.5cm,
    bottom: 2.5cm
  ),
  header: header-content,
  numbering: "i",
  footer: generate-footer-content("i"),
)
#set heading(numbering: none)
#pagebreak()
#counter(page).update(1)
#counter(heading).update(0)
#set heading(numbering: "i.")
= Literaturverzeichnis
#bibliography("sources.bib",title: none)


//-----------------------------------------------------------------------------------
// Anhang
//-----------------------------------------------------------------------------------
// #pagebreak()
// = Anhang 
// // Anhang Text
// #heading("Anhang A", outlined: false)<AnhangA>