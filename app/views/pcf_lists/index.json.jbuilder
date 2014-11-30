json.array!(@pcf_lists) do |pcf_list|
  json.extract! pcf_list, :id, :title, :author, :Update_time, :content
  json.url pcf_list_url(pcf_list, format: :json)
end
