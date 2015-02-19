json.array!(@admin_staffs) do |admin_staff|
  json.extract! admin_staff, :id, :staffId, :name, :dateHired, :position, :status
  json.url admin_staff_url(admin_staff, format: :json)
end
