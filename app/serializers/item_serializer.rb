class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :list_id, :completed
end
