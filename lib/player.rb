class Player
  attr_accessor :name, :marker, :spt

  def initialize(input)
    @name = input.fetch(:name)
    @marker = input.fetch(:marker)
    @spt = input.fetch(:spt)

    
  end
end
