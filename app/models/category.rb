class Category < ApplicationRecord
has_many :products
enum :name, [:skin_care, :makeup, :perfumes]

end
