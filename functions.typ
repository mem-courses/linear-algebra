#let mem_equations(..args) = {
	let arr = ()
	for line in args.pos() {
		let cur = ""
		let isFirst = true
		for (i, v) in line.enumerate() {
			if i + 1 == line.len() {
				cur += "="
				if v >= 0 {
					cur += str(v)
				} else {
					cur += math.minus
					cur += str(-v)
				}
			} else {
				if v != 0 {
					if not isFirst and v >= 0 {
						cur += math.plus
					}
					isFirst = false
					if v >= 0 {
						if (v != 1) {
							cur += str(v)
						}
					} else {
						cur += math.minus
						if (v != -1) {
							cur += str(-v)
						}
					}
					cur += math.attach("x", br: str(i + 1))
				}
			}
		}
		arr.push(math.display(cur))
	}
	return math.display(math.cases(..arr))
}