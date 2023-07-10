class Register < ApplicationRecord
    validates :number, length: { is: 9 }
    validates :email, uniqueness: true
    validates :fullname, :email, :number, :date, :region, :availability, presence: true
end
