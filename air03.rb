=begin
CHERCHER L'INTRUS

Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.
Exemples d’utilisation :
$> python exo.py 1 2 3 4 5 4 3 2 1
5
$> python exo.py bonjour monsieur bonjour
monsieur
Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
=end

if ARGV.length <= 2
    puts "error"
    exit
end

arguments = ARGV

resultats = arguments.map do |arg|
  doublon = arguments.count(arg) > 1
  doublon ? " " : arg
end

resultats.reject! {|arg| arg == " "}

if resultats.empty?
    puts "Auncun intrus"
else
    puts resultats.join(" ")
end