#let print_page_one_content(full_name, last_name, address) = {
  [
    #set text(20pt, tracking: 0.5pt)

    To #full_name \
    The Cupboard Under the Stairs \
    #address

    Dear #last_name,

    #h(2em) We are pleased to inform you that you have been accepted at Hogwarts School of Witchcraft and Wizardry.

    Students shall be required to report to the Chamber of Reception, upon arrival, the dates for which shall be July advised.

    Please ensure that the utmost attention be made to the list of requirements attached herewith.

    We very much look forward to receiving you as part of Hogwarts heritage.

    Yours sincerely, #v(-0.5em)

    #text(font: "Dancing Script", spacing: 100%, tracking: 0pt, "Minerva McGonagall") #v(-0.5em)

    Professor McGonagall

    #v(1fr)
  ]
}

#let print_page_two_content() = {
  [
    #set text(16pt, tracking: 0.5pt * 16 / 18)

    UNIFORM \
    First-year students will require: \
    #h(2em) Three sets of plain work robes (black) #v(-2em) \
    #h(2em) One plain pointed hat (black) for day wear #v(-2em) \
    #h(2em) One pair of protective gloves (dragon hide or similar) #v(-2em) \
    #h(2em) One winter cloak (black, with silver fastenings) #v(-2em) \
    Please note that all pupil's clothes should carry name tags.

    BOOKS \
    All students should have a copy of each of the following: \
    #h(2em) The Standard Book of Spells (Grade 1) by Miranda Goshawk \
    #h(2em) A History of Magic by Bathilda Bagshot \
    #h(2em) Magical Theory by Adalbert Waffling \
    #h(2em) A Beginner's Guide to Transfiguration by Emeric Switch \
    #h(2em) One Thousand Magical Herbs and Fungi by Phyllida Spore \
    #h(2em) Magical Drafts and Potions by Arsenius Jigger \
    #h(2em) Fantastic Beasts and Where to Find Them by Newt Scamander \
    #h(2em) The Dark Forces: A Guide to Self-Protection by Quentin Trimble \

    OTHER EQUIPMENT \
    #h(2em) 1 wand #v(-2em) \
    #h(2em) 1 cauldron (pewter, standard size 2) #v(-2em) \
    #h(2em) 1 set glass or crystal phials #v(-2em) \
    #h(2em) 1 telescope #v(-2em) \
    #h(2em) 1 set brass scales #v(-2em) \

    Students may also bring, if they desire, an owl OR a cat OR a toad.

    #align(
      center,
      text(
        14pt,
        tracking: 0.5pt * 14 / 18,
        "PARENTS ARE REMINDED THAT FIRST YEARS ARE \n NOT ALLOWED THEIR OWN BROOMSTICK",
      ),
    )
  ]
}

#let print_letter(font, full_name, last_name, address, background, logo) = {
  set text(font: font, spacing: 250%)
  set page(
    margin: (x: 1in, top: 2.75in, bottom: auto),
    background: background,
    header: v(12mm) + align(center + top, logo),
    footer: align(
      center + bottom,
      {
        set par(leading: 8pt)
        text(12pt, tracking: 0.5pt * 12 / 18, "Hogwarts School of Witchcraft and Wizardry")
        linebreak()
        text(
          8pt,
          tracking: 0.5pt * 8 / 18,
          [
            Headmaster: Albus Dumbledore \
            (Order of Merlin, First Class, Grand Sorc., Chf. Warlock, \
            Supreme Mugwump, International Confed. of Wizards)
          ],
        )
      },
    )
      + v(12mm),
  )

  print_page_one_content(full_name, last_name, address)

  pagebreak()

  print_page_two_content()
}
