class Card

  attr_reader :portugues, :ingles

  def initialize(portugues, ingles)
    @portugues = portugues
    @ingles = ingles
  end

  def to_s
    "Portugues: #{@portugues} -> Ingles: #{@ingles}"
  end

end