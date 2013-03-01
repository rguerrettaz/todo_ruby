class Task
  attr_reader :body
  attr_writer :status

  def initialize(body)
    @status = :open
    @body = body
  end
end

