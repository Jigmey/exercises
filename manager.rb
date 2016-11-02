class Employee
  attr_reader :first_name, :last_name
  def initialize(input_info)
    @first_name = input_info[:first_name]
    @last_name = input_info[:last_name]
    @salary = input_info[:salary]
    @active = input_info[:active]
  end

  def full_name
    if @last_name [-1]== 's'
      return "#{@first_name} #{@last_name} Esquire" #Make it so it is Esquire no matter what name. e: sam kin Esquire
    else
      "#{@first_name} #{last_name}"                 #Try to get in a habit of running codes(through small peices.)
    end

  end

  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} per year"
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

end
employee1 = Employee.new(first_name: "Majora", salary: 40000, active: true, last_name: "Carter")
employee2 = Employee.new(first_name: "Joe", salary: 40000, active: true, last_name: "Schafers")
employee3 = Employee.new(first_name: "Joe", salary: 40000, active: true, last_name: "Schafer")


class Manager<Employee                            #Doing Manager<Employee creates an inheritance that means(Manager can use information from the Employee)
  attr_reader :employees

  def initialize(input_info)
    super                                         #super is a keyword that retrieves information from the inheritance.
    @employees = input_info[:employee]
  end

  def print_report
    puts "Your salary."
  end

end

manager1=Manager.new({first_name: "Tom", last_name: "Cruiz", salary: 100000, active: true, employee: [employee1,employee2,employee3]})

manager1.print_info
manager1.print_report
manager1.employees[1]

#Exercise

class Employee
  attr_reader :first_name, :last_name, :active    #These are basically methods.
  attr_accessor :active #Same thing as def active.

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def fire
      @active=false
  end
end


class Manager < Employee
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises 
      @employees.each do |employee|
        p employee.give_annual_raise
      end
  end

  def fire_all_employees
    @employees.each do |employee|
      p employee.fire
    end
  end

  #def fire_all_employees
    #@employees.each do |employee| 

      #if employee.active==true
       # p "You're Fired!"
      #else
       # p "Take a joke"
      #end
    #end
  #end
  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)
employee1.print_info
employee2.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
manager.give_all_raises
manager.fire_all_employees
p manager



