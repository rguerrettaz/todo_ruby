class List
  def initialize
    @master_list = []
  end

  def list(list_type)
    counter = 1
    if list_type.downcase == 'all'
      @master_list.each do |task|
        task.temp_num = counter
        puts "#{task.temp_num}. #{task.body} - #{task.status.capitalize}"
      end
      counter += 1
    else
      @master_list.each do |task|
        if task.status == list_type
          task.temp_num = counter 
          puts "#{task.temp_num}. #{task.body} - #{task.status.capitalize}"
        end
      end
      counter += 1
    end
  end

  def add(args)
    @master_list << Task.new(args)
  end

  def delete(num)
    @master_list.each { |task| @master_list.delete(task) if task.temp_num == num }
  end

  def complete(num)
    @master_list.each { |task| task.status = :completed if task.temp_num == num }
  end

end
