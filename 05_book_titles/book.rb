class Book
  attr_accessor :title
  def title
    separated = @title.split
    numwords = separated.length - 1
    combined = ""
    littlewords = ["a","the","of","and","in","an"]
    for i in 0..numwords
      if (i >=1) && (littlewords.include? separated[i])
        word=separated[i]
      else
        word=separated[i].capitalize
      end
      if i == 0
        combined = word
      else
        combined = combined + " " + word
      end
    end
    @title = combined
  end
end
