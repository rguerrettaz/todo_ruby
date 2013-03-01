class Task
  attr_reader :body
  attr_accessor :status, :temp_num

  def initialize(args)
    @status = args[:status]
    @body = args[:body]
    @temp_num = nil
  end
end

