class Todotask < ApplicationRecord
    validates :task, presence: true 
end
