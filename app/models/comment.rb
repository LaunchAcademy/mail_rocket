class Comment < ActiveRecord::Base
  belongs_to :post, counter_cache: true

  validates :body, presence: true
  validates :post, presence: true
end
