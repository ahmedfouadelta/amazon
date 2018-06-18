class Photo < ApplicationRecord
	has_attached_file :image, styles: { large: "600x600", medium: "100x100", thumb: "100x100" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
 	validates_attachment_presence :image
    validates_attachment_size :image, :less_than => 5.megabytes
    validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/jpg']
	validates_uniqueness_of :image_file_name # this is a standard ActiveRecord validator
    #validates_attachment_file_name :image, :matches => [/_\d+_\d+_\d+\.bin$/]
    
end
