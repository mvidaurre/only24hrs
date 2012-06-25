class ProgressSerializer < ActiveModel::Serializer
  attributes :id, :task, :starts, :ends, :effort, :subject
end
