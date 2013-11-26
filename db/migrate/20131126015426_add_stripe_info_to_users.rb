class AddStripeInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stripe_customer_id, :string
    add_column :users, :plan, :string
  end
end
