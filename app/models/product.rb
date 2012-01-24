class Product < ActiveRecord::Base
  
  has_attached_file :image,
                    :url => '/uploads/:class/:id_partition/:style_:basename.:extension',
                    :path => ':rails_root/public/uploads/:class/:id_partition/:style_:basename.:extension',
                    :styles => { :main => '300x350#', :thumb => '50X50>' }
  
  def self.latest
    order('created_at DESC').limit(5)
  end
  
end
