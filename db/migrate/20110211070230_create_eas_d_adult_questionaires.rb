class CreateEasDAdultQuestionaires < ActiveRecord::Migration

  def self.up
    create_table :eas_d_adult_questionaires do |t|
      1.upto(20) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.integer :identity_id, :null => false
      t.timestamps
    end
    add_index :eas_d_adult_questionaires, :identity_id, :unique => true
  end

  def self.down
    remove_index :eas_d_adult_questionaires, :identity_id
    drop_table :eas_d_adult_questionaires
  end

end
