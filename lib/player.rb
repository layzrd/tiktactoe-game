class Player
  attr_accessor :name[]
  @current_play = @name[0]

  def initialize
    @icons = %w[* #]
    @current_player_icon = icons[@current_play]
  end
end
