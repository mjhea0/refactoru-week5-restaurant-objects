FoodItem = (name, calories, vegan, glutenFree, citrusFree) ->
  @name = name
  @calories = calories
  (if (vegan is true) then @vegan = "vegan" else @vegan = "not vegan")
  (if (glutenFree is true) then @glutenFree = "gluten-free" else @glutenFree = "not gluten-free")
  (if (citrusFree is true) then @citrusFree = "not a citrus" else @citrusFree = "a citrus")
  @toString =  ->
    @name.charAt(0).toUpperCase() + @name.slice(1) + " has " + @calories + " calories. It is " + @vegan + ", " + @citrusFree + " and " + @glutenFree + "."
  this

apple = new FoodItem("apple", 60, true, true, true)
cake = new FoodItem("cake", 600, false, false, false)
yogurt = new FoodItem("yogurt", 80, false, true, false)
console.log apple.toString()
console.log cake.toString()
console.log yogurt.toString()

#** part 2 */
Drink = (@name, description, items) ->
  @description = description
  @items = items

Plate = (name, description, price, items) ->
  @name = name
  @description = description
  @price = price
  @items = items

Order = (plates) ->
  @plates = plates

Order::toString = ->
  platesArr = []
  i = 0

  while i < @plates.length
    platesArr.push @plates[i].name
    i++
  "This order contains " + @plates.length + " plates: " + platesArr.join(" and ") + "."

Menu = (plates) ->
  @plates = plates

Menu::toString = ->
  platesArr = []
  i = 0

  while i < @plates.length
    platesArr.push @plates[i].name
    i++
  "This menu contains " + @plates.length + " plates: " + platesArr.join(" and ") + "."

Restaurant = (name, description, menu) ->
  @name = name
  @description = description
  @menu = menu # An array of plate objects

Customer = (dietaryPreference) ->
  @dietaryPreference = dietaryPreference