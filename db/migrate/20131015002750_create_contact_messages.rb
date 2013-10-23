class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string  :name
      t.string  :city
      t.string  :phone
      t.string  :email
      t.string  :subject 
      t.text    :message
      t.integer :property_id

      t.timestamps
    end
  end
end
