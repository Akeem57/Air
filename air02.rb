=begin
CONCAT

Créez un programme qui transforme un tableau de chaînes de caractères
en une seule chaîne de caractères. Espacés d’un séparateur donné en
dernier argument au programme.
Utilisez une fonction de ce genre (selon votre langage) :
ma_fonction(array_de_strings, separateur) {
# votre algorithme
return (string)
}
Exemples d’utilisation :
$> python exo.py “je” “teste” “des” “trucs” “ “
Je teste des trucs
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
=end


if ARGV.length <= 1
    puts "error"
    exit
end

def make_sentence(arguments, separator)
    result = arguments.join(separator)
    return result
end

arguments = ARGV
separator = " "

sentence = make_sentence(arguments,separator)

print sentence
puts ""