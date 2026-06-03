// Renders figure with source in-text but excludes source from List of Figures.
// The source is appended to the rendered caption via a scoped show rule,
// but since the figure's caption body stays clean, the outline (List of Figures)
// only shows the descriptive text.
// Labels must be passed via lbl: <LabelName> instead of trailing <LabelName>.
#let sourcefigure(body, caption: none, source: none, lbl: none, ..args) = [
  #show figure.caption: it => context {
    it.supplement
    [ ]
    it.counter.display(it.numbering)
    it.separator
    it.body
    if source != none [ #source.]
  }
  #figure(body, caption: caption, ..args)#if lbl != none {lbl}
]

#let is-in-dict(dict-type, state, element) = {
  context {
    let list = state.get()
    if element not in list {
      panic(element + " is not a key in the " + dict-type + " dictionary.")
      return false
    }
  }

  return true
}

#let display-link(dict-type, state, element, text) = {
  if is-in-dict(dict-type, state, element) {
    link(label(dict-type + "-" + element), text)
  }
}

#let display(dict-type, state, element, text, link: false) = {
  if link {
    display-link(dict-type, state, element, text)
  } else {
    text
  }
}