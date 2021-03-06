class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :anonymous_commentor
      t.string :body
      t.belongs_to :gossip, index: true
      t.timestamps
    end
  end
end
