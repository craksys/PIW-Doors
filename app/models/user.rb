class User < ApplicationRecord
    has_one :card
    has_many :access_rights
    has_many :logs
end
