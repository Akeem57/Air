=begin
SPLIT EN FONCTION

Créez un programme qui découpe une chaîne de caractères en tableau en
fonction du séparateur donné en 2e argument.
Votre programme devra intégrer une fonction prototypée comme ceci :
ma_fonction(string_à_couper, string_séparateur) { // syntaxe selon votre langage
# votre algorithme
return (tableau)
}
Exemples d’utilisation :
$> python exo.py “Crevette magique dans la mer des étoiles” “la”
Crevette magique dans
mer des étoiles
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.

=end

if ARGV.length != 2
    puts "error"
    exit
end

def cut_sentence_by_arg(sentence, cut)
    cuted_sentence = sentence.split(cut)
    return cuted_sentence
end

sentence = ARGV[0].gsub(/[\s\t\n]/, '')
cut = ARGV[1]

result = cut_sentence_by_arg(sentence, cut)

puts result

