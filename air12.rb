=begin
LE ROI DES TRIS

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

arr = ARGV.map(&:to_i)

def quicksort(arr)
    return arr if arr.length <= 1
  
    pivot = arr.delete_at(rand(arr.length)) # choisit un élément pivot de manière aléatoire dans le tableau arr.
    left, right = arr.partition { |element| element < pivot } # left aura les valeurs retournées par la condition si cela est vrai, right aura tous les autres > pivot
  
    return *quicksort(left), pivot, *quicksort(right)
  end
  
 
  sorted_arr = quicksort(arr)
  puts sorted_arr.join(' ')

