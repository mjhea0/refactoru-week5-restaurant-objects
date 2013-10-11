# Part I

# name = string, calories = number, vegan / glutenFree / citrusFree = boolean
FoodItem = (name, calories, vegan, glutenFree, citrusFree) ->
  @name = name
  @calories = calories
  if vegan is true
    @vegan = "vegan"
  else
    @vegan = "non-vegan"
  if glutenFree is true
    @glutenFree = "gluten-free"
  else
    @glutenFree = "not gluten-free"
  if citrusFree is true
    @citrusFree = "not a citrus"
  else
    @citrusFree = "a citrus"
  @toString = toString = ->
    @name.charAt(0).toUpperCase() + @name.slice(1) + " has " + @calories + " calories. It is " + @vegan + ", " + @citrusFree + " and " + @glutenFree + "."


# Part II

# items = array of objects
Drink = (name, description, items) ->
  @name = name
  @description = description
  @items = items

Drink::toString = ->
  itemsArr = []
  i = 0

  while i < @items.length
    itemsArr.push @items[i].name
    i++
  itemsToStringArr = []
  i = 0

  while i < @items.length
    itemsToStringArr.push @items[i].toString()
    i++
  
  # join() method - join the elements of an array into a string
  @name.charAt(0).toUpperCase() + @name.slice(1) + " is " + @description + ".\nIt is made of " + itemsArr.join(" and ") + ".\n" + itemsToStringArr.join("\n")


# items = array of objects
Plate = (name, description, price, items) ->
  @name = name
  @description = description
  @price = price
  @items = items

Plate::toString = ->
  itemsArr = []
  i = 0

  while i < @items.length
    itemsArr.push @items[i].name # Getting the name of each individual food item
    i++
  itemsToStringArr = []
  i = 0

  while i < @items.length
    itemsToStringArr.push @items[i].toString()
    i++
  @name.charAt(0).toUpperCase() + @name.slice(1) + " is a " + @description + ".\nIt costs $" + @price + " and is made of " + itemsArr.join(" and ") + ".\n" + itemsToStringArr.join("\n")

Plate::isVegan = ->
  
  # IMPORTANT! This is how to check all the items and break out of it when it's not vegan
  i = 0

  while i < @items.length
    return false  if @items[i].vegan is "non-vegan"
    i++
  true

Plate::isGlutenFree = ->
  i = 0

  while i < @items.length
    return false  if @items[i].glutenFree is "not gluten-free"
    i++
  true

Plate::isCitrusFree = ->
  i = 0

  while i < @items.length
    return false  if @items[i].citrusFree is "a citrus"
    i++
  true


# plates = array of objects
Order = (plates) ->
  @plates = plates # array of objects

Order::toString = ->
  platesArr = []
  i = 0

  while i < @plates.length
    platesArr.push @plates[i].name
    i++
  platesToStringArr = []
  i = 0

  while i < @plates.length
    platesToStringArr.push @plates[i].toString()
    i++
  "This order contains " + @plates.length + " plates: " + platesArr.join(", ") + ".\n" + platesToStringArr.join("\n\n")


# plates = array of objects
Menu = (plates) ->
  @plates = plates # array of objects

Menu::toString = ->
  platesArr = []
  i = 0

  while i < @plates.length
    platesArr.push @plates[i].name
    i++
  platesToStringArr = []
  i = 0

  while i < @plates.length
    platesToStringArr.push @plates[i].toString()
    i++
  "The menu contains " + @plates.length + " plates: " + platesArr.join(", ") + ".\n" + platesToStringArr.join("\n\n")


# Menu is a single variable.
Restaurant = (name, description, menu) ->
  @name = name
  @description = description
  @menu = menu

Restaurant::toString = ->
  "This is a " + @description + " restaurant called " + @name + ".\n" + @menu.toString() + "."


# dietaryPreference is a string
Customer = (dietaryPreference) ->
  @dietaryPreference = dietaryPreference

Customer::toString = ->
  "This customer's dietary preference is: " + @dietaryPreference + "."

me = new Customer("low-carb")
console.log me.toString()

# var FoodItem = function(name, calories, vegan, glutenFree, citrusFree) {
bean = new FoodItem("bean", 100, true, true, true)
rice = new FoodItem("rice", 60, true, true, true)
apple = new FoodItem("apple", 60, true, true, true)
cake = new FoodItem("cake", 600, false, false, true)
lemon = new FoodItem("lemon", 20, true, true, false)
water = new FoodItem("water", 0, true, true, true)
avocado = new FoodItem("avocado", 80, true, true, true) #no citrus
tomato = new FoodItem("tomato", 600, true, true, true) #no citrus

# Instantiating a margarita drink.
margarita = new Drink("margarita", "a lemon drink", [lemon, water])
console.log margarita.toString()

# Instantiating a guac plate.
guac = new Plate("guac", "avocado spread", 4, [avocado, tomato])
burrito = new Plate("burrito", "yummy goodness", 8, [bean, rice])

# Instantiating an apple cake plate.
appleCake = new Plate("apple cake", "best cake ever", 6, [apple, cake])
console.log guac.toString()
console.log burrito.toString()
console.log guac.isVegan()
console.log guac.isGlutenFree()
console.log guac.isCitrusFree()

# Instantiating a Menu that contains each of the instantiated Plates and Drinks.
restaurantMenu = new Menu([margarita, appleCake, guac, burrito])
console.log restaurantMenu.toString()

# Instantiating an Order that with guac and margarita
myOrder = new Order([guac, margarita])
console.log myOrder.toString()

# Instantiating a Restaurant that contains the instantiated Menu.
# Call the Restaurant's toString method to have it print out all its information.
chineseResturant = new Restaurant("Wok King", "Chinese", restaurantMenu)
console.log chineseResturant.toString()