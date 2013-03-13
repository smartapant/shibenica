class Game
  def initialize(shibenica)
    #@player=player
    @shibenica=shibenica
    @over=false
  end

  def turn(letter)
    if @shibenica.word.index(letter)
      @shibenica.put(letter)
    else
      @shibenica.cut
    end
  end

  def over?
  @over=true if @shibenica.word == '?'*@shibenica.word.length or @shibenica.guy == []
  end

  def result
    if @shibenica.word == '?'*@shibenica.word.length
      "U won."
    else
      "U lost."
    end
  end
end