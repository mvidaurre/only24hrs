class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :daadline, :priority, :completion, :status, :focus, :goal
end
