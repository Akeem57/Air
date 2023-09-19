=begin
SUR CHACUN D'ENTRE EUX

Créez un programme qui est capable de reconnaître et de faire une
opération (addition ou soustraction) sur chaque entier d’une liste.
Exemples d’utilisation :
$> ruby exo.rb 1 2 3 4 5 “+2”
3 4 5 6 7
$> ruby exo.rb 10 11 12 20 “-5”
5 6 7 15
L’opération à appliquer sera toujours le dernier élément.
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
=end

def calculate_last_arg_on_a_list(arguments)
    list = arguments[0...-1]
    last_arg = arguments[-1]
    operator = last_arg[0]
    number = last_arg[1].to_i
    i=0
    resultat = []
    while i < list.length
        if operator == "+"
            resultat[i] = list[i].to_i + number.to_i
        elsif operator == "-"
            resultat[i] = list[i].to_i - number.to_i
        else
            puts "error"
            exit
        end
        i+=1
    end
    return resultat
end

if ARGV[-1].length != 2
    puts "error"
    exit
elsif ARGV[-1][1].to_i.to_s != ARGV[-1][1]
    puts "error"
    exit
elsif !ARGV[0...-1].all? { |arg| arg.to_i.to_s == arg }
    puts "error"
    exit
end 


arguments = ARGV
resultat = calculate_last_arg_on_a_list(arguments)
puts resultat.join(" ")
