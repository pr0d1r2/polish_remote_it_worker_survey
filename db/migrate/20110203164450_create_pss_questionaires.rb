class CreatePssQuestionaires < ActiveRecord::Migration

  def self.up
    create_table :pss_questionaires do |t|
      1.upto(14) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.integer :identity_id, :null => false
      t.timestamps
    end
    add_index :pss_questionaires, :identity_id, :unique => true
  end

  def self.down
    remove_index :pss_questionaires, :identity_id
    drop_table :pss_questionaires
  end

end
