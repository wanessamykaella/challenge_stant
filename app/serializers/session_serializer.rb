class SessionSerializer < ActiveModel::Serializer
  attributes :talks
  
  def talks
    ActiveModel::Serializer::CollectionSerializer.new(object.talks, serializer: TalkSerializer)
  end
  #has_many :talks, each_serializer: TalkSerializer
end
