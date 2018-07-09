
########################################nombre le plus grand

def who_is_bigger(a, b, c)    
   
    if a == nil || b == nil || c == nil #####détection de nil (non identifié, null)
        return "nil detected"
    
    elsif a > b && a > c  #########comparaisons param plus grand
        return "a is bigger"
   
    elsif b > a && b > c
        return "b is bigger"
    
    elsif c > a && c > b
        return "c is bigger"
    end
end


######################################### mot en majuscule et reverse
def reverse_upcase_noLTA(string)
    string.upcase.reverse.delete("LTA") #######On met tout en majuscule, met la chaine à l'envers et supprime les lettres LTA
end


##################################verification du nombre 42 dans array
def array_42(a)
    if a.include?(42)
       return true
    else
        return false
    end
end



#####################################manipulation de tableau
def magic_array(a)
 a.flatten.uniq.sort.delete_if {|n| n%3 == 0}.map {|i| i*2}  
end
#####On sors les arrays contenus dans d'autres arrays (flatten )
##### On supprime les doublons( .uniq )
#### On classe l'array  (.sort )
#####On supprime les multiples de 3 (.delete_if n = multiple de 3.)
#### On invoque chaque élément de l'array (.map )