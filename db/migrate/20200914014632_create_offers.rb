class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :advertiser_name
      t.string :url
      t.text :description
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :premium, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
