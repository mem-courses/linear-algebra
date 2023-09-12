// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), date: none, body) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(
    paper: "iso-b5",
    margin: (left: 15mm, right: 15mm, top: 20mm, bottom: 20mm),
    numbering: "1",
    number-align: center,
  )
  set text(font: ("New Computer Modern", "Simsun"), lang: "zh")
  show math.equation: set text(weight: 400)

  // Set paragraph spacing.
  show par: set block(above: 1.2em, below: 1.2em)

  set heading(numbering: "1.1)")
  set par(leading: 0.75em)

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1.2em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.8em,
    bottom: 0.8em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center)[
        *#author.name* \
        #author.email \
        #author.phone
      ]),
    ),
  )

  // Main body.
  set par(justify: true)

  body
}