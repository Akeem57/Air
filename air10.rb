=begin
AFFICHER LE CONTENU

Créez un programme qui aﬃche le contenu d’un ﬁchier donné en
argument.
Exemples d’utilisation :
$> cat a.txt
Je danse le mia
$> ruby exo.rb “a.txt”
Je danse le mia
Aﬃcher error et quitter le programme en cas de problèmes d’arguments ou de ﬁchier inaccessible.
=end

file_path = ARGV[0]
if File.exist?(file_path)
    begin
      content = File.read(file_path)
      puts content
    rescue
      puts "Une erreur s'est produite lors de la lecture du fichier."
      exit
    end
else
    puts "Le fichier n'existe pas. (ERROR)"
    exit
end