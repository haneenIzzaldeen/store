class Product < ApplicationRecord
belongs_to :category
scope :joinTable , -> {joins(:category).where(category:{name: 'makeup'})}
scope :lowPrice ,->{where ('price < 10')}
end
