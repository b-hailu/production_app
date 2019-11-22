class User < ApplicationRecord
    has_many :microposts
    validates :email, presence: true    
    validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, presence: true
    validates :name, presence: true  
    validates_format_of :name, :with => /\A[^0-9`!@.#\$%\^&*+_=]+\z/, presence: true                            
    validates :age, presence: true  
    validates :age, inclusion: { in: 0..100 }  

end
User.create(name: "John Doe").valid? # => true
User.create(name: nil).valid? # => false
User.create(email: "b@yahoo.com").valid?
User.create(email: nil).valid?
User.create(age: 12).valid?
User.create(age: nil).valid?




