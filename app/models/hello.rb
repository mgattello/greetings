class Hello < ApplicationRecord
    include Visible
    has_many :synonyms

    validates :lang, presence: true
    validates :word, presence: true, length: { minimum: 1 }
end
