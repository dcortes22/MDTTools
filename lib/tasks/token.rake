namespace :token do
  desc "Add token to empty models"
  task :add => :environment do
    Sample.all.each do |sample|
      sample.token = SecureRandom.urlsafe_base64(nil, false) if sample.token.nil?
      sample.save!
    end
  end
end
