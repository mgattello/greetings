class Hello < ApplicationRecord
    include Visible
    has_many :synonyms, dependent: :destroy

    validates :lang, presence: true
    validates :word, presence: true, length: { minimum: 1 }
end
