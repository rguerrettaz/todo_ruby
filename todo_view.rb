class ToDoInterface

  def initialize(params, my_list)
    command, content = parse(params)
    
    case command
      when 'add' then my_list.add(content)
      when 'delete' then my_list.delete(content.to_i)
      when 'complete' then my_list.complete(content.to_i)
      when 'list' then my_list.list(content)
    end
  end

  def parse(params)
    command = params.downcase.unshift
    content = params.join(' ')
    return command, content
  end

end
