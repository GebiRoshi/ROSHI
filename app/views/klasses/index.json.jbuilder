json.array!(@klasses) do |klass|
  json.extract! klass, :id, :title, :teacher, :description, :date, :time, :place, :price
  json.url klass_url(klass, format: :json)
end
