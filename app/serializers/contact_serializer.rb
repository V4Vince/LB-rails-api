class ContactSerializer < ActiveModel::Serializer
  attributes :id, :contact_type, :contact_path
end
