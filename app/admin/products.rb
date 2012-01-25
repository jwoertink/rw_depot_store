ActiveAdmin.register Product do
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :description
      f.input :image, :as => :file
    end
    f.buttons
  end
  
end
