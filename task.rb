class Task
  attr_reader :body
  attr_accessor :status

  def initialize(args)
    @status = args[:status]
    @body = args[:body]
  end
end

