class Slip < ApplicationRecord
    belongs_to :sspn, optional: true
    belongs_to :user, optional: true
end
