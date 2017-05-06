json.array!(@images) do |image|
  json.extract! image, :id, :filename, :alt, :caption
end
