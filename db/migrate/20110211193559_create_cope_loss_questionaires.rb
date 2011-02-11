class CreateCopeLossQuestionaires < ActiveRecord::Migration
  def self.up
    create_table :cope_loss_questionaires do |t|
      1.upto(43) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.timestamps
    end
  end

  def self.down
    drop_table :cope_loss_questionaires
  end
end
