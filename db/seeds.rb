require 'colorize'

puts "Adding Admin Users".green
if Rails.env.production?
  AdminUser.create([
                  { first_name: 'Ben',  last_name: "Castree", mobile_number: "12345678", email: "Ben.castree@gmail.com", password: "Password@1", password_confirmation: "Password@1"}, 
                  { first_name: 'Abdul Karim',  last_name: "Samaan", mobile_number: "12345678", email: "akarim.samaan@gmail.com", password: "Password@1", password_confirmation: "Password@1"}, 
                  { first_name: 'Hari',  last_name: "Kuppuswamy", mobile_number: "12345678", email: "harishsmc@gmail.com", password: "Password@1", password_confirmation: "Password@1"}, 
                  { first_name: 'Krishna Prasad',  last_name: "Varma", mobile_number: "12345678", email: "krishna@rightsolutions.ae", password: "Password@1", password_confirmation: "Password@1"}
                ])

else
  AdminUser.create([
                  { first_name: 'Athira',  last_name: "Castree", mobile_number: "12345678", email: "asnathira@gmail.com", password: "Password@1", password_confirmation: "Password@1"}, 
                  { first_name: 'Abdul Karim',  last_name: "Samaan", mobile_number: "12345678", email: "akarim.samaan@gmail.com", password: "Password@1", password_confirmation: "Password@1"}, 
                  { first_name: 'Hari',  last_name: "Kuppuswamy", mobile_number: "12345678", email: "harishsmc@gmail.com", password: "Password@1", password_confirmation: "Password@1"}, 
                  
                ])
end

puts "Adding Client Users".green
if Rails.env.production?
  ClientUser.create([
                  { first_name: 'KP Varma',  last_name: "", country: "AE", mobile_number: "+971501370320", organisation: "Right Solutions", email: "krshnaprsad@gmail.com", password: "Password@1", password_confirmation: "Password@1", position: "manager"}, 
                ])
else
  ClientUser.create([
                  { first_name: 'Sherlock',  last_name: "Holmes", country: "GB", mobile_number: "12345678", organisation: "Conon Doyle", email: "holmes@yopmail.com", password: "Password@1", password_confirmation: "Password@1", position: "manager"},
                  #{ first_name: 'Athira',  last_name: "Nair", country: "GB", mobile_number: "12345678", organisation: "Rigt Solution", email: "athira@rightsolutions.ae", password: "Password@1", password_confirmation: "Password@1", position: "developer", t_c_accepted: true}, 
                  # { first_name: 'Huckleburry',  last_name: "Finn", country: "US", mobile_number: "12345678", organisation: "DM Studios", email: "finn@yopmail.com", password: "Password@1", password_confirmation: "Password@1", t_c_accepted: True}, 
                  # { first_name: 'Joan',  last_name: "Arc", country: "FR", mobile_number: "12345678", organisation: "French Ltd", email: "joan@yopmail.com", password: "Password@1", password_confirmation: "Password@1", t_c_accepted: True}, 
                ])
end

admin_user = AdminUser.first
client_user = ClientUser.first

