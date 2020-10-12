class CreateContactDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :message_content

      t.timestamps
    end
  end
end
