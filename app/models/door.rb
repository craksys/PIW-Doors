class Door < ApplicationRecord
    has_many :access_rights
    has_many :logs
end
