Place.destroy_all
Post.destroy_all

mex = Place.new
mex["name"] = "Mexico City"
mex.save

tacos = Post.new
tacos["title"] = "Ate tacos"
tacos["posted_on"] = Date.today
tacos["description"] = "Best I ever had."
tacos["place_id"] = mex["id"]
tacos.save

wedding = Post.new
wedding["title"] = "Jim & Pam's Wedding"
wedding["posted_on"] = Date.today
wedding["description"] = "Our faves planned a second wedding. Who knew?"
wedding["place_id"] = mex["id"]
wedding.save

char = Place.new
char["name"] = "Charleston"
char.save

beach = Post.new
beach["title"] = "Beachin'"
beach["posted_on"] = Date.today - 1
beach["description"] = "I should really start wearing sunscreen."
beach["place_id"] = char["id"]
beach.save

slepp = Post.new
slepp["title"] = "Slept"
slepp["posted_on"] = Date.today - 1
slepp["description"] = "Sun really takes the mickey out of ya, y'know?"
slepp["place_id"] = char["id"]
slepp.save

beij = Place.new
beij["name"] = "Beijing"
beij.save

wall = Post.new
wall["title"] = "Great Wall"
wall["posted_on"] = Date.today - 2
wall["description"] = "They say they can see it from the moon. They probably just saw the clot of eager tourists."
wall["place_id"] = beij["id"]
wall.save

cough = Post.new
cough["title"] = "Coughed"
cough["posted_on"] = Date.today - 2
cough["description"] = "The smog is real."
cough["place_id"] = beij["id"]
cough.save

ams = Place.new
ams["name"] = "Amsterdam"
ams.save

cough2 = Post.new
cough2["title"] = "Coughed :)"
cough2["posted_on"] = Date.today - 3
cough2["description"] = "The smog is real ;)"
cough2["place_id"] = ams["id"]
cough2.save

van = Post.new
van["title"] = "Van Gogh Museum"
van["posted_on"] = Date.today - 3
van["description"] = "Is it just me, or does he look like the guy from Homeland Season 1?"
van["place_id"] = ams["id"]
van.save

puts "There are now #{Place.all.count} places and #{Post.all.count} posts."