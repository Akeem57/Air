=begin
AFFICHER UNE PYRAMIDE

Aﬃcher un escalier constitué d’un caractère et d’un nombre d’étages
donné en paramètre.
Exemples d’utilisation :
$> ruby exo.rb O 5
O
OOO
OOOOO
OOOOOOO
OOOOOOOOO
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
=end

if ARGV.length < 2 || !ARGV[1].match?(/\A\d+\z/)
    puts "error"
    exit
end

def stairs_with_specific_char(char, long)
    i=0
    j=1
    while i < long
        puts (char)*j
        i+=1
        j+=2
    end
    return
end

char = ARGV[0]
long = ARGV[1].to_i

result = stairs_with_specific_char(char, long)
print result
