class Dictionary
  def initialize
    @dictionary="duck,buck,deer,fox,cat,rat,dog,camel,monkey,dove,dolphin,butterfly,elephant,falcon,flamingo,panda,bear,goose,hedgehog,lion,puma,walrus,shark".split(',')
  end

  def get

    @dictionary[rand(0...@dictionary.length)]
  end
end