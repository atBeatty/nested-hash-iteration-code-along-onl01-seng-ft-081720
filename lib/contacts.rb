require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we",
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }

def remove_strawberry(contact_list)

  contact_list.each do | contact_name, data_hash |
    data_hash[:favorite_ice_cream_flavors].each_with_index do |flavor, i|
      if flavor == "strawberry"
        data_hash[:favorite_ice_cream_flavors].delete_at(i)
      end
    end
  end
end
