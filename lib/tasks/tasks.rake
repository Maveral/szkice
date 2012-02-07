namespace :db do

  desc "Create admin pass"
  task :adminpass => :environment do
    make_admin
  end
end

def make_admin #tworzymy haslo admina
    user = Admin.create!(:password => 'mietek')
    user.save
end