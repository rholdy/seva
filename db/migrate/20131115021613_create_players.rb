class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    		t.string :name
    		t.string :state
    		t.string :class
    		t.integer :year
    		t.float :seva_score
    		t.string :team
    		t.float :win_percent
    		t.integer :height
    		t.integer :weight
    		t.float :ppg
    		t.float :fg_percent
    		t.float :apg
    		t.float :bpg
    		t.float :rpg
    		t.float :spg
    		t.string :college
    		t.float :ppg_from_ft
    		t.float :ppg_from_2fg
    		t.float :ppg_from_3fg
    		t.float :efg
    		t.float :estimated_college_position
    		t.integer :rank
      t.timestamps
    end
  end
end
