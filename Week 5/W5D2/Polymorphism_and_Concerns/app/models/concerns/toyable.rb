module Toyable
  extend ActiveSupport::Concern

  included do
    validates :name, uniqueness: { scope: [:toyable] }
    belongs_to :toyable, polymorphic: true
  end

  def receive_toy(name)
    self.toys << Toy.find_or_create_by(name: name)
  end
end
