class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :video_link, :description

  belongs_to :user
end
