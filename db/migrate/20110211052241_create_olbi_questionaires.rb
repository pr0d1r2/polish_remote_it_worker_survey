class CreateOlbiQuestionaires < ActiveRecord::Migration

  def self.up
    create_table :olbi_questionaires do |t|
      1.upto(16) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.integer :identity_id, :null => false
      t.timestamps
    end
    add_index :olbi_questionaires, :identity_id, :unique => true
  end

  def self.down
    remove_index :olbi_questionaires, :identity_id
    drop_table :olbi_questionaires
  end

end
