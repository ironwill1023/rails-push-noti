class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :messageable, polymorphic: true, index: true
      t.string :direction
      t.string :from
      t.string :to
      t.text :body
      t.belongs_to :sender
      t.belongs_to :receiver
      t.timestamps
    end
  end
end
