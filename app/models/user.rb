class User < ApplicationRecord
has_many :orders
enum :role , [:admin , :customer]
end
