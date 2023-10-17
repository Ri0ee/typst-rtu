#let project(
  title: "",
  subtitle: "",
  subject: "",
  authors: (),
  department: "",
  institute: "",
  year: "",
  logo: "rtu_logo.png",
  bibliography_file: "../works.bib",
  body
) = {

  set document(
    author: authors.at(0).name,
    title: title
  )

  set page(
    paper: "a4",
    margin: (
      top: 3cm,
      bottom: 2cm,
      left: 3cm,
      right: 2cm
    )
  )

  set text(font: "Times New Roman", lang: "en")

  set par(justify: true)
  set block(spacing: 1em)

  align(center)[
    #text(22pt, institute)
  ]
  align(center)[
    #text(22pt, department)
  ]
  v(1em)

  align(center)[
    #image(logo, width: 40%)
  ]
  v(2em)

  align(center)[
    #block([
        #text(20pt, subject)
      \ #text(18pt, style: "italic", title)
      \ #text(16pt, subtitle)
    ])
  ]

  align(right + horizon)[
    #block([
      #align(left)[
          #for author in authors [
            \ #text(14pt, author.name)
            \ #text(14pt, author.group)
            \ #text(14pt, author.id)
            #v(1em)
        ]
      ]
    ])
  ]

  align(center + bottom)[
    #text(16pt, "Riga, " + year)
  ]

  pagebreak()
  outline(depth: 3, indent: true)

  show heading.where(level: 1): it => [
    #pagebreak(weak: true)
    #set align(center)
    #set text(16pt)
    #block(counter(heading).display() + ". " + it.body)
    #v(1em)
  ]

  show heading.where(level:2): it => [
    #set align(center)
    #set text(14pt)
    #v(24pt)
    #block(counter(heading).display() + ". " + it.body)
    #v(1em)
  ]

  show heading.where(level:3): it => [
    #set align(left)
    #set text(12pt)
    #v(6pt)
    #block(counter(heading).display() + ". " + it.body)
    #v(1em)
  ]

  set par(justify: true)
  set heading(numbering: "1.1")
  counter(page).update(1)
  set page(numbering: "1", number-align: right)
  body
  bibliography(bibliography_file, style: "ieee")
}
