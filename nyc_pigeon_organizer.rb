require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do | (attribute, details), hash |
    details.each do |attribute_detail, pigeons|
      pigeons.each do |pigeon|
        hash[pigeon] ||= {}
        hash[pigeon][attribute] ||= []
        hash[pigeon][attribute] << attribute_detail.to_s
      end
    end
  end
end



#   pigeons_clean = pigeons_data.flatten.uniq
#   attributes = data.keys
#   pigeons_clean.each do |pigeon|
#     data.each do |attribute, attribute_detail|
#       attribute_detail.each do |attribute_detail, names|
#         if names.include? (pigeon)
#           pigeons_hash[pigeon] = Hash.new
#           pigeons_hash[pigeon][attribute] = attribute_detail
#         end
#       end
#     end
#   end
#   binding.pry
#   pigeons_hash
# end
