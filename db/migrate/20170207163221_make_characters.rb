class MakeCharacters < ActiveRecord::Migration
  def change
  	create_table :characters do |t|
  		t.string :name, null: false
  		t.string :species, null: false
  		t.string :gender
  		t.integer :age
  		t.string :description
  		t.string :backstory
  		t.references :user
  		t.timestamps
  	end	
  end
end
