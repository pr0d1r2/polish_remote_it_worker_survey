class CreateCopeLossQuestionaires < ActiveRecord::Migration

  def self.up
    create_table :cope_loss_questionaires do |t|
      1.upto(43) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.integer :identity_id, :null => false
      t.timestamps
    end
    add_index :cope_loss_questionaires, :identity_id, :unique => true
  end

  def self.down
    remove_index :cope_loss_questionaires, :identity_id
    drop_table :cope_loss_questionaires
  end

end
