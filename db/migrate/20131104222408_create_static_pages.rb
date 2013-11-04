class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :home
      t.string :about
      t.string :contact
      t.string :pricing

      t.timestamps
    end
  end
end
