# rubocop: disable Metrics/CyclomaticComplexity, Layout/LineLength

WIN1 = [1, 2, 3].freeze
WIN2 = [4, 5, 6].freeze
WIN3 = [7, 8, 9].freeze
WIN4 = [1, 4, 7].freeze
WIN5 = [2, 5, 8].freeze
WIN6 = [3, 6, 9].freeze
WIN7 = [1, 5, 9].freeze
WIN8 = [3, 5, 7].freeze

class Logic
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def winner?
    (WIN1 - player.spt).empty? || (WIN2 - player.spt).empty? || (WIN3 - player.spt).empty? || (WIN4 - player.spt).empty? || (WIN5 - player.spt).empty? || (WIN6 - player.spt).empty? || (WIN7 - player.spt).empty? || (WIN8 - player.spt).empty?
  end
end

# rubocop: enable Metrics/CyclomaticComplexity, Layout/LineLength
