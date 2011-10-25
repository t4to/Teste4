class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.integer :assunto_id
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end
