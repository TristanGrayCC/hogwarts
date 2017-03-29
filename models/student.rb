require_relative('../db/runner')
require ('pry-byebug')

class Student

  attr_reader :id, :first_name, :last_name, :house_id, :age

  def initialize(options)
    @id= options["id"].to_i
    @first_name= options["first_name"]
    @last_name= options["last_name"]
    @house_id= options["house_id"].to_i
    @age= options["age"].to_i
  end

  def save()
    sql= "INSERT INTO students(
    first_name, last_name, house_id, age) VALUES ( '#{@first_name}', '#{@last_name}', #{@house_id}, #{@age}) RETURNING id"
    student = SqlRunner.run(sql)
    @id = student.first['id'].to_i 
  end

  def house()
    # binding.pry
    sql= "SELECT h.* FROM houses h INNER JOIN students s ON h.id = s.house_id WHERE s.id = #{@id}"
    house = House.map_items(sql)
    return house.first()
  end

  def delete
    sql = "DELETE FROM students WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM students"
    return Student.map_items(sql)
  end

  def self.find( id )
    sql = "SELECT * FROM students WHERE id=#{id};"
    student = SqlRunner.run( sql )
    result = Student.new( student.first )

    return result
  end

  def self.map_items(sql)
    students = SqlRunner.run(sql)
    result = students.map { |student| Student.new(student)}
    return result
  end
end