namespace :db do

  desc "Create admin pass"
  task :adminpass => :environment do
    Rake::Task['db:reset'].invoke
    make_admin
  end
end

def make_users #zmieniony format emailu dla latwiejszego logowania
    user = User.create!(:password => 'mietek')
    user.save
end