class Player < ActiveRecord::Base
   attr_protected

  #Call this method by running the following command and passing in a file path into the ('')
  #Player.import('')
  class << self
    def import(path)
      table = CSV.table(path)
      table.each do |row|
        player = Player.new 
        player.rank = row[:rank_sorted_by_seva_score]
        player.state = row[:state]
        player.name = row[:player]
        player.klass = row[:class]
        player.seva_score = row[:sevascore]
        player.year = row[:year]
        player.team = row[:team]
        player.win_percent = row[:win]
        player.height = row[:height]
        player.weight = row[:weight]
        player.ppg = row[:ppg]
        player.fg_percent = row[:fg]
        player.apg = row[:apg]
        player.bpg = row[:bpg]
        player.rpg = row[:rpg]
        player.spg = row[:spg]
        player.college = row[:college]
        player.ppg_from_ft = row[:ppg_from_ft]
        player.ppg_from_2fg = row[:ppg_from_2fg]
        player.ppg_from_3fg = row[:ppg_from_3fg]
        player.efg = row[:efg]
        player.estimated_college_position = row[:estimated_college_position_estpos]
        player.save
      end
    end
  end  
end
