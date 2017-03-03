ActiveAdmin.register Product do

	permit_params :name, :description, :price, :type, :image_url, :category_id, :seller_link

	@categories = Category.all.map{ |c| [c.name, c.id]}

	form do |f|
		f.inputs 'Product' do 
			f.input :name
			f.input :description
			f.input :price
			f.input :category, :as => :select, :collection => Category.all.collect {|c| [c.name, c.id] }
			f.input :image_url
			f.input :seller_link
		end
		f.actions
	end

end
