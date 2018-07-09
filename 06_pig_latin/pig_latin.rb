#write your code here


################################manipulation string
def translate(string)
    
    vowels = ["a", "e", "i", "o", "u", "y"]  
    two_letters = ["ch", "sh", "qu", "th", "br"]
    three_letters = ["thr", "sch", "squ"]

    words = string.split(" ") ######divise la chaine en array

    result = []
    
    words.each do |word|

        if vowels.include? word[0] ##### index 0 = première lettre de chaque mot
            result.push word + 'ay' ###rajoute à la fin de l'élément
            
        else
            if three_letters.include? word[0] + word[1] + word[2] ####verification correspondance  lettres
                first_three_letters = word.slice!(0,3)
                result.push word + first_three_letters + 'ay'
                
            elsif  two_letters.include? word[0] + word[1] 
                first_two_letters = word.slice!(0,2)
                result.push word + first_two_letters + 'ay'
                
            else
                first_letter = word.slice!(0)
                result.push word + first_letter + 'ay'
            end 

        end    

    end 
    
    return result.join(" ") ###### reconvertit le tableau en chaine de caractere

end