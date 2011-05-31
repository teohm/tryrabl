namespace :db do
  desc 'Generate random data for development'
  task :random_seed => [:reset] do

    users = []
    10.times do
      users << Factory(:user)
    end

    users.each do |user|
      (1 + rand(10)).times do
        event = Factory(:event, :creator => user)

        (1 + rand(6)).times do
          user = users.rand
          unless EventGuest.find_by_user_id_and_event_id(user.id, event.id)          
            Factory(:event_guest, :user => user, :event => event)
          end
        end
      end
    end
  end
end