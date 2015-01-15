class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      
      t.string :client_name
      t.string :client_adress
      t.integer :client_contact
      t.string :client_conact_name

      t.timestamps
    end
  end
end
