module AuthenticationHelper
  def user_params(attrs = {})
    args = { user_name:  'test',
             first_name: 'Mark',
             last_name:  'Us' }.merge(attrs)
    ActionController::Parameters.new(user: args)
  end

  def get_as(user, action, params = nil, flash = nil)
    session_vars = { 'uid' => user.id, 'timeout' => 3.days.from_now }
    get action, params, session_vars, flash
  end

  # Performs POST request as the supplied user for authentication
  def post_as(user, action, params = nil, flash = nil)
    session_vars = { 'uid' => user.id, 'timeout' => 3.days.from_now }
    post action, params, session_vars, flash
  end

  # Performs PUT request as the supplied user for authentication
  def put_as(user, action, params = nil, flash = nil)
    session_vars = { 'uid' => user.id, 'timeout' => 3.days.from_now }
    put action, params, session_vars, flash
  end

  # Performs DELETE request as the supplied user for authentication
  def delete_as(user, action, params = nil, flash = nil)
    session_vars = { 'uid' => user.id, 'timeout' => 3.days.from_now }
    delete action, params, session_vars, flash
  end
end
