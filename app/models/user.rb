class User < ApplicationRecord
    validates(:username, {presence: true, uniqueness: true, length:{minimum: 8}})
    validates(:age, {presence: true})
end
