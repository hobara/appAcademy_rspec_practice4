class Book

  def title
    @title
  end

  def title=(title)
    titlized = []
    be_lowercase = %w(a an the and in of)
    title.split.each_with_index do |word, idx|
      if idx == 0
        titlized << word.capitalize
      elsif be_lowercase.include?(word)
        titlized << word
      else
        titlized << word.capitalize
      end
    end
    @title = titlized.join(" ")
  end

end
