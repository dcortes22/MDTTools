role1 = Role.find_or_initialize_by(name: 'Admin')
role2 = Role.find_or_initialize_by(name: 'Sales')
role3 = Role.find_or_initialize_by(name: 'Integrator')

role1.save!
role2.save!
role3.save!

user = User.first
user.role_id = 1
user.save!
