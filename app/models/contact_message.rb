class ContactMessage < ActiveRecord::Base
  validates :name, :city, :email, :phone, :message, presence: true
  validates :email, format: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  validates :message, length: { minimum: 10 }

  belongs_to :property

end