def translate(input)
  sentence = ""
  inb = input.split
  stop = inb.length-1
  for i in 0..stop
    word = inb[i]
    place = word.length-1
    if word[0] == "a" || word[0] =="e" || word[0] =="i" || word[0] =="o" || word[0] =="u"
#runs if first letter is a vowel
      result = word + "ay"
    else
      if word[1] == "a" || word[1] =="e" || word[1] =="i" || word[1] =="o" || word[1] =="u"
#runs if first letter is a cons and 2nd is a vowel
          if word[0]=="q" && word[1]=="u"
            letter = word[0..1]
            newword = word[2..place]
            result = newword + letter + "ay"
          else
            letter = word[0]
            newword = word[1..place]
            result = newword + letter + "ay"
          end
      else
        if word[2] == "a" || word[2] =="e" || word[2] =="i" || word[2] =="o" || word[2] =="u"
#runs if first 2 letters are cons and 3rd is a vowel
          if word[1]=="q" && word[2]=="u"
            letter = word[0..2]
            newword = word[3..place]
            result = newword + letter + "ay"
          else
            letter = word[0..1]
            newword = word[2..place]
            result = newword + letter + "ay"
          end
        else
#runs if first 3 letters are cons and 3rd is a vowel
          letter = word[0..2]
          newword = word[3..place]
          result = newword + letter + "ay"
        end
      end
    end
    if i == 0
      sentence = result
    elsif i >= 1
      sentence = sentence + " " + result
    else
    end
  end
  return sentence
end
