class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string  :name
      t.date    :date
      t.string  :phone
      t.string  :email
      t.string  :subject 
      t.text    :message
      t.integer :property_id
    end
  end
end
