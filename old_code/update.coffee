# Part I

FoodItem = (name, calories, vegan, glutenFree, citrusFree) ->
  @name = name
  @calories = calories
  if vegan is true
    @vegan = "is vegan"
  else
    @vegan = "is not vegan"
  if glutenFree is true
    @glutenFree = "is gluten-free"
  else
    @glutenFree = "is not gluten-free"
  if citrusFree is true
    @citrusFree = "is a citrus"
  else
    @citrusFree = "is not citrus"
  @toString = toString = ->
    @name.charAt(0).toUpperCase() + @name.slice(1) + " has " + @calories + " calories. It is " + @vegan + ", " + @citrusFree + " and " + @glutenFree + "."
  this


# Part II

Drink = (name, description, items) ->
  @name = name
  @description = description
  @items = items
  this

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

Order = (plates) ->
  @plates = plates

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


Menu = (plates) ->
  @plates = plates 

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


Restaurant = (name, description, menu) ->
  @name = name
  @description = description
  @menu = menu

Restaurant::toString = ->
  "This is a " + @description + " restaurant called " + @name + ".\n" + @menu.toString() + "."

Customer = (dietaryPreference) ->
  @dietaryPreference = dietaryPreference

Customer::toString = ->
  "This customer's dietary preference is: " + @dietaryPreference + "."

me = new Customer("low-carb")
console.log me.toString()

# burrito
bean = new FoodItem("bean", 100, true, true, true)
brownRice = new FoodItem("brownRice", 60, true, true, true)
avocado = new FoodItem("avocado", 80, true, true, true)
tomato = new FoodItem("tomato", 600, true, true, true)

# margarita
lemon = new FoodItem("lemon", 20, true, true, false)
water = new FoodItem("water", 0, true, true, true)
salt = new FoodItem("salt", 0, true, true, true)
ice = new FoodItem("ice", 0, true, true, true)
tequilla = new FoodItem("tequilla", 100, true, true, true)

margarita = new Drink("margarita", "tequilla fun", [lemon, water, salt, ice, tequilla])
console.log margarita.toString()

burrito = new Plate("burrito", "goodness wrapped in a tortilla", 8, [bean, brownRice, avocado, tomato])
console.log burito.toString()

restaurantMenu = new Menu([margarita, burrito])
console.log restaurantMenu.toString()

myOrder = new Order([margarita, burrito])
console.log myOrder.toString()

myResturant = new Restaurant("TacoVille", "don't eat here", restaurantMenu)
console.log chineseResturant.toString()