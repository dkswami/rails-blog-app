class Myarticle < ApplicationRecord
	has_many  :mycomments

	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 10 }
end
