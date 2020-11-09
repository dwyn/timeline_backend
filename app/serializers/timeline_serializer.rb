class TimelineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :user_id, :events
  belongs_to :user
  has_many :events
end
