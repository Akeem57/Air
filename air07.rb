=begin
INSERTION DANS UN TABLEAU TRIE

Créez un programme qui ajoute à une liste d’entiers triée un nouvel entier
tout en gardant la liste triée dans l’ordre croissant. Le dernier argument est
l’élément à ajouter.
Utilisez une fonction de ce genre (selon votre langage) :
sorted_insert(array, new_element) {
# your algo
return (new_array)
}
Exemples d’utilisation :
$> ruby exo.rb 1 3 4 2
1 2 3 4
$> ruby exo.rb 10 20 30 40 50 60 70 90 33
10 20 30 33 40 50 60 70 90
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
=end

if ARGV.length < 2 || ARGV.any?{|args| !args.match?(/\A\d+\z/)}
    puts "error"
    exit
end

def insert_number_in_sorted_list (sorted_list, number_to_insert)
    i=0
    inserted = false

    while i < sorted_list.length
        if sorted_list[i] > number_to_insert
            sorted_list.insert(i, number_to_insert)
            inserted = true
            break  
        end
        i += 1
    end
    return sorted_list
end

sorted_list = ARGV[0...-1].map{|args| args.to_i}
number_to_insert = ARGV[-1].to_i

result = insert_number_in_sorted_list(sorted_list, number_to_insert)
puts result.join(' ')