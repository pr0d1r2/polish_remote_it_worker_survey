class CreateOlbiQuestionaires < ActiveRecord::Migration
  def self.up
    create_table :olbi_questionaires do |t|
      1.upto(16) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.timestamps
    end
  end

  def self.down
    drop_table :olbi_questionaires
  end
end
