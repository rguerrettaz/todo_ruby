class Task
  attr_reader :body
  attr_accessor :status, :temp_num

  def initialize(args)
    @status = args['status'] || 'open'
    @body = args['body']
  end
end

