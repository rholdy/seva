class FixClassNameInDb < ActiveRecord::Migration
  def up
    rename_column :players, :class, :klass
  end

  def down
  end
end

