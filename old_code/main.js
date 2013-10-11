$(function() {

	function FoodItem(foodName,calories,diet) {
		//** string */
		this.foodName 	= foodName
		//** integer */
		this.calories 	= calories
		//** string (vegan, gliuten free, citrus free) */
		this.diet 			= diet
	}


	FoodItem.prototype.toString = function() {
		return ""+this.foodName+"s have "+this.calories+" calories and can be consumed on a "+this.diet+" diet."
	}
 
	var apple = new FoodItem("Apple",80,"vegan")
	var steak = new FoodItem("Steak",800,"citrus free")
	var orange = new FoodItem("Orange",88,"vegan")

	console.log(apple.toString())
	console.log(steak.toString())
	console.log(orange.toString())

	Plate.prototype 

	function Drink(drinkName, description, items) {
		this.drinkName = drinkName
		this.description = description
		this.items = items
	}


	function Plate(plateName, description, price, items) {
		this.plateName = plateName
		this.description = description
		this.price = price
		this.items = items
	}

		function Order(plate) {
			this.plate = plate
	}

		function Menu(plates) {
			this.plates = plates
	}

		function Restaurant(restaurantName, description, menu) {
			this.restaurantName = restaurantName
			this.description = description
			this.menu = menu
	}

		function Customer(dietaryPreference) {
		this.dietaryPreference = dietaryPreference
	}


})
