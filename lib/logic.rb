WIN1 = [1,2,3]
WIN2 = [4,5,6]
WIN3 = [7,8,9]
WIN4 = [1,4,7]
WIN5 = [2,5,8]
WIN6 = [3,6,9]
WIN7 = [1,5,9]
WIN8 = [3,5,7]

class Logic
    attr_reader :player
    def initialize(player)
        @player = player
    end
    def winner?
      (WIN1 - player.spt).empty? || (WIN2 - player.spt).empty? || (WIN3 - player.spt).empty? || (WIN4 - player.spt).empty? || (WIN5 - player.spt).empty? || (WIN6 - player.spt).empty? || (WIN7 - player.spt).empty? || (WIN8 - player.spt).empty? 
    end
end
