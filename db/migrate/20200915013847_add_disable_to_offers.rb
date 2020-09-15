class AddDisableToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :disable, :boolean, default:false

  end
end
