class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :author_name, :string
    t.column :author_id, :integer
    t.column :rating, :integer

    t.timestamps
    end
  end
end
