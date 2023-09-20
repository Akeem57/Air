=begin
CONTROLE DE PASS SANITAIRE

Créez un programme qui supprime d’un tableau tous les éléments qui ne
contiennent pas une autre chaîne de caractères.
Utilisez une fonction de ce genre (selon votre langage) :
ma_fonction(array_de_strings, string) {
# votre algorithme
return (nouvel_array_de_strings)
}
Exemples d’utilisation :
$> python exo.py “Michel” “Albert” “Thérèse” “Benoit” “t”
Michel
$> python exo.py “Michel” “Albert” “Thérèse” “Benoit” “a”
Michel, Thérèse, Benoit
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
=end


if ARGV.length < 1 || ARGV.any?{|arg| arg.match?(/\d+/)}
    puts "error"
    exit
end

def who_has_checkChar_goes_out(arguments,check_char)
    i=0
    result = []
    while i < arguments.length
        if !arguments[i].match?(/#{check_char}/i)
            result << arguments[i] #on ajoute le mot correspondant au tableau
        end
        i+=1 
    end
    return result
end

arguments = ARGV[0...-1].map{|words| words.gsub(/["'“”]/, "")} #.map quand on agit sur un tableau
check_char = ARGV[-1].gsub(/["'“”]/, "")


final_result = who_has_checkChar_goes_out(arguments, check_char)
puts final_result.join(", ")




