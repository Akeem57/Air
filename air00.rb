=begin
Créez un programme qui découpe une chaîne de caractères en tableau
(séparateurs : espaces, tabulations, retours à la ligne).
Votre programme devra utiliser une fonction prototypée comme ceci :
ma_fonction(string_à_couper, string_séparateur) { // syntaxe selon votre langage
# votre algorithme
return (tableau)
}
Exemples d’utilisation :
$> python exo.py “Bonjour les gars”
Bonjour
les
gars
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.

=end

if ARGV.length != 1 
    puts "error"
    exit
end

def all_words_in_a_string(sentence,separator)
    words_in_a_tab = sentence.split(separator)
    return words_in_a_tab
end

sentence = ARGV[0]
separator = /[\s\t\n]+/

words = all_words_in_a_string(sentence, separator)

puts words
