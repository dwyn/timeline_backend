class TimelineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description 
  # :user_id
  has_many :events
end
