ActiveAdmin.register Customer do

  # Allow administrators to save customer information and images.
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  # Disable automatic search filters for image attachments.
  config.filters = false

  # Display customer information in the admin table.
  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email_address
    actions
  end

  # Form for creating and editing customers.
  form html: { multipart: true } do |f|
    f.inputs "Customer Details" do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end

    f.actions
  end

end