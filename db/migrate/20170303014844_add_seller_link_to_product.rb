class AddSellerLinkToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :seller_link, :string
  end
end
