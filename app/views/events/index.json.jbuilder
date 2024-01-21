json.array!(@events) do |event|
  json.id event.id
  json.title event.title
  json.start "#{event.date} #{event.start.strftime('%H:%m')}"
  json.end "#{event.date} #{event.end.strftime('%H:%m')}"
end