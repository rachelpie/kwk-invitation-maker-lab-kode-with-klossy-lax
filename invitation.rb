#Code Here!
wrong_fact = "Karlie was born in Kansas City, Missouri"
right_fact = wrong_fact.gsub("Kansas City", "St. Louis")
puts wrong_fact
puts right_fact
wrong_fact = "Karlie has 5 brothers"
true_fact = wrong_fact.gsub("brothers", "sisters").gsub("5", "3")
puts true_fact
name_of_show = "The Tonight Show"
show_host = "Jimmy Fallon"
puts "In May, Karlie was on #{name_of_show} with #{show_host}!"
wrong_gala_invitation = "The Museum of Modern Art invites you to their annual gala on Sunday the 22nd of May 2015. Festivities will be held at the MoMA at 11 W 53rd St, New York, NY 10019
. See you then!"
gala_invitation = wrong_gala_invitation.gsub("Museum of Modern Art", "Metropolitan Museum").gsub("Sunday the 22nd of May 2015", "Saturday May 13th, 2017")
puts gala_invitation
