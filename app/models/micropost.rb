class Micropost < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_attached_file :pic, :styles => { :large => "700x700"}, :default_url => "/images/:style/missing.png"
 	validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/
 	default_scope -> { order(created_at: :desc) }
end
