class CreateComplaints < ActiveRecord::Migration[5.1]
  def change
    create_table :complaints do |t|
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
