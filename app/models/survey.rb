class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy
  validates :topic, presence: true
  before_save(:titleize_album)

  private 
    def titleize_album
      self.topic = self.topic.titleize 
    end
end