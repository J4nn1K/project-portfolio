class Project < ApplicationRecord
  
  has_one_attached :thumbnail do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  has_many_attached :images
  has_many_attached :files

end
