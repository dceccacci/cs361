# Exercise 5

class LaunchDiscussionWorkflow

  def initialize(discussion, host, participants)
    @discussion = discussion
    @host = host
    @participants = participants
  end

  # Expects @participants array to be filled with User objects
  def run
    return unless valid?
    run_callbacks(:create) do
      ActiveRecord::Base.transaction do
        discussion.save!
        create_discussion_roles!
        @successful = true
      end
    end
  end

  # ...

end

class Participiants

  attr_accessor :users, :emailString

  def initialize(participants_email_string)
    @users = []
    @emailString = participants_email_string
  end

  def generate_participant_users_from_email_string()
    return if @emailString.blank?
    @emailString.split.uniq.map do |email_address|
      @users.append(User.create(email: email_address.downcase, password: Devise.friendly_token))
    end
  end

  def users
    @users
  end
end


discussion = Discussion.new(title: "fake", ...)
host = User.find(42)
participantGroup = Participiants.new("fake1@example.com\nfake2@example.com\nfake3@example.com")
participants = participantGroup.users

workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)
workflow.generate_participant_users_from_email_string
workflow.run
