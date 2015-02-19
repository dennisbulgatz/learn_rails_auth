class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :created_by_id, index: true
      t.integer :updated_by_id, index: true
      t.timestamps null: false
    end
    #add_foreign_key :terms, :created_by_id, :updated_by_id

  end
end
