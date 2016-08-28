def calc_tip(p, r)
	price_round = p.round(-1)

	temp_tip = price_round / 10

	# final_tip = temp_tip + 1 if r == 1
	# final_tip = temp_tip - 1 if r == 0
	# final_tip = (temp_tip / 2) - 1 if r == -1

	final_tip = case r
		when 1 then temp_tip + 1
		when 0 then temp_tip - 1
		else (temp_tip / 2) - 1
	end

	return final_tip = 0 if final_tip < 0
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