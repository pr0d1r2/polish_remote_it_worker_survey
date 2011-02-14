class CreateSspQuestionaires < ActiveRecord::Migration

  def self.up
    create_table :ssp_questionaires do |t|
      1.upto(5) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.integer :identity_id, :null => false
      t.timestamps
    end
    add_index :ssp_questionaires, :identity_id, :unique => true
  end

  def self.down
    remove_index :ssp_questionaires, :identity_id
    drop_table :ssp_questionaires
  end

end
