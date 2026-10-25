
class CustomersController < ApplicationController

  # INDEX ACTION
  # Retrieve all customers from the database.
  # This will display every customer on the homepage.
  def index
    @customers = Customer.all
  end

  # ALPHABETIZED ACTION
  # Retrieve all customers sorted alphabetically by full name.
  def alphabetized
    @customers = Customer.order(:full_name)
  end

  # MISSING EMAIL ACTION
  # Retrieve customers whose email addresses are missing.
  # This includes both NULL values and empty strings.
  def missing_email
    @customers = Customer.where(email_address: [nil, ""])
  end

end
