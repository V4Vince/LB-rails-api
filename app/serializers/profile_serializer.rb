class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birthday, :about_me, :extra1, :extra2, :extra3, :extra4, :extra5

  belongs_to :user
end
