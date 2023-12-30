
# json.partial! 'api/guests', guest: @guest.name, @guest.age, @guest.favorite_color


json.name @guest.name
json.age @guest.age
json.favorite_color @guest.favorite_color
json.gifts @guest.gifts do |gift|
    json.title gift.title 
    json.gift gift.description 
    json.party gift.party.name
end



# json.array!(@guest.gifts) do |gift|
#     json.title gift.title 
#     json.gift gift.description 
#     json.party gift.party

# end


