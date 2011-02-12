class CreateUwesQuestionaires < ActiveRecord::Migration
  def self.up
    create_table :uwes_questionaires do |t|
      1.upto(17) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.timestamps
    end
  end

  def self.down
    drop_table :uwes_questionaires
  end
end
