#write your code here
#############################return mot 
def echo(word)
	return "#{word}"
end

##########################################mot en majuscule
def shout(word)
	return "#{word}".upcase
end

##########################################fonction répétitive	
def repeat(word, i=2)##valeur par défaut
       
    return "#{word}" + ("#{word}" * (i-1))
end

#################################################premiere lettre de chaque mot	
def start_of_word(word, nbr)
	return "#{word}".slice(0, nbr )####renvoie une sous-chaine de caractère (position, nbr caractere recupérés)
end

#############################################premier mot de chaque string	
def first_word(word)
	return "#{word}".split.first ###### divise le premier element du reste de la chaine
end

	
##########################################################Première lettre en majuscule de chaque mot
def titleize(sentence)
    small_words = ["and", "the"]          

    capitalized_words = sentence.split(' ').map do |word| ####divise en sous chaine chaque element du bloc 
    
    if small_words.include?(word) 
        then word
    else word.capitalize
    end
    end
    capitalized_words.first.capitalize!
    capitalized_words.join(' ') ####reconvertit le tableau en chaine de caracteres
end