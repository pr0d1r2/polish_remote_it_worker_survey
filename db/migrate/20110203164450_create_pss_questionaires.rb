class CreatePssQuestionaires < ActiveRecord::Migration
  def self.up
    create_table :pss_questionaires do |t|
      1.upto(14) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.timestamps
    end
  end

  def self.down
    drop_table :pss_questionaires
  end
end
