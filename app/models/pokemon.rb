class Pokemon < ActiveRecord::Base
	belongs_to :trainer
	validates :name, prsence: true, uniqueness: true
end
