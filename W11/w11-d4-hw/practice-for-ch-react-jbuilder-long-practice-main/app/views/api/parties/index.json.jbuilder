json.parties @parties do |party|
    json.name party.name
    json.location party.location
    json.guests party.guests.map(&:name)
    # json.guests party.guests do |guest|
    #     guest.name 
    # end
    # Why doesn't line 5-7 work?

end

