class Auth
  ALGORITHM = 'HS256'
  @auth_secret = ENV['AUTH_SECRET']

  def self.issue(payload)
    JWT.encode(
      payload,
      @auth_secret,
      ALGORITHM
    )
  end

  def self.decode(token)
    JWT.decode(token,
      @auth_secret,
      true,
      { algorithm: ALGORITHM }).first
  end
end
