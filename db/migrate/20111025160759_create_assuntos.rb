class CreateAssuntos < ActiveRecord::Migration
  def self.up
    create_table :assuntos do |t|
      t.string :nome
      t.string :user
      t.string :info

      t.timestamps
    end
  end

  def self.down
    drop_table :assuntos
  end
end
