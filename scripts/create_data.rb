Place.destroy_all

mex = Place.new
mex["name"] = "Mexico City"
mex.save

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