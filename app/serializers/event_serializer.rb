class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :year, :title, :description
  # :timeline

  def timeline
    {timeline_id: self.object.timeline.id,
      timeline_title: self.object.timeline.title,
      timeline_description: self.object.timeline.description}
  end
end
