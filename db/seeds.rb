# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)


# artists = Artist.create([{ name: 'Coach' },

# { name: 'Vybz Kartel' },

# { name: 'Biggie' },

# { name: 'Janis Joplin' },

# { name: 'Nas' },

# { name: 'Coldplay' },

# { name: 'Prince' },

# { name: '112' },

# { name: 'Maroon 5' },

# { name: 'Bob Marley' },

# { name: 'J.Cole' },

# { name: 'Foster The People' },

# { name: 'Eve' },

# { name: 'Jimi' },

# { name: 'Shaq' },

# { name: 'Frank Ocean' },

# { name: 'Kendrick' },

# { name: 'Gwen' }])



# studios = Studio.create([{name: "Fancy Closet", location: 'Harlem, New York'},

# {name: "Quad Studios", location: 'Brooklyn, New York'},

# {name: "The Max", location: 'Harlem, New York'},

# {name: "THe Boom Boom Room", location: 'Harlem, New York'},

# {name: "The Block", location: 'Queens, New York'},

# {name: "Hit Factory", location: 'Staten Island, New York'},

# {name: "Glass Cage of Emotion", location: 'Bronx, New York'},

# {name: "Beat Farm", location: 'Harlem, New York'},

# {name: "Grandma's Basement", location: 'Harlem, New York'}])



engineers = Engineer.create([{email: "lu@lu.com", password: 'password', name: "Lu"},

    {email: "nikki@nikki.com", password: 'password', name: "Nikki Daley"},

{email: "young@guru.com", password: 'password', name: "Young Guru"},

{email: "stush@stush.com", password: 'password', name: "Stush"},

{email: "bodega@bodega.com", password: 'password', name: "Bodega Dude"},

{email: "dre@dre.com", password: 'password', name: "Dr. Dre"},

{email: "hot@hot.com", password: 'password', name: "Hot Pie"},

{email: "timbo@timbo.com", password: 'password', name: "Timbaland"},

{email: "Winslow@Winslow.com", password: 'password', name: "Officer Winslow"},

{email: "rick@rick.com", password: 'password', name: "Rick Ruben"},


{email: "gilly@gilly.com", password: 'password', name: "Gilly"},

{email: "teddy@teddy.com", password: 'password', name: "Teddy Riley"}])


# RecordingSession.create(appointment_date: '7.3.2019', engineer: engineers[0], studio: studios[0], artist: artists[0])

# RecordingSession.create(appointment_date: '19.7.2019', engineer: engineers[5], studio: studios[5], artist: artists[5])

# RecordingSession.create(appointment_date: '27.7.2019', engineer: engineers[1], studio: studios[1], artist: artists[1])

# RecordingSession.create(appointment_date: '14.7.2019', engineer: engineers[5], studio: studios[7], artist: artists[6])

# RecordingSession.create(appointment_date: '21.7.2019', engineer: engineers[2], studio: studios[2], artist: artists[2])

# RecordingSession.create(appointment_date: '23.7.2019', engineer: engineers[6], studio: studios[7], artist: artists[6])

# RecordingSession.create(appointment_date: '24.7.2019', engineer: engineers[3], studio: studios[3], artist: artists[3])

# RecordingSession.create(appointment_date: '17.7.2019', engineer: engineers[7], studio: studios[7], artist: artists[7])

# RecordingSession.create(appointment_date: '16.7.2019', engineer: engineers[4], studio: studios[4], artist: artists[4])

# RecordingSession.create(appointment_date: '12.7.2019', engineer: engineers[6], studio: studios[1], artist: artists[2])