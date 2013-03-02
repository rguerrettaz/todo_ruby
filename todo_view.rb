class ToDoView

  def initialize(params, my_list)
    command, content = parse(params)
    
    case command.downcase
      when 'add'
        my_list.add(Hash['body' => content])
      when 'delete'
        my_list.delete(content.to_i)
      when 'complete'
        my_list.complete(content.to_i)
      when 'list'
        my_list.list(content)
    end
  end

  def parse(params)
    command = params.shift
    content = params.join(' ')
    return command, content
  end

end
