#write your code here


#######################formate le résultat en heure, minutes et secondes
def time_string(t)

	Time.at(t).utc.strftime("%H:%M:%S")
	
end