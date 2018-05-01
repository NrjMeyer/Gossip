class Gossip < ApplicationRecord
    validates :anonymous_author, uniqueness: true, presence: true, format: { without: /\s/ }
end
