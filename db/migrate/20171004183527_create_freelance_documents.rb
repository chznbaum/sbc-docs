class CreateFreelanceDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :freelance_documents do |t|
      t.string :title
      t.string :description
      t.text :file_url
      t.text :image_url
      t.string :image_alt
      t.integer :client_id

      t.timestamps
    end
  end
end
