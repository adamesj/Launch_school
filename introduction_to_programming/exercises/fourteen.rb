contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone_number]

# iterate over contacts
# populate associated data from the contact_data array
# i.e. email: "joe@email.com"

contacts.each do |key, value|
  fields.each do |field|
    value[field] = contact_data.shift
  end
end

p contacts