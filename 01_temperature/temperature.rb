#write your code here
	
################################fahrenheit en celsius
	def ftoc(f)
		celsius = (f - 32) * 5.0 / 9.0
		return celsius.round(1)
	end

#####################################celsius en fahrenheit
	def ctof(c)
		fahrenheit = c * (9.0 / 5.0) + 32
		return fahrenheit.round(1)
	end
