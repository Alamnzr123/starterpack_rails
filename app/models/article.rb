class Article < ApplicationRecord
    include Visible

    # dependent : deleted associate object
    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
end
