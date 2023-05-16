class AccessRight < ApplicationRecord
    belongs_to :user
    belongs_to :door
end
