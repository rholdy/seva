class Player < ActiveRecord::Base
   attr_protected

  class << self
		def import(path)
			table = CSV.table(path)
			table.each do |row|
				player = Player.new 
				player.rank = row[:rank_sorted_by_seva_score]
				

				player.save
			end
		end
	end




# rank_sorted_by_seva_score,
#  :state,
#  :player,
#  :class,
#  :sevascore,
#  :year,
#  :team,
#  :win,
#  :height,
#  :weight,
#  :ppg,
#  :fg,
#  :apg,
#  :bpg,
#  :rpg,
#  :spg,
#  :college,
#  :ppg_from_ft,
#  :ppg_from_2fg,
#  :ppg_from_3fg,
#  :efg,
#  :estimated_college_position_estpos



Player.import('')






end
