=begin
MELANGER 2 TABLEAUX TRIES

Créez un programme qui fusionne deux listes d’entiers triées en les
gardant triées, les deux listes seront séparées par un “fusion”.
Utilisez une fonction de ce genre (selon votre langage) :
sorted_fusion(array1, array2) {
# your algo
return (new_array)
}
Exemples d’utilisation :
$> ruby exo.rb 10 20 30 fusion 15 25 35
10 15 20 25 30 35
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
=end
begin
    def merge_two_sorted_array_in_one_sorted_array(list_one, list_two)
        i=0
        j=0
        new_list = []
        while i < list_one.length || j < list_two.length
            if i < list_one.length && (j >= list_two.length || list_one[i] <= list_two[j])
            new_list << list_one[i]
            i += 1
            elsif j < list_two.length
            new_list << list_two[j]
            j += 1
            end
        end
        return new_list
    end

    key = "fusion"
    index_key = ARGV.index(key)
    list_one = ARGV[0...index_key].map { |args| args.to_i }
    list_two = ARGV[index_key+1..-1].map { |args| args.to_i }

    ARGV[0...index_key].each do |arg|
        unless arg.match?(/\A[0-9]+\z/)
          puts "error"
          exit
        end
    end
      
      ARGV[index_key+1..-1].each do |arg|
        unless arg.match?(/\A[0-9]+\z/)
          puts "error"
          exit
        end
    end         

    result = merge_two_sorted_array_in_one_sorted_array(list_one, list_two)
    puts result
rescue
    puts "error"
    exit
end 

