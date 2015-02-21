class User < ActiveRecord::Base
    has_many :contacs
    
    validates :name, presence: true
    validates :lastname, presence: true
end
