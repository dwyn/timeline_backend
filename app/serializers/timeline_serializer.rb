class TimelineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :events, only: [:year, :title, :description]

  def events
    self.object.events.map do |event|
      {year: event.year,
        title: event.title,
        description: event.description}
      end
  end
  
end
