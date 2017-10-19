class Person < ApplicationRecord

  belongs_to :house

  validates :name, presence: true
  validates :house_id, presence: true
  #hi
end
