class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :goal
end
