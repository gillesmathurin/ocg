every 1.day, :at => '2:30 am' do
  rake "backup_db"
  rake "log:clear"
end

every :reboot do
  command "cd #{Rails.root}; RAILS_ENV=production script/delayed_job restart"
end