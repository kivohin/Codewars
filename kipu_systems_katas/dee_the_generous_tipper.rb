def calc_tip(p, r)
	price_round = p.round(-1)

	temp_tip = price_round / 10

	if r == 1
		final_tip = temp_tip + 1

	elsif r == 0
		final_tip = temp_tip - 1

	else
		final_tip = (temp_tip / 2) - 1
	end

	final_tip = 0 if final_tip < 0
	final_tip
end

puts calc_tip(15, 1)
puts calc_tip(14, 1)
puts calc_tip(4, 1)
puts calc_tip(5, 1)

puts calc_tip(15, 0)
puts calc_tip(14, 0)
puts calc_tip(4, 0)
puts calc_tip(5, 0)

puts calc_tip(15, -1)
puts calc_tip(14, -1)
puts calc_tip(4, -1)
puts calc_tip(5, -1)