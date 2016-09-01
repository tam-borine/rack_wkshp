class Logger

  def initialize(app)
    @app = app
  end

  def call(env)
    p env.inspect
    @app.call(env)
  end

end
