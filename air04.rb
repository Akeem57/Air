=begin
UN SEUL A LA FOIS

Créez un programme qui aﬃche une chaîne de caractères en évitant les
caractères identiques adjacents.
Exemples d’utilisation :
$> python exo.py “Hello milady, bien ou quoi ??”
Helo milady, bien ou quoi ?

Aﬃcher error et quitter le programme en cas de problèmes d’arguments.
=end

def clean_word(word)
    cleaned_word = ""
    j = 0
  
    while j < word.length
      if word[j] != word[j + 1] || j == word.length - 1
        cleaned_word += word[j]
      end
      j += 1
    end
  
    return cleaned_word
end
  
 
  def clean_sentence(args)
    new_sentence = []
  
    i = 0
    while i < args.length
      word = args[i]
      cleaned_word = clean_word(word)
      new_sentence << cleaned_word
      i += 1
    end
  
    return new_sentence.join(" ")
  end
  
  args = ARGV
  
  if args.length == 0
    puts "error"
    exit
  else
    result = clean_sentence(args)
    puts result
  end
  

  


