class Shibenica
  attr_reader :guy, :word, :word_copy
  def initialize(word)
    dictionary=Dictionary.new
    word=dictionary.get if word == 'dictionary'
    @word=word; @word_copy="#{word}"
    @field="-"*@word.length
    @guys_limbs=5
    @guy=[ "()" , "||" , "/" , "\\" , "/" , "\\" ]

    @shibenica="  __________
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
    @guy[@guys_limbs] = " "*@guy[@guys_limbs].length
    @guys_limbs-=1
  end

  def show

    @shibenica="  __________
  #{@guy[0]}        |
 #{@guy[2]}#{@guy[1]}#{@guy[3]}       |
  #{@guy[4]}#{@guy[5]}        |
          __|__

#{@field}"
  end

end