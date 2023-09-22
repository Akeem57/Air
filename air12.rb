=begin
Créez un programme qui trie une liste de nombres. Votre programme
devra implémenter l’algorithme du tri rapide (QuickSort).
Vous utiliserez une fonction de cette forme (selon votre langage) :
my_quick_sort(array) {
# votre algorithme
return (new_array)
}
Exemples d’utilisation :
$> python exo.py 6 5 4 3 2 1
1 2 3 4 5 6
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
Wikipedia vous présentera une belle description de cet algorithme de tri.
=end

if ARGV.length < 2 || !ARGV.all?{|args| args.match?(/\A\d+\z/)}
    puts "error"
    exit
end

def my_quick_sort(args)
    result = args.join(" ")
    return result
end

args = ARGV.sort

puts my_quick_sort(args)

