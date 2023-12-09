#let prob(bgcolor: luma(248), border: luma(88), text) = block(
  fill: bgcolor,
  width: 100%,
  inset: 0.8em,
  radius: 4pt,
  stroke: border + 0.5pt,
  text
)

#let note(..x) = { prob(bgcolor: rgb(219, 242, 249), border: rgb(51, 166, 184), ..x) }
#let info(..x) = { prob(bgcolor: rgb(210, 247, 253), border: rgb(88, 178, 220), ..x) }
#let warn(..x) = { prob(bgcolor: rgb(254, 234, 207), border: rgb(255, 196, 8), ..x) }
#let prof(..x) = { prob(bgcolor: luma(252), border: luma(135), ..x) }
#let answer(..x) = { prob(bgcolor: rgb(254, 234, 207), border: rgb(255, 196, 8), ..x) }


#let badge(content, fill: rgb("#000000")) = box(
	fill: fill,
	radius: 4pt,
	inset: 1pt,
	outset: 3pt,
	text(
		content,
		weight: "bold",
		size: 10pt,
		fill: rgb("#ffffff")
	)
)

#let ac = badge("Correct", fill: rgb("#25ad40"))
#let pc = badge("Partially Correct", fill: rgb("#01bab2"))
#let wa = badge("Wrong Answer", fill: rgb("#ff4f4f"))
#let un = badge("Unknown", fill: rgb("#5c5c5c"))


#let dp = math.display
#let sp = math.space
#let eps = math.epsilon
#let sim = "~ "
#let st = "s.t. "
#let pm = math.plus.minus
#let mp = math.minus.plus


#let EEE = math.bold("E")
#let AAA = math.bold("A")
#let OOO = math.bold("O")
#let III = math.bold("I")



#let def(x) = { text("【" + x + "】", weight: "bold") }
#let deft(x) = { text("【" + x + "】", weight: "bold", fill: rgb("#FFFFFF")) }
#let bb(x) = { text(x, weight: "bold") }

#let seqn(x,n) = (
  math.attach(x, br: math.upright("1")) + math.upright(",") + math.attach(x, br: math.upright("2")) + math.upright(",") + math.dots.c + math.upright(",") + math.attach(x, br: math.upright(n))
)
#let vecn(x,n) = (
  math.display(math.mat(
    math.attach(x, br: math.upright("1")),
    math.attach(x, br: math.upright("2")),
    math.dots.c,
    math.attach(x, br: math.upright(n))
  ))
)