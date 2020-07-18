class User < ApplicationRecord
    has_secure_password

    has_many :votes, dependent: :destroy
    has_many :events, dependent: :destroy

    validates_presence_of :email
    validates_uniqueness_of :email
end
