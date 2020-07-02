class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :content, presenc: true, unless: :image? 
end
