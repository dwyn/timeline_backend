class TimelineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :user_id, :events
end
