class CreateDemographicQuestionaires < ActiveRecord::Migration
  def self.up
    create_table :demographic_questionaires do |t|
      t.integer :identity_id, :null => false
      t.integer :age
      t.boolean :male
      t.boolean :married
      t.integer :children_count
      t.string  :function
      t.integer :years_working
      t.string  :workplace
      t.integer :hours_per_week
      t.timestamps
    end
    add_index :demographic_questionaires, :identity_id, :unique => true
  end

  def self.down
    remove_index :demographic_questionaires, :identity_id
    drop_table :demographic_questionaires
  end
end
