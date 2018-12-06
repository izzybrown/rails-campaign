json.array! @event_campaigns do |campaign|
  json.extract! campaign, :title, :startdate, :budget, :brief
end
