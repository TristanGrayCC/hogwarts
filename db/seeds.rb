require_relative('../models/student')
require_relative('../models/house')

@house1 = House.new({'name' => 'Gryffindor', 'url' => 'http://bit.ly/2aOp6RC', 'bio' => 'Gryffindor founded by Godric Gryffindor. Gryffindor''s emblematic animal is the lion, and its colours are scarlet and gold. Gryffindors are known for daring, nerve and chivalry.'})
@house2 = House.new({'name' => 'Hufflepuff', 'url' => 'http://bit.ly/2oy2iar','bio' => 'Hufflepuff was founded by Helga Hufflepuff. Its animal is the badger, and yellow and black are its colours. Hufflepuff is the most inclusive of the four houses, valuing hard work, patience, loyalty and fair play rather than a particular aptitude in its members.'})
@house3 = House.new({'name' => 'Ravenclaw', 'url' => 'http://bit.ly/2o6WxUi', 'bio' => 'Ravenclaw was founded by Rowena Ravenclaw. Its house colours are blue and bronze, and its symbol is the eagle. Members of this house are characterised by their wit, intelligence, creativity and wisdom.' })
@house4 = House.new({'name' => 'Slytherin', 'url' => 'http://bit.ly/2oxNXdO', 'bio' => 'Slytherin was founded by Salazar Slytherin. Slytherin''s animal is the snake and its colours are green and silver. Students in Slytherin possess the traits of cunning, resourcefulness and ambition.'})
@house1.save
@house2.save
@house3.save
@house4.save

@student1 = Student.new({'first_name' => 'Harry', 'last_name' => 'Potter', 'house_id' => 1, 'age' => 11})
@student1.save