class CreateIdentities < ActiveRecord::Migration
  def self.up
    create_table :identities do |t|
      t.string  :token,    :null => false, :limit => 32
      t.boolean :finished, :null => false, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :identities
  end
end
