=begin
ROTATION VERS LA GAUCHE

Créez un programme qui décale tous les éléments d’un tableau vers la
gauche. Le premier élément devient le dernier à chaque rotation.
Utilisez une fonction de ce genre (selon votre langage) :
ma_rotation(array) {
# votre algorithme
return (new_array)
}
Exemples d’utilisation :
$> python exo.py “Michel” “Albert” “Thérèse” “Benoit”
Albert, Thérèse, Benoit, Michel
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
=end
if ARGV.length < 2
    puts "error"
    exit
end

def rotate_args_in_array_to_left(args)
    i=0
    j=0
    new_array = []
    while i < args.length 
        new_array[j] = args[i+1]
        j+=1
        i+=1
        if j == args.length-1
            i=0
            new_array[j] = args[i]
            break
        end
    end
    return new_array
end

args = ARGV.map{|arg| arg.gsub(/["'“”]/, "")}

result = rotate_args_in_array_to_left(args)
puts result