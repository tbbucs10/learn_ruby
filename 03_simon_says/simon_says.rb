def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, num = 1)
result = input
  if num != 1
    num = num - 1
  end
  num.times do
    result = input + " " + result
  end
  return result
end

def start_of_word(word,place)
  place = place-1
  return word[0..place]
end

def first_word(sentence)
  sentence.split[0]
end

def titleize(sentence)
  result = ""
  arr = sentence.split
  result = result + arr[0].capitalize

  for i in 1..arr.length-1 do
    if arr[i] != "and" && arr[i] != "over" && arr[i] != "the"
      word = arr[i].capitalize
  else
    word = arr[i]
  end

    result = result + " " + word
  end
  return result
end
