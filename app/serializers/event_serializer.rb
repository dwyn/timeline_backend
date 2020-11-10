class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :year, :title, :description, :timeline
  
end
