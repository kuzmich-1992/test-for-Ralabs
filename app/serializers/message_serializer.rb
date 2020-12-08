class MessageSerializer < ActiveModel::Serializer
  attributes :id, :text, :transit_message
end
