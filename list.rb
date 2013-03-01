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
        puts "#{counter}. #{task.body}"
        counter += 1
      end
      when 'completed' then @completed_list.each do |task|
        puts "#{counter}. #{task.body}"
        counter += 1
      end
      when 'open' then @open_list.each do |task|
        puts "#{counter}. #{task.body}"
        counter += 1
      end
    end  
  end

  def add
    
  end

  def delete
    
  end

  def complete
    
  end
end
