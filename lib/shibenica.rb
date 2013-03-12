class Shibenica
  attr_reader :guy, :shib
  def initialize(word)
    @word=word
    @guy=[ "()" , "||" , "/" , "\\" , "/" , "\\" ]
    @shib="  _________
  #{@guy[0]}        |
 #{guy[2]}#{guy[1]}#{guy[3]}       |
  #{guy[4]}#{guy[5]}        |
          __|__"
  end
end