require 'pry'

class Array
	def map_with_fallback(i, fallback: 0)
    unless self.empty?	
			new_arry = self.map do |item|
				i.call(item)
			end
			return new_arry
		end
    fallback.call if fallback != 0
  end
end

items = [1,2,3]
no_items = []

p items.map_with_fallback(->(i) { i + 1 })
p no_items.map_with_fallback(->(i){}, fallback: -> { 'empty' })
