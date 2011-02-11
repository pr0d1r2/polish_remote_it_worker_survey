class CreateEasDAdultQuestionaires < ActiveRecord::Migration
  def self.up
    create_table :eas_d_adult_questionaires do |t|
      1.upto(20) do |num|
        t.integer "field_#{num}", :limit => 2, :null => false, :default => 9
      end
      t.timestamps
    end
  end

  def self.down
    drop_table :eas_d_adult_questionaires
  end
end
