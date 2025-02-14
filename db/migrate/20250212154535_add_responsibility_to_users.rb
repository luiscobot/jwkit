class AddResponsibilityToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :responsibility, :integer
  end
end
