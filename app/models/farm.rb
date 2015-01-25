class Farm < ActiveRecord::Base
	has_many :farm_products
	has_many :products, through: :farm_products
	belongs_to :user
	serialize :product ,Array

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
