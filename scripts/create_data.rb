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

char = Place.new
char["name"] = "Charleston"
char.save

beij = Place.new
beij["name"] = "Beijing"
beij.save

ams = Place.new
ams["name"] = "Amsterdam"
ams.save

puts "There are now #{Place.all.count} places and #{Post.all.count} posts."