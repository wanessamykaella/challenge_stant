class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :sessions, each_serializer: SessionSerializer 
 
end
