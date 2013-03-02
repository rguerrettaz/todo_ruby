class List
  attr_reader :master_list

  def initialize(list)
    @master_list = []
    list.each { |task_from_file| add(task_from_file) }
  end

  def list(list_type)
    counter = 1
    if list_type.downcase == 'all'
      @master_list.each do |task|
        task.temp_num = counter
        puts "#{task.temp_num}. #{task.body} - #{task.status}"
        counter += 1
      end
    else
      @master_list.each do |task|
        if task.status == list_type
          task.temp_num = counter 
          puts "#{task.temp_num}. #{task.body} - #{task.status}"
        end
        counter += 1
      end
    end
  end

  def add(args)
    @master_list << Task.new(args)
  end

  def delete(num)
    @master_list.delete_at(num - 1)
  end

  def complete(num)
    @master_list[num - 1].status = 'completed'
  end

  def to_a
    @master_list.map do |task|
      Hash[body: task.body, status: task.status]
    end
  end

end


# my_list = List.new
# my_list.add({:status => :open, :body => 'Take a shower'})
# my_list.add({:status => :open, :body => 'Take a shit'})
# my_list.add({:status => :open, :body => 'Wash your ass'})
# my_list.list('all')
# my_list.delete(2)
# my_list.list('all')
