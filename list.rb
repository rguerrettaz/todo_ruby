class List
  def initialize
    @master_list = []
    @completed_list = []
    @open_list = []
  end

  def list(list_type)
    counter = 1
    case list_type.downcase
      when 'all' then @master_list.each do |task|
        puts "#{counter}. #{task.body} - #{task.status.capitalize}"
        counter += 1
      end
      when 'completed' then @completed_list.each do |task|
        puts "#{counter}. #{task.body} - Completed"
        counter += 1
      end
      when 'open' then @open_list.each do |task|
        puts "#{counter}. #{task.body} - Open"
        counter += 1
      end
    end  
  end

  def add
    @master_list << Task.new(body)
    bucket
  end

  def delete(num)
    
  end

  def complete(num)
    if list_type ==  
    bucket
  end

  def bucket
    @master_list.each do |task|
      @completed_list << task if task.status == :completed
      @open_list << task if task.status == :open
    end  
  end    
end
