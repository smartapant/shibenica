class Shibenica
  attr_reader :guy, :shib, :field, :word, :word_copy
  def initialize(word)
    @word=word; @word_copy="#{word}"
    @field="-"*@word.length
    @guy=[ "()" , "||" , "/" , "\\" , "/" , "\\" ]
    @shibenica="  _________
  #{@guy[0]}        |
 #{@guy[2]}#{@guy[1]}#{@guy[3]}       |
  #{@guy[4]}#{@guy[5]}        |
          __|__

#{@field}"
  end

  def put(letter)
    while @word.index(letter)
      id=@word.index(letter)
      @field[id] = "#{letter}"
      @word[id] = '?'
    end
  end

  def cut
    @guy.pop
  end

  def show
    @shibenica="  _________
  #{@guy[0]}        |
 #{@guy[2]}#{@guy[1]}#{@guy[3]}       |
  #{@guy[4]}#{@guy[5]}        |
          __|__

#{@field}"
  end

end