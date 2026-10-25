class Customer < ApplicationRecord

  # Each customer can have one profile picture.
  has_one_attached :image

  # Customer's full name is required.
  validates :full_name, presence: true

  # Customer's name must contain at least 2 characters.
  validates :full_name, length: { minimum: 2 }

  # Email is optional, but must be valid if provided.
  validates :email_address,
            format: { with: URI::MailTo::EMAIL_REGEXP },
            allow_blank: true

  # Specify which customer fields Active Admin can search.
  def self.ransackable_attributes(auth_object = nil)
    %w[id full_name phone_number email_address created_at updated_at]
  end

  # Prevent Ransack from searching image associations.
  def self.ransackable_associations(auth_object = nil)
    []
  end

end