class User < ActiveRecord::Base
   validates :name, presence: true
   validates :email, presence: true
   validates :email, uniqueness: true
   validates :email, length: { minimum: 6 ,message: "length minimum 6 chars" }
   validates :age, numericality: true
end
