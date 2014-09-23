module UserHelper
  def user_stage_progress_bar
    [
        { name: 'account', title: 'Create Account', time_estimate: '1 minute' },
        { name: 'quiz', title: 'Complete Quiz', time_estimate: '2 minutes' },
        { name: 'phone_interview', title: 'Schedule Phone Interview', time_estimate: '20 minutes' },
        { name: 'local_interview', title: 'Local In-Person Interview', time_estimate: '3 hours' },
        { name: 'active', title: 'Welcome to the Team!' }    ]
  end
end