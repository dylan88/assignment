json.array!(@courses) do |course|
  json.extract! course, :id, :date, :name, :instructor, :description, :start_date
  json.url course_url(course, format: :json)
end
