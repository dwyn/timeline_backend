class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :year, :title, :description, :timeline
  belongs_to :timeline
end
