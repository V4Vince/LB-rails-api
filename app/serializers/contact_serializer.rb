class ContactSerializer < ActiveModel::Serializer
  attributes :id, :contact_type, :contact_path

  belongs_to :user
end
