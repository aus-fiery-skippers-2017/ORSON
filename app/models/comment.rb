class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review
  validates :body, presence: true,
                    length: { minimum: 5 }
end
