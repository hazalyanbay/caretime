# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#  create 5 workers/victims
#  create solved tickets for the 5 victims (comments ec)
Chatroom.destroy_all
Ticket.destroy_all
User.destroy_all

workerone = User.create!(worker: true, first_name: 'hazal', last_name: 'yanbay', phone_number: '5053678898', address: 'beyoglu', email: 'buse.xezal@gmail.com', password: '555555')
workertwo = User.create!(worker: true, first_name: 'semyon', last_name: 'kazanstev', phone_number: '464673382', address: 'beyoglu', email: 'semyon@gmail.com', password: '555555')
workerthree = User.create!(worker: true, first_name: 'can', last_name: 'cimensever', phone_number: '505369009', address: 'beyoglu', email: 'can@gmail.com', password: '555555')
workerfour = User.create!(worker: true, first_name: 'nico', last_name: 'proto', phone_number: '505393848898', address: 'beyoglu', email: 'nico@gmail.com', password: '555555')
workerfive = User.create!(worker: true, first_name: 'sy', last_name: 'dontknow', phone_number: '50483978898', address: 'beyoglu', email: 'sy@gmail.com', password: '555555')

victimone = User.create!(worker: false, first_name: 'ayse', last_name: 'yany', phone_number: '5053678898', address: 'beyoglu', email: 'ayse@gmail.com', password: '555555')
victimtwo = User.create!(worker: false, first_name: 'elif', last_name: 'eyey', phone_number: '5053678898', address: 'beyoglu', email: 'elif@gmail.com', password: '555555')
victimthree = User.create!(worker: false, first_name: 'hazal', last_name: 'buse', phone_number: '5053678898', address: 'beyoglu', email: 'hazal@gmail.com', password: '555555')
victimfour = User.create!(worker: false, first_name: 'selin', last_name: 'hürmüz', phone_number: '5053678898', address: 'beyoglu', email: 'selin@gmail.com', password: '555555')
victimfive = User.create!(worker: false, first_name: 'serpil', last_name: 'demirci', phone_number: '5053678898', address: 'beyoglu', email: 'serpil@gmail.com', password: '555555')

ticketone = Ticket.create!(issue_type: "I'm in danger, I need help!", status: 'solved', comment: "called the police, she is safe now", worker: workerone, victim: victimone)
tickettwo = Ticket.create!(issue_type: "I want to use hidden live chat", status: 'solved', comment: "we found her a place to stay for tonight", worker: workertwo, victim: victimtwo)
ticketthree = Ticket.create!(issue_type: "I want to speak to specialist via video chat", status: 'solved', comment: "we talked with her, she decided to move another house", worker: workerthree, victim: victimthree)

chatroomone = Chatroom.create!(name: "Chatroom for ticket #{ticketone.id}", ticket: ticketone)
chatroomtwo = Chatroom.create!(name: "Chatroom for ticket #{tickettwo.id}", ticket: tickettwo)
chatroomthree = Chatroom.create!(name: "Chatroom for ticket #{ticketthree.id}", ticket: ticketthree)

contactone = Contact.create(full_name: 'Ahmet Can', phone_number: '5556667788',user: victimone)
contactone = Contact.create(full_name: 'Ahmet Han', phone_number: '5556667789',user:victimtwo)
contactone = Contact.create(full_name: 'Ayşe Güllü', phone_number: '5556667700',user:victimthree)
contactone = Contact.create(full_name: 'Ayşe Güllü', phone_number: '5556667700',user:victimfour)
contactone = Contact.create(full_name: 'Ayşe Güllü', phone_number: '5556667700',user:victimfive)
contactone = Contact.create(full_name: 'Ahmet Can', phone_number: '5556667788',user: workerone)

