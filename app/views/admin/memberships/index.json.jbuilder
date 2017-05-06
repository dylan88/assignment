json.array!(@admin_memberships) do |admin_membership|
  json.extract! admin_membership, :id, :title, :description, :price
  json.url admin_membership_url(admin_membership, format: :json)
end
