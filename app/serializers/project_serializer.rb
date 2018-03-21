class ProjectSerializer < ActiveModel::Serializer
  attributes :id,:title,:created_by,:status
end
